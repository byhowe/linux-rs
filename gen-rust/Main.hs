module Main (main) where

import Linux qualified

main :: IO ()
main = do
    putStrLn "Hello, Haskell!"
    print Linux.mmapSyscall
