module Main (main) where

import Control.Monad (unless)
import Data.Foldable (traverse_)
import System.Directory (doesDirectoryExist)
import System.Environment (getArgs)
import System.Exit (die)
import System.FilePath ((</>))

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

main :: IO ()
main = do
    opts <- validateOptions . parseOptions defaultOptions =<< getArgs

    x86Table <- readFile $ linux opts </> "arch/x86/entry/syscalls/syscall_64.tbl"
    genericTable <- readFile $ linux opts </> "scripts/syscall.tbl"

    traverse_ print $ parseTbl x86Table
    traverse_ print $ parseTbl genericTable
