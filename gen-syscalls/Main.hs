module Main (main) where

import Control.Monad (unless)
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

parseOptions :: Options -> [String] -> Either String Options
parseOptions opts [] = Right opts
parseOptions opts ("--linux" : val : rest) = parseOptions (opts{linux = val}) rest
parseOptions _ (flag : _) = Left flag

validateOptions :: Options -> IO Options
validateOptions opts =
    opts <$ do
        doesDirectoryExist (linux opts)
            >>= flip unless (die $ "error: Linux tree path is not a directory: " ++ linux opts)

main :: IO ()
main = do
    opts <- validateOptions =<< either unknownFlag pure . parseOptions defaultOptions =<< getArgs

    x86Table <- readFile $ linux opts </> "arch/x86/entry/syscalls/syscall_64.tbl"
    genericTable <- readFile $ linux opts </> "scripts/syscall.tbl"

    putStrLn x86Table
    putStrLn genericTable
  where
    unknownFlag flag = die $ "error: unknown flag: " ++ flag
