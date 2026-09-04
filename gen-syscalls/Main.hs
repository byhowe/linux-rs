{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedRecordDot #-}

module Main (main) where

import Linux qualified

import Control.Monad (unless)
import Data.Foldable (traverse_)
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
        syscalls = [Syscall{name = sysName, numbers = archMap} | (sysName, archMap) <- Map.toList mergedMap]

    traverse_ print syscalls
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
