module Main (main) where

import System.Environment (getArgs)
import System.Exit (die)

data Options = Options
    { linux :: Maybe FilePath
    }
    deriving (Show)

defaultOptions :: Options
defaultOptions = Options{linux = Nothing}

parseOptions :: Options -> [String] -> Either String Options
parseOptions opts [] = Right opts
parseOptions opts ("--linux" : val : rest) = parseOptions (opts{linux = Just val}) rest
parseOptions _ (flag : _) = Left flag

main :: IO ()
main = do
    opts <- either unknownFlag pure . parseOptions defaultOptions =<< getArgs
    print opts
  where
    unknownFlag flag = die $ "error: unknown flag: " ++ flag
