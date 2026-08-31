module Main (main) where

import qualified Linux (someFunc)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  Linux.someFunc
