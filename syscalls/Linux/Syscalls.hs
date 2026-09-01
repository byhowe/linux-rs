module Linux.Syscalls
  ( mmapSyscall
  , exitSyscall
  , syscalls
  ) where

import Linux.Definitions
import Linux.Types

import Data.Map qualified as Map

mmapSyscall :: Syscall
mmapSyscall =
  Syscall
    { name = "mmap"
    , numbers =
        Map.fromList
          [ (X86_64, 9)
          , (AArch64, 222)
          , (RiscV64, 222)
          ]
    , args =
        [ Arg "addr" (TypePtr Mut (TypePrim Opaque))
        , Arg "len" sizeType
        , Arg "prot" (TypeBitset protBitset)
        , Arg "flags" (TypeBitset mapBitset)
        , Arg "fd" fdType
        , Arg "offset" offsetType
        ]
    , returns = TypeArray Mut (ParamLen "len") (TypePrim U8)
    , errorConvention = NegativeErrnoPointer
    }

exitSyscall :: Syscall
exitSyscall =
  Syscall
    { name = "exit"
    , numbers =
        Map.fromList
          [ (X86_64, 60)
          , (AArch64, 93)
          , (RiscV64, 93)
          ]
    , args =
        [ Arg "error_code" (TypePrim I32)
        ]
    , returns = TypeVoid
    , errorConvention = NeverReturns
    }

syscalls :: [Syscall]
syscalls = [mmapSyscall, exitSyscall]
