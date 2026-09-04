{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultilineStrings #-}
{-# LANGUAGE OverloadedRecordDot #-}

module Main (main) where

import Linux qualified

import Control.Monad (unless)
import Data.Char (toUpper)
import Data.Foldable (traverse_)
import Data.List (intercalate)
import Data.Map (Map)
import Data.Map qualified as Map
import Data.Maybe (mapMaybe)
import System.Directory (doesDirectoryExist)
import System.Environment (getArgs)
import System.Exit (die)
import System.FilePath ((</>))
import Text.Printf (printf)

data Options = Options
    { linux :: FilePath
    }
    deriving (Show)

defaultOptions :: Options
defaultOptions = Options{linux = "upstream/linux"}

parseOptions :: Options -> [String] -> Options
parseOptions opts [] = opts
parseOptions opts ("--linux" : val : rest) = parseOptions (opts{linux = val}) rest
parseOptions _ (flag : _) = error $ "unknown flag: " ++ flag

validateOptions :: Options -> IO Options
validateOptions opts =
    opts <$ do
        doesDirectoryExist (linux opts)
            >>= flip unless (die $ "error: Linux tree path is not a directory: " ++ linux opts)

data TblEntry = TblEntry
    { number :: Int
    , abi :: String
    , name :: String
    , entry :: String
    , compat :: Maybe String
    , noReturn :: Bool
    }
    deriving (Show)

parseTblLine :: String -> TblEntry
parseTblLine line = case words line of
    [num, abi, name] -> TblEntry (read num) abi name "sys_ni_syscall" Nothing False
    [num, abi, name, entry] -> TblEntry (read num) abi name entry Nothing False
    [num, abi, name, entry, compat] -> TblEntry (read num) abi name entry (Just compat) False
    [num, abi, name, entry, compat, "noreturn"] -> TblEntry (read num) abi name entry (Just compat) True
    [_num, _abi, _name, _entry, _compat, noreturn] -> error $ "invalid string in noreturn column: " ++ noreturn
    _ -> error $ "failed to parse syscall tbl line: " ++ line

parseTbl :: String -> [TblEntry]
parseTbl = map parseTblLine . filter isDataLine . lines
  where
    isDataLine [] = False
    isDataLine ('#' : _) = False
    isDataLine _ = True

data Syscall = Syscall
    { name :: String
    , numbers :: Map Linux.Arch Int
    }
    deriving (Show)

renderArch :: Linux.Arch -> String
renderArch Linux.X86_64 = "X86_64"
renderArch Linux.AArch64 = "AArch64"
renderArch Linux.RiscV64 = "RiscV64"

renderPair :: (Linux.Arch, Int) -> String
renderPair (arch, num) = "(" <> renderArch arch <> ", " <> show num <> ")"

renderNumbers :: Map Linux.Arch Int -> String
renderNumbers numbers = "[" <> intercalate ", " (renderPair <$> Map.toList numbers) <> "]"

toCamelCase :: String -> String
toCamelCase [] = []
toCamelCase ('_' : cs) = case toCamelCase cs of
    [] -> []
    (x : xs) -> toUpper x : xs
toCamelCase (c : cs) = c : toCamelCase cs

renderSyscall :: Syscall -> String
renderSyscall sys =
    unlines
        [ toCamelCase sys.name <> "Syscall :: Syscall"
        , toCamelCase sys.name <> "Syscall ="
        , "    Syscall"
        , "        { name = \"" <> sys.name <> "\""
        , "        , subsystem = \"unknown\""
        , "        , numbers = Map.fromList " <> renderNumbers sys.numbers
        , "        , args = []"
        , "        , returns = TypePrim Opaque"
        , "        , errorConvention = NeverReturns"
        , "        }"
        ]

renderHeader :: String
renderHeader =
    unlines
        [ "module Linux.Syscalls.Draft where"
        , ""
        , "import Linux.Types"
        , ""
        , "import Data.Map qualified as Map"
        ]

main :: IO ()
main = do
    opts <- validateOptions . parseOptions defaultOptions =<< getArgs

    x86Tbl <- parseTbl <$> readFile (opts.linux </> x86TblPath)
    genericTbl <- parseTbl <$> readFile (opts.linux </> genericTblPath)

    let
        x86Pairs = mkPairs [(Linux.X86_64, x86_64Abis)] x86Tbl
        genericPairs =
            mkPairs
                [ (Linux.AArch64, aarch64Abis)
                , (Linux.RiscV64, riscv64Abis)
                ]
                genericTbl

        mergedMap = Map.fromListWithKey (Map.unionWithKey . onCollision) (x86Pairs ++ genericPairs)
        syscalls =
            [ Syscall{name = sysName, numbers = archMap}
            | (sysName, archMap) <- Map.toList mergedMap
            , sysName /= "_sysctl"
            ]

    putStrLn renderHeader
    traverse_ (putStrLn . renderSyscall) syscalls
  where
    x86TblPath = "arch/x86/entry/syscalls/syscall_64.tbl"
    genericTblPath = "scripts/syscall.tbl"

    x86_64Abis = ["common", "64"]
    aarch64Abis = ["common", "64"]
    riscv64Abis = ["common", "64", "riscv"]

    mkPairs :: [(Linux.Arch, [String])] -> [TblEntry] -> [(String, Map.Map Linux.Arch Int)]
    mkPairs configs = mapMaybe processEntry
      where
        processEntry e =
            let matchingArchs = [arch | (arch, abis) <- configs, e.abi `elem` abis]
             in if null matchingArchs
                    then Nothing
                    else Just (e.name, Map.fromList [(arch, e.number) | arch <- matchingArchs])

    onCollision sysName arch num1 num2 =
        error $
            printf "error: collision on syscall %s on architecture %s: %d != %d" sysName (show arch) num1 num2
