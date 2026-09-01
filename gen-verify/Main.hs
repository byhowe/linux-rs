{-# LANGUAGE LambdaCase #-}

module Main (main) where

import Linux qualified

import Data.Char (toUpper)
import Data.Containers.ListUtils (nubOrd)
import Data.Function ((&))
import Data.Set qualified as Set
import Text.Printf (printf)

flagMacroName :: String -> String -> String
flagMacroName bitset flag = printf "%s_%s" (map toUpper bitset) (map toUpper flag)

enumMacroName :: String -> String -> String
enumMacroName "access_mode" "read_only" = "O_RDONLY"
enumMacroName "access_mode" "write_only" = "O_WRONLY"
enumMacroName "access_mode" "read_write" = "O_RDWR"
enumMacroName "access_mode" variant = printf "O_%s" $ map toUpper variant
enumMacroName enum variant = printf "%s_%s" (map toUpper enum) (map toUpper variant)

bitsetMacros :: Linux.Arch -> Linux.Bitset -> [(String, String)]
bitsetMacros arch (Linux.Bitset bitsetName _ fields) =
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

collectBitsets :: [Linux.Type] -> [Linux.Bitset]
collectBitsets = concatMap extract
 where
  extract :: Linux.Type -> [Linux.Bitset]
  extract (Linux.TypePtr _ pointee) = extract pointee
  extract (Linux.TypeArray _ _ elemType) = extract elemType
  extract (Linux.TypeAlias _ target) = extract target
  extract (Linux.TypeBitset bitset) = [bitset]
  extract _ = []

genVerifier :: Linux.Arch -> [Linux.Syscall] -> String
genVerifier arch syscalls =
  let
    types = concatMap (\(Linux.Syscall _ _ args ret _) -> ret : map Linux.type' args) syscalls
    bitsets = types & collectBitsets & nubOrd & concatMap (bitsetMacros arch)
   in
    unlines
      [ printf "_Static_assert(%s == %s, \"%s mismatch on %s\");" macroName value macroName (show arch)
      | (macroName, value) <- bitsets
      ]

main :: IO ()
main = putStr $ genVerifier Linux.X86_64 Linux.syscalls
