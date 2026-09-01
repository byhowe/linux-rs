{-# LANGUAGE LambdaCase #-}

module Main (main) where

import Data.Char (toUpper)
import Data.Set qualified as Set
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

bitsetMacroNames :: Linux.Arch -> Linux.Bitset -> [(String, String)]
bitsetMacroNames arch (Linux.Bitset bitsetName _ fields) =
  fields >>= \case
    Linux.FieldFlag fName bit archs ->
      [ (flagMacroName bitsetName fName, printf "(1u << %d)" bit)
      | arch `Set.member` archs
      ]
    Linux.FieldEnum bit _ (Linux.EnumDef enum vals) ->
      [ (enumMacroName enum variant, printf "(%du << %d)" val bit)
      | Linux.EnumValue variant val archs <- vals
      , arch `Set.member` archs
      ]

genVerifier :: Linux.Arch -> [Linux.Syscall] -> String
genVerifier arch syscalls =
  unlines
    [ printf "_Static_assert(%s == %s, \"%s mismatch on %s\");" macroName value macroName (show arch)
    | (macroName, value) <- bitsetMacroNames arch Linux.Definitions.mapBitset
    ]

main :: IO ()
main = putStr $ genVerifier Linux.X86_64 Linux.syscalls
