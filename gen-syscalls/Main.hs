{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultilineStrings #-}
{-# LANGUAGE OverloadedRecordDot #-}

module Main (main) where

import Linux qualified

import Control.Monad (forM, guard, unless, (>=>))
import Data.Char (digitToInt, isDigit, isSpace, toUpper)
import Data.List (dropWhileEnd, intercalate, isPrefixOf)
import Data.Map (Map)
import Data.Map qualified as Map
import Data.Maybe (mapMaybe)
import System.Directory (doesDirectoryExist, listDirectory)
import System.Environment (getArgs)
import System.Exit (die)
import System.FilePath (takeExtension, (</>))

import Text.ParserCombinators.ReadP
    ( ReadP
    , char
    , eof
    , many
    , munch
    , munch1
    , readP_to_S
    , satisfy
    , string
    , (+++)
    )
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
parseOptions _ (flag : _) = error $ "error: unknown flag: " ++ flag

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
    [_num, _abi, _name, _entry, _compat, noreturn] -> error $ "error: invalid string in noreturn column: " ++ noreturn
    _ -> error $ "error: failed to parse syscall tbl line: " ++ line

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

listCFiles :: FilePath -> IO [FilePath]
listCFiles dir = do
    paths <- map (dir </>) <$> listDirectory dir
    concat <$> forM paths \path -> do
        isDir <- doesDirectoryExist path
        if isDir
            then listCFiles path
            else pure [path | takeExtension path == ".c"]

data SyscallDefine = SyscallDefine
    { name :: String
    , args :: [(String, String)]
    }
    deriving (Show)

parseSC_ARG64 :: ReadP String
parseSC_ARG64 = do
    _ <- string "SC_ARG64"
    _ <- char '('
    name <- dropWhileEnd isSpace . dropWhile isSpace <$> munch (/= ')')
    _ <- char ')'
    eof
    return (unwords . words $ name)

expandArg :: String -> [String]
expandArg arg = case readP_to_S parseSC_ARG64 arg of
    (name, "") : _ -> ["u32", name ++ "_lo", "u32", name ++ "_hi"]
    _ -> [arg]

parseParens :: ReadP String
parseParens = do
    _ <- char '('
    inner <- concat <$> many (parseParens +++ munch1 (\c -> c `notElem` ['(', ')']))
    _ <- char ')'
    return $ "(" ++ inner ++ ")"

parseArg :: ReadP String
parseArg = unwords . words . concat <$> many (parseParens +++ munch1 \c -> c `notElem` [',', '(', ')'])

parseSyscallRaw :: ReadP String
parseSyscallRaw = do
    _ <- string "SYSCALL_DEFINE"
    n <- digitToInt <$> satisfy isDigit
    _ <- munch isSpace
    args <- parseParens
    return $ "SYSCALL_DEFINE" ++ show n ++ (unwords . words $ args)

parseSyscall :: ReadP SyscallDefine
parseSyscall = do
    _ <- string "SYSCALL_DEFINE"
    n <- digitToInt <$> satisfy isDigit

    _ <- char '('

    name <- parseArg
    rawArgs <- many $ char ',' >> parseArg

    _ <- char ')'

    let expandedArgs = concatMap expandArg rawArgs
    guard (length expandedArgs == 2 * n)
    return $ SyscallDefine name (toPairs expandedArgs)
  where
    toPairs :: [String] -> [(String, String)]
    toPairs (x : y : xs) = (x, y) : toPairs xs
    toPairs [x] = [(x, "")]
    toPairs [] = []

extractSyscalls :: String -> [SyscallDefine]
extractSyscalls content = go content True
  where
    go [] _ = []
    go s@(c : cs) isStartOfLine
        | isStartOfLine && ("SYSCALL_DEFINE" `isPrefixOf` s) =
            case readP_to_S parseSyscall s of
                (syscall, rest) : _ -> syscall : go rest False
                [] ->
                    let errorSyscall = case readP_to_S parseSyscallRaw s of
                            (errorSyscallRaw, _) : _ -> errorSyscallRaw
                            [] -> take 100 s
                     in error $ printf "error: failed to parse SYSCALL_DEFINE macro: %s" errorSyscall
        -- Otherwise consume a single character at a time until we see newline.
        | otherwise = go cs (c == '\n')

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

    -- putStrLn renderHeader
    -- traverse_ (putStrLn . renderSyscall) syscalls
    -- traverse_ putStrLn =<< listCFiles opts.linux
    listCFiles opts.linux >>= mapM_ (readFile >=> mapM_ print . extractSyscalls)
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
