{-# LANGUAGE LambdaCase #-}

module Main (main) where

import Data.Char (toUpper)
import Linux qualified
import Linux.Definitions qualified
import Text.Printf (printf)

flagMacroName :: String -> String -> String
flagMacroName bitset flag = printf "%s_%s" (map toUpper bitset) (map toUpper flag)

enumMacroName :: String -> String -> String
enumMacroName "access_mode" "read_only" = "O_RDONLY"
enumMacroName "access_mode" "write_only" = "O_WRONLY"
enumMacroName "access_mode" "read_write" = "O_RDWR"
enumMacroName "access_mode" variant = printf "O_%s" $ map toUpper variant
enumMacroName enum variant = printf "%s_%s" (map toUpper enum) (map toUpper variant)

bitsetMacroNames :: Linux.Bitset -> [String]
bitsetMacroNames (Linux.Bitset bitsetName _ fields) =
  fields >>= \case
    Linux.FieldFlag fName _ _ -> [flagMacroName bitsetName fName]
    Linux.FieldEnum _ _ (Linux.EnumDef eName vals) ->
      [enumMacroName eName valName | Linux.EnumValue valName _ _ <- vals]

main :: IO ()
main = putStr . unlines $ bitsetMacroNames Linux.Definitions.mapBitset
