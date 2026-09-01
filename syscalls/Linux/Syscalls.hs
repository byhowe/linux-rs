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
    , subsystem = "mm"
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
    -- TODO: Maybe include the error convention inside the return type
    }

munmapSyscall :: Syscall
munmapSyscall =
  Syscall
    { name = "munmap"
    , subsystem = "mm"
    , numbers =
        Map.fromList
          [ (X86_64, 11)
          , (AArch64, 215)
          , (RiscV64, 215)
          ]
    , args =
        [ Arg "addr" (TypePtr Mut (TypePrim Opaque))
        , Arg "len" sizeType
        ]
    , returns = TypePrim Opaque
    , errorConvention = NegativeErrno
    }

exitSyscall :: Syscall
exitSyscall =
  Syscall
    { name = "exit"
    , subsystem = "process"
    , numbers =
        Map.fromList
          [ (X86_64, 60)
          , (AArch64, 93)
          , (RiscV64, 93)
          ]
    , args =
        [ Arg "error_code" (TypePrim I32)
        ]
    , returns = TypePrim Opaque
    , errorConvention = NeverReturns
    }

syscalls :: [Syscall]
syscalls = [mmapSyscall, munmapSyscall, exitSyscall]
