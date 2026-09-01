{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Linux.Definitions
  ( fdType
  , sizeType
  , offsetType
  , protBitset
  , hugePageSizeEnum
  , mapBitset
  ) where

import Linux.Types

import Data.Set qualified as Set

fdType = TypeAlias "fd" (TypePrim I32)
sizeType = TypeAlias "size" (TypePrim USize)
offsetType = TypeAlias "offset" (TypePrim I64)

protBitset :: Bitset
protBitset =
  Bitset
    "prot"
    U32
    [ FieldFlag "read" 0 allArchs
    , FieldFlag "write" 1 allArchs
    , FieldFlag "exec" 2 allArchs
    , FieldFlag "sem" 3 allArchs
    , FieldFlag "bti" 4 (Set.singleton AArch64)
    , FieldFlag "mte" 5 (Set.singleton AArch64)
    , FieldFlag "growsdown" 24 allArchs
    , FieldFlag "growsup" 25 allArchs
    ]

hugePageSizeEnum :: EnumDef
hugePageSizeEnum =
  EnumDef
    "huge_page_size"
    [ EnumValue "16kb" 14 allArchs
    , EnumValue "64kb" 16 allArchs
    , EnumValue "512kb" 19 allArchs
    , EnumValue "1mb" 20 allArchs
    , EnumValue "2mb" 21 allArchs
    , EnumValue "8mb" 23 allArchs
    , EnumValue "16mb" 24 allArchs
    , EnumValue "32mb" 25 allArchs
    , EnumValue "256mb" 28 allArchs
    , EnumValue "512mb" 29 allArchs
    , EnumValue "1gb" 30 allArchs
    , EnumValue "2gb" 31 allArchs
    , EnumValue "16gb" 34 allArchs
    ]

mapBitset :: Bitset
mapBitset =
  Bitset
    "map"
    U32
    [ FieldEnum
        0
        4
        ( EnumDef
            "map_type"
            [ EnumValue "shared" 1 allArchs
            , EnumValue "private" 2 allArchs
            , EnumValue "shared_validate" 3 allArchs
            , EnumValue "droppable" 8 allArchs
            ]
        )
    , FieldFlag "fixed" 4 allArchs
    , FieldFlag "anonymous" 5 allArchs
    , FieldFlag "32bit" 6 (Set.singleton X86_64)
    , FieldFlag "above4g" 7 (Set.singleton X86_64)
    , FieldFlag "growsdown" 8 allArchs
    , FieldFlag "denywrite" 11 allArchs
    , FieldFlag "executable" 12 allArchs
    , FieldFlag "locked" 13 allArchs
    , FieldFlag "noreserve" 14 allArchs
    , FieldFlag "populate" 15 allArchs
    , FieldFlag "nonblock" 16 allArchs
    , FieldFlag "stack" 17 allArchs
    , FieldFlag "hugetlb" 18 allArchs
    , FieldFlag "sync" 19 allArchs
    , FieldFlag "fixed_noreplace" 20 allArchs
    , FieldEnum 26 6 hugePageSizeEnum
    , FieldFlag "uninitialized" 26 allArchs
    ]
