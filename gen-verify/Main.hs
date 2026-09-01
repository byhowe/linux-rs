{-# LANGUAGE LambdaCase #-}

module Main (main) where

import Data.Char (toUpper)
import Linux qualified
import Linux.Definitions qualified

flagMacroName :: String -> String -> String
flagMacroName bitsetName flagName = case bitsetName of
  _ -> map toUpper bitsetName ++ "_" ++ map toUpper flagName

enumMacroName :: String -> String -> String
enumMacroName enumName variantName = case enumName of
  "access_mode" -> case variantName of
    "read_only" -> "O_RDONLY"
    "write_only" -> "O_WRONLY"
    "read_write" -> "O_RDWR"
    _ -> "O_" ++ map toUpper variantName
  _ -> map toUpper enumName ++ "_" ++ map toUpper variantName

bitsetMacroNames :: Linux.Bitset -> [String]
bitsetMacroNames (Linux.Bitset bitsetName _ fields) =
  fields >>= \case
    Linux.FieldFlag fName _ _ -> [flagMacroName bitsetName fName]
    Linux.FieldEnum _ _ (Linux.EnumDef eName vals) ->
      [enumMacroName eName valName | Linux.EnumValue valName _ _ <- vals]

main :: IO ()
main = putStr . unlines $ bitsetMacroNames Linux.Definitions.mapBitset
