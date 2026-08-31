{-# LANGUAGE DuplicateRecordFields #-}

module Linux
  ( Arch (..)
  ) where

import Data.Set (Set)
import Data.Set qualified as Set
import Data.Word (Word64)

data Arch = X86_64 | Aarch64 | Riscv64
  deriving (Eq, Ord, Enum, Bounded)

instance Show Arch where
  show X86_64 = "x86_64"
  show Aarch64 = "aarch64"
  show Riscv64 = "riscv64"

allArchs :: Set Arch
allArchs = Set.fromList [minBound .. maxBound]

data PrimType
  = I8
  | I16
  | I32
  | I64
  | U8
  | U16
  | U32
  | U64
  | ISize
  | USize
  | Opaque
  | Bool
  deriving (Show, Eq)

data Mutability
  = Const
  | Mut
  deriving (Eq, Show)

data ArrayLen
  = NullTerminated
  | ParamLen String
  | FixedLen Int
  deriving (Eq, Show)

data EnumValue = EnumValue
  { name :: String
  , value :: Word64
  , archs :: Set Arch
  }
  deriving (Eq, Show)

data EnumDef = EnumDef
  { name :: String
  , values :: [EnumValue]
  }
  deriving (Eq, Show)

data BitsetField
  = FieldFlag
      { name :: String
      , bit :: Int
      , archs :: Set Arch
      }
  | FieldEnum
      { startBit :: Int
      , width :: Int
      , enumDef :: EnumDef
      }
  deriving (Eq, Show)

data Bitset = Bitset
  { name :: String
  , backing :: PrimType
  , fields :: [BitsetField]
  }
  deriving (Eq, Show)

data Type
  = TypeVoid
  | TypePrim PrimType
  | TypePtr
      { mutability :: Mutability
      , pointee :: Type
      }
  | TypeArray
      { mutability :: Mutability
      , len :: ArrayLen
      , elemType :: Type
      }
  | TypeBitset
      { bitset :: Bitset
      }
  | TypeEnum
      { backing :: PrimType
      , enumDef :: EnumDef
      }
  | TypeAlias
      { name :: String
      , target :: Type
      }
  deriving (Eq, Show)
