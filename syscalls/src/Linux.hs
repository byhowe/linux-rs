module Linux
  ( Arch (..)
  ) where

import Data.Set (Set)
import Data.Set qualified as Set

data Arch = X86_64 | Aarch64 | Riscv64
  deriving (Eq, Ord, Enum, Bounded)

instance Show Arch where
  show X86_64 = "x86_64"
  show Aarch64 = "aarch64"
  show Riscv64 = "riscv64"

allArchs :: Set Arch
allArchs = Set.fromList [minBound .. maxBound]
