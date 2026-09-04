{-# LANGUAGE DuplicateRecordFields #-}

module Linux.Types
    ( Arch (..)
    , allArchs
    , PrimType (..)
    , Mutability (..)
    , ArrayLen (..)
    , EnumValue (..)
    , EnumDef (..)
    , BitsetField (..)
    , Bitset (..)
    , Type (..)
    , ErrorConvention (..)
    , Arg (..)
    , Syscall (..)
    ) where

import Data.Map (Map)
import Data.Set (Set)
import Data.Set qualified as Set
import Data.Word (Word64)

data Arch = X86_64 | AArch64 | RiscV64
    deriving (Eq, Ord, Enum, Bounded)

instance Show Arch where
    show X86_64 = "x86_64"
    show AArch64 = "aarch64"
    show RiscV64 = "riscv64"

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
    deriving (Eq, Show, Ord)

data Mutability
    = Const
    | Mut
    deriving (Eq, Show, Ord)

data ArrayLen
    = NullTerminated
    | ParamLen String
    | FixedLen Int
    deriving (Eq, Show, Ord)

data EnumValue = EnumValue
    { name :: String
    , value :: Word64
    , archs :: Set Arch
    }
    deriving (Eq, Show, Ord)

data EnumDef = EnumDef
    { name :: String
    , values :: [EnumValue]
    }
    deriving (Eq, Show, Ord)

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
    deriving (Eq, Show, Ord)

data Bitset = Bitset
    { name :: String
    , backing :: PrimType
    , fields :: [BitsetField]
    }
    deriving (Eq, Show, Ord)

data Type
    = TypePrim PrimType
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
    deriving (Eq, Show, Ord)

data ErrorConvention
    = NegativeErrno
    | NegativeErrnoPointer
    | AlwaysSucceeds
    | NeverReturns
    deriving (Eq, Show, Ord)

data Arg = Arg
    { name :: String
    , type' :: Type
    }
    deriving (Eq, Show, Ord)

data Syscall = Syscall
    { name :: String
    , subsystem :: String
    , numbers :: Map Arch Int
    , args :: [Arg]
    , returns :: Type
    , errorConvention :: ErrorConvention
    }
    deriving (Eq, Show, Ord)
