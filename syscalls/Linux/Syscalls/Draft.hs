module Linux.Syscalls.Draft where

import Linux.Types

import Data.Map qualified as Map

acceptSyscall :: Syscall
acceptSyscall =
    Syscall
        { name = "accept"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 43), (AArch64, 202), (RiscV64, 202)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

accept4Syscall :: Syscall
accept4Syscall =
    Syscall
        { name = "accept4"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 288), (AArch64, 242), (RiscV64, 242)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

accessSyscall :: Syscall
accessSyscall =
    Syscall
        { name = "access"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 21)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

acctSyscall :: Syscall
acctSyscall =
    Syscall
        { name = "acct"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 163), (AArch64, 89), (RiscV64, 89)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

addKeySyscall :: Syscall
addKeySyscall =
    Syscall
        { name = "add_key"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 248), (AArch64, 217), (RiscV64, 217)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

adjtimexSyscall :: Syscall
adjtimexSyscall =
    Syscall
        { name = "adjtimex"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 159), (AArch64, 171), (RiscV64, 171)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

afsSyscallSyscall :: Syscall
afsSyscallSyscall =
    Syscall
        { name = "afs_syscall"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 183)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

alarmSyscall :: Syscall
alarmSyscall =
    Syscall
        { name = "alarm"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 37)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

archPrctlSyscall :: Syscall
archPrctlSyscall =
    Syscall
        { name = "arch_prctl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 158)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

bindSyscall :: Syscall
bindSyscall =
    Syscall
        { name = "bind"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 49), (AArch64, 200), (RiscV64, 200)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

bpfSyscall :: Syscall
bpfSyscall =
    Syscall
        { name = "bpf"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 321), (AArch64, 280), (RiscV64, 280)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

brkSyscall :: Syscall
brkSyscall =
    Syscall
        { name = "brk"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 12), (AArch64, 214), (RiscV64, 214)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

cachestatSyscall :: Syscall
cachestatSyscall =
    Syscall
        { name = "cachestat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 451), (AArch64, 451), (RiscV64, 451)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

capgetSyscall :: Syscall
capgetSyscall =
    Syscall
        { name = "capget"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 125), (AArch64, 90), (RiscV64, 90)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

capsetSyscall :: Syscall
capsetSyscall =
    Syscall
        { name = "capset"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 126), (AArch64, 91), (RiscV64, 91)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

chdirSyscall :: Syscall
chdirSyscall =
    Syscall
        { name = "chdir"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 80), (AArch64, 49), (RiscV64, 49)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

chmodSyscall :: Syscall
chmodSyscall =
    Syscall
        { name = "chmod"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 90)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

chownSyscall :: Syscall
chownSyscall =
    Syscall
        { name = "chown"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 92)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

chrootSyscall :: Syscall
chrootSyscall =
    Syscall
        { name = "chroot"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 161), (AArch64, 51), (RiscV64, 51)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

clockAdjtimeSyscall :: Syscall
clockAdjtimeSyscall =
    Syscall
        { name = "clock_adjtime"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 305), (AArch64, 266), (RiscV64, 266)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

clockGetresSyscall :: Syscall
clockGetresSyscall =
    Syscall
        { name = "clock_getres"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 229), (AArch64, 114), (RiscV64, 114)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

clockGettimeSyscall :: Syscall
clockGettimeSyscall =
    Syscall
        { name = "clock_gettime"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 228), (AArch64, 113), (RiscV64, 113)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

clockNanosleepSyscall :: Syscall
clockNanosleepSyscall =
    Syscall
        { name = "clock_nanosleep"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 230), (AArch64, 115), (RiscV64, 115)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

clockSettimeSyscall :: Syscall
clockSettimeSyscall =
    Syscall
        { name = "clock_settime"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 227), (AArch64, 112), (RiscV64, 112)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

cloneSyscall :: Syscall
cloneSyscall =
    Syscall
        { name = "clone"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 56), (AArch64, 220), (RiscV64, 220)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

clone3Syscall :: Syscall
clone3Syscall =
    Syscall
        { name = "clone3"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 435), (AArch64, 435), (RiscV64, 435)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

closeSyscall :: Syscall
closeSyscall =
    Syscall
        { name = "close"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 3), (AArch64, 57), (RiscV64, 57)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

closeRangeSyscall :: Syscall
closeRangeSyscall =
    Syscall
        { name = "close_range"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 436), (AArch64, 436), (RiscV64, 436)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

connectSyscall :: Syscall
connectSyscall =
    Syscall
        { name = "connect"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 42), (AArch64, 203), (RiscV64, 203)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

copyFileRangeSyscall :: Syscall
copyFileRangeSyscall =
    Syscall
        { name = "copy_file_range"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 326), (AArch64, 285), (RiscV64, 285)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

creatSyscall :: Syscall
creatSyscall =
    Syscall
        { name = "creat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 85)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

createModuleSyscall :: Syscall
createModuleSyscall =
    Syscall
        { name = "create_module"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 174)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

deleteModuleSyscall :: Syscall
deleteModuleSyscall =
    Syscall
        { name = "delete_module"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 176), (AArch64, 106), (RiscV64, 106)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

dupSyscall :: Syscall
dupSyscall =
    Syscall
        { name = "dup"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 32), (AArch64, 23), (RiscV64, 23)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

dup2Syscall :: Syscall
dup2Syscall =
    Syscall
        { name = "dup2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 33)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

dup3Syscall :: Syscall
dup3Syscall =
    Syscall
        { name = "dup3"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 292), (AArch64, 24), (RiscV64, 24)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

epollCreateSyscall :: Syscall
epollCreateSyscall =
    Syscall
        { name = "epoll_create"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 213)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

epollCreate1Syscall :: Syscall
epollCreate1Syscall =
    Syscall
        { name = "epoll_create1"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 291), (AArch64, 20), (RiscV64, 20)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

epollCtlSyscall :: Syscall
epollCtlSyscall =
    Syscall
        { name = "epoll_ctl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 233), (AArch64, 21), (RiscV64, 21)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

epollCtlOldSyscall :: Syscall
epollCtlOldSyscall =
    Syscall
        { name = "epoll_ctl_old"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 214)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

epollPwaitSyscall :: Syscall
epollPwaitSyscall =
    Syscall
        { name = "epoll_pwait"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 281), (AArch64, 22), (RiscV64, 22)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

epollPwait2Syscall :: Syscall
epollPwait2Syscall =
    Syscall
        { name = "epoll_pwait2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 441), (AArch64, 441), (RiscV64, 441)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

epollWaitSyscall :: Syscall
epollWaitSyscall =
    Syscall
        { name = "epoll_wait"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 232)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

epollWaitOldSyscall :: Syscall
epollWaitOldSyscall =
    Syscall
        { name = "epoll_wait_old"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 215)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

eventfdSyscall :: Syscall
eventfdSyscall =
    Syscall
        { name = "eventfd"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 284)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

eventfd2Syscall :: Syscall
eventfd2Syscall =
    Syscall
        { name = "eventfd2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 290), (AArch64, 19), (RiscV64, 19)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

execveSyscall :: Syscall
execveSyscall =
    Syscall
        { name = "execve"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 59), (AArch64, 221), (RiscV64, 221)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

execveatSyscall :: Syscall
execveatSyscall =
    Syscall
        { name = "execveat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 322), (AArch64, 281), (RiscV64, 281)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

exitSyscall :: Syscall
exitSyscall =
    Syscall
        { name = "exit"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 60), (AArch64, 93), (RiscV64, 93)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

exitGroupSyscall :: Syscall
exitGroupSyscall =
    Syscall
        { name = "exit_group"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 231), (AArch64, 94), (RiscV64, 94)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

faccessatSyscall :: Syscall
faccessatSyscall =
    Syscall
        { name = "faccessat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 269), (AArch64, 48), (RiscV64, 48)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

faccessat2Syscall :: Syscall
faccessat2Syscall =
    Syscall
        { name = "faccessat2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 439), (AArch64, 439), (RiscV64, 439)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fadvise64Syscall :: Syscall
fadvise64Syscall =
    Syscall
        { name = "fadvise64"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 221), (AArch64, 223), (RiscV64, 223)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fallocateSyscall :: Syscall
fallocateSyscall =
    Syscall
        { name = "fallocate"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 285), (AArch64, 47), (RiscV64, 47)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fanotifyInitSyscall :: Syscall
fanotifyInitSyscall =
    Syscall
        { name = "fanotify_init"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 300), (AArch64, 262), (RiscV64, 262)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fanotifyMarkSyscall :: Syscall
fanotifyMarkSyscall =
    Syscall
        { name = "fanotify_mark"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 301), (AArch64, 263), (RiscV64, 263)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fchdirSyscall :: Syscall
fchdirSyscall =
    Syscall
        { name = "fchdir"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 81), (AArch64, 50), (RiscV64, 50)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fchmodSyscall :: Syscall
fchmodSyscall =
    Syscall
        { name = "fchmod"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 91), (AArch64, 52), (RiscV64, 52)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fchmodatSyscall :: Syscall
fchmodatSyscall =
    Syscall
        { name = "fchmodat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 268), (AArch64, 53), (RiscV64, 53)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fchmodat2Syscall :: Syscall
fchmodat2Syscall =
    Syscall
        { name = "fchmodat2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 452), (AArch64, 452), (RiscV64, 452)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fchownSyscall :: Syscall
fchownSyscall =
    Syscall
        { name = "fchown"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 93), (AArch64, 55), (RiscV64, 55)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fchownatSyscall :: Syscall
fchownatSyscall =
    Syscall
        { name = "fchownat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 260), (AArch64, 54), (RiscV64, 54)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fcntlSyscall :: Syscall
fcntlSyscall =
    Syscall
        { name = "fcntl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 72), (AArch64, 25), (RiscV64, 25)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fdatasyncSyscall :: Syscall
fdatasyncSyscall =
    Syscall
        { name = "fdatasync"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 75), (AArch64, 83), (RiscV64, 83)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fgetxattrSyscall :: Syscall
fgetxattrSyscall =
    Syscall
        { name = "fgetxattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 193), (AArch64, 10), (RiscV64, 10)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fileGetattrSyscall :: Syscall
fileGetattrSyscall =
    Syscall
        { name = "file_getattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 468), (AArch64, 468), (RiscV64, 468)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fileSetattrSyscall :: Syscall
fileSetattrSyscall =
    Syscall
        { name = "file_setattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 469), (AArch64, 469), (RiscV64, 469)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

finitModuleSyscall :: Syscall
finitModuleSyscall =
    Syscall
        { name = "finit_module"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 313), (AArch64, 273), (RiscV64, 273)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

flistxattrSyscall :: Syscall
flistxattrSyscall =
    Syscall
        { name = "flistxattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 196), (AArch64, 13), (RiscV64, 13)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

flockSyscall :: Syscall
flockSyscall =
    Syscall
        { name = "flock"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 73), (AArch64, 32), (RiscV64, 32)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

forkSyscall :: Syscall
forkSyscall =
    Syscall
        { name = "fork"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 57)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fremovexattrSyscall :: Syscall
fremovexattrSyscall =
    Syscall
        { name = "fremovexattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 199), (AArch64, 16), (RiscV64, 16)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fsconfigSyscall :: Syscall
fsconfigSyscall =
    Syscall
        { name = "fsconfig"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 431), (AArch64, 431), (RiscV64, 431)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fsetxattrSyscall :: Syscall
fsetxattrSyscall =
    Syscall
        { name = "fsetxattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 190), (AArch64, 7), (RiscV64, 7)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fsmountSyscall :: Syscall
fsmountSyscall =
    Syscall
        { name = "fsmount"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 432), (AArch64, 432), (RiscV64, 432)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fsopenSyscall :: Syscall
fsopenSyscall =
    Syscall
        { name = "fsopen"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 430), (AArch64, 430), (RiscV64, 430)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fspickSyscall :: Syscall
fspickSyscall =
    Syscall
        { name = "fspick"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 433), (AArch64, 433), (RiscV64, 433)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fstatSyscall :: Syscall
fstatSyscall =
    Syscall
        { name = "fstat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 5), (AArch64, 80), (RiscV64, 80)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fstatfsSyscall :: Syscall
fstatfsSyscall =
    Syscall
        { name = "fstatfs"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 138), (AArch64, 44), (RiscV64, 44)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

fsyncSyscall :: Syscall
fsyncSyscall =
    Syscall
        { name = "fsync"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 74), (AArch64, 82), (RiscV64, 82)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ftruncateSyscall :: Syscall
ftruncateSyscall =
    Syscall
        { name = "ftruncate"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 77), (AArch64, 46), (RiscV64, 46)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

futexSyscall :: Syscall
futexSyscall =
    Syscall
        { name = "futex"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 202), (AArch64, 98), (RiscV64, 98)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

futexRequeueSyscall :: Syscall
futexRequeueSyscall =
    Syscall
        { name = "futex_requeue"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 456), (AArch64, 456), (RiscV64, 456)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

futexWaitSyscall :: Syscall
futexWaitSyscall =
    Syscall
        { name = "futex_wait"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 455), (AArch64, 455), (RiscV64, 455)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

futexWaitvSyscall :: Syscall
futexWaitvSyscall =
    Syscall
        { name = "futex_waitv"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 449), (AArch64, 449), (RiscV64, 449)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

futexWakeSyscall :: Syscall
futexWakeSyscall =
    Syscall
        { name = "futex_wake"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 454), (AArch64, 454), (RiscV64, 454)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

futimesatSyscall :: Syscall
futimesatSyscall =
    Syscall
        { name = "futimesat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 261)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getKernelSymsSyscall :: Syscall
getKernelSymsSyscall =
    Syscall
        { name = "get_kernel_syms"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 177)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getMempolicySyscall :: Syscall
getMempolicySyscall =
    Syscall
        { name = "get_mempolicy"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 239), (AArch64, 236), (RiscV64, 236)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getRobustListSyscall :: Syscall
getRobustListSyscall =
    Syscall
        { name = "get_robust_list"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 274), (AArch64, 100), (RiscV64, 100)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getThreadAreaSyscall :: Syscall
getThreadAreaSyscall =
    Syscall
        { name = "get_thread_area"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 211)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getcpuSyscall :: Syscall
getcpuSyscall =
    Syscall
        { name = "getcpu"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 309), (AArch64, 168), (RiscV64, 168)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getcwdSyscall :: Syscall
getcwdSyscall =
    Syscall
        { name = "getcwd"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 79), (AArch64, 17), (RiscV64, 17)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getdentsSyscall :: Syscall
getdentsSyscall =
    Syscall
        { name = "getdents"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 78)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getdents64Syscall :: Syscall
getdents64Syscall =
    Syscall
        { name = "getdents64"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 217), (AArch64, 61), (RiscV64, 61)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getegidSyscall :: Syscall
getegidSyscall =
    Syscall
        { name = "getegid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 108), (AArch64, 177), (RiscV64, 177)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

geteuidSyscall :: Syscall
geteuidSyscall =
    Syscall
        { name = "geteuid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 107), (AArch64, 175), (RiscV64, 175)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getgidSyscall :: Syscall
getgidSyscall =
    Syscall
        { name = "getgid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 104), (AArch64, 176), (RiscV64, 176)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getgroupsSyscall :: Syscall
getgroupsSyscall =
    Syscall
        { name = "getgroups"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 115), (AArch64, 158), (RiscV64, 158)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getitimerSyscall :: Syscall
getitimerSyscall =
    Syscall
        { name = "getitimer"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 36), (AArch64, 102), (RiscV64, 102)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getpeernameSyscall :: Syscall
getpeernameSyscall =
    Syscall
        { name = "getpeername"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 52), (AArch64, 205), (RiscV64, 205)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getpgidSyscall :: Syscall
getpgidSyscall =
    Syscall
        { name = "getpgid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 121), (AArch64, 155), (RiscV64, 155)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getpgrpSyscall :: Syscall
getpgrpSyscall =
    Syscall
        { name = "getpgrp"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 111)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getpidSyscall :: Syscall
getpidSyscall =
    Syscall
        { name = "getpid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 39), (AArch64, 172), (RiscV64, 172)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getpmsgSyscall :: Syscall
getpmsgSyscall =
    Syscall
        { name = "getpmsg"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 181)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getppidSyscall :: Syscall
getppidSyscall =
    Syscall
        { name = "getppid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 110), (AArch64, 173), (RiscV64, 173)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getprioritySyscall :: Syscall
getprioritySyscall =
    Syscall
        { name = "getpriority"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 140), (AArch64, 141), (RiscV64, 141)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getrandomSyscall :: Syscall
getrandomSyscall =
    Syscall
        { name = "getrandom"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 318), (AArch64, 278), (RiscV64, 278)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getresgidSyscall :: Syscall
getresgidSyscall =
    Syscall
        { name = "getresgid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 120), (AArch64, 150), (RiscV64, 150)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getresuidSyscall :: Syscall
getresuidSyscall =
    Syscall
        { name = "getresuid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 118), (AArch64, 148), (RiscV64, 148)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getrlimitSyscall :: Syscall
getrlimitSyscall =
    Syscall
        { name = "getrlimit"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 97)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getrusageSyscall :: Syscall
getrusageSyscall =
    Syscall
        { name = "getrusage"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 98), (AArch64, 165), (RiscV64, 165)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getsidSyscall :: Syscall
getsidSyscall =
    Syscall
        { name = "getsid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 124), (AArch64, 156), (RiscV64, 156)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getsocknameSyscall :: Syscall
getsocknameSyscall =
    Syscall
        { name = "getsockname"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 51), (AArch64, 204), (RiscV64, 204)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getsockoptSyscall :: Syscall
getsockoptSyscall =
    Syscall
        { name = "getsockopt"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 55), (AArch64, 209), (RiscV64, 209)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

gettidSyscall :: Syscall
gettidSyscall =
    Syscall
        { name = "gettid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 186), (AArch64, 178), (RiscV64, 178)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

gettimeofdaySyscall :: Syscall
gettimeofdaySyscall =
    Syscall
        { name = "gettimeofday"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 96), (AArch64, 169), (RiscV64, 169)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getuidSyscall :: Syscall
getuidSyscall =
    Syscall
        { name = "getuid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 102), (AArch64, 174), (RiscV64, 174)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getxattrSyscall :: Syscall
getxattrSyscall =
    Syscall
        { name = "getxattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 191), (AArch64, 8), (RiscV64, 8)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

getxattratSyscall :: Syscall
getxattratSyscall =
    Syscall
        { name = "getxattrat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 464), (AArch64, 464), (RiscV64, 464)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

initModuleSyscall :: Syscall
initModuleSyscall =
    Syscall
        { name = "init_module"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 175), (AArch64, 105), (RiscV64, 105)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

inotifyAddWatchSyscall :: Syscall
inotifyAddWatchSyscall =
    Syscall
        { name = "inotify_add_watch"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 254), (AArch64, 27), (RiscV64, 27)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

inotifyInitSyscall :: Syscall
inotifyInitSyscall =
    Syscall
        { name = "inotify_init"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 253)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

inotifyInit1Syscall :: Syscall
inotifyInit1Syscall =
    Syscall
        { name = "inotify_init1"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 294), (AArch64, 26), (RiscV64, 26)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

inotifyRmWatchSyscall :: Syscall
inotifyRmWatchSyscall =
    Syscall
        { name = "inotify_rm_watch"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 255), (AArch64, 28), (RiscV64, 28)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioCancelSyscall :: Syscall
ioCancelSyscall =
    Syscall
        { name = "io_cancel"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 210), (AArch64, 3), (RiscV64, 3)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioDestroySyscall :: Syscall
ioDestroySyscall =
    Syscall
        { name = "io_destroy"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 207), (AArch64, 1), (RiscV64, 1)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioGeteventsSyscall :: Syscall
ioGeteventsSyscall =
    Syscall
        { name = "io_getevents"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 208), (AArch64, 4), (RiscV64, 4)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioPgeteventsSyscall :: Syscall
ioPgeteventsSyscall =
    Syscall
        { name = "io_pgetevents"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 333), (AArch64, 292), (RiscV64, 292)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioSetupSyscall :: Syscall
ioSetupSyscall =
    Syscall
        { name = "io_setup"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 206), (AArch64, 0), (RiscV64, 0)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioSubmitSyscall :: Syscall
ioSubmitSyscall =
    Syscall
        { name = "io_submit"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 209), (AArch64, 2), (RiscV64, 2)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioUringEnterSyscall :: Syscall
ioUringEnterSyscall =
    Syscall
        { name = "io_uring_enter"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 426), (AArch64, 426), (RiscV64, 426)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioUringRegisterSyscall :: Syscall
ioUringRegisterSyscall =
    Syscall
        { name = "io_uring_register"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 427), (AArch64, 427), (RiscV64, 427)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioUringSetupSyscall :: Syscall
ioUringSetupSyscall =
    Syscall
        { name = "io_uring_setup"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 425), (AArch64, 425), (RiscV64, 425)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioctlSyscall :: Syscall
ioctlSyscall =
    Syscall
        { name = "ioctl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 16), (AArch64, 29), (RiscV64, 29)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

iopermSyscall :: Syscall
iopermSyscall =
    Syscall
        { name = "ioperm"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 173)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioplSyscall :: Syscall
ioplSyscall =
    Syscall
        { name = "iopl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 172)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioprioGetSyscall :: Syscall
ioprioGetSyscall =
    Syscall
        { name = "ioprio_get"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 252), (AArch64, 31), (RiscV64, 31)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ioprioSetSyscall :: Syscall
ioprioSetSyscall =
    Syscall
        { name = "ioprio_set"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 251), (AArch64, 30), (RiscV64, 30)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

kcmpSyscall :: Syscall
kcmpSyscall =
    Syscall
        { name = "kcmp"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 312), (AArch64, 272), (RiscV64, 272)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

kexecFileLoadSyscall :: Syscall
kexecFileLoadSyscall =
    Syscall
        { name = "kexec_file_load"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 320), (AArch64, 294), (RiscV64, 294)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

kexecLoadSyscall :: Syscall
kexecLoadSyscall =
    Syscall
        { name = "kexec_load"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 246), (AArch64, 104), (RiscV64, 104)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

keyctlSyscall :: Syscall
keyctlSyscall =
    Syscall
        { name = "keyctl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 250), (AArch64, 219), (RiscV64, 219)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

killSyscall :: Syscall
killSyscall =
    Syscall
        { name = "kill"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 62), (AArch64, 129), (RiscV64, 129)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

landlockAddRuleSyscall :: Syscall
landlockAddRuleSyscall =
    Syscall
        { name = "landlock_add_rule"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 445), (AArch64, 445), (RiscV64, 445)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

landlockCreateRulesetSyscall :: Syscall
landlockCreateRulesetSyscall =
    Syscall
        { name = "landlock_create_ruleset"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 444), (AArch64, 444), (RiscV64, 444)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

landlockRestrictSelfSyscall :: Syscall
landlockRestrictSelfSyscall =
    Syscall
        { name = "landlock_restrict_self"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 446), (AArch64, 446), (RiscV64, 446)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

lchownSyscall :: Syscall
lchownSyscall =
    Syscall
        { name = "lchown"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 94)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

lgetxattrSyscall :: Syscall
lgetxattrSyscall =
    Syscall
        { name = "lgetxattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 192), (AArch64, 9), (RiscV64, 9)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

linkSyscall :: Syscall
linkSyscall =
    Syscall
        { name = "link"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 86)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

linkatSyscall :: Syscall
linkatSyscall =
    Syscall
        { name = "linkat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 265), (AArch64, 37), (RiscV64, 37)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

listenSyscall :: Syscall
listenSyscall =
    Syscall
        { name = "listen"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 50), (AArch64, 201), (RiscV64, 201)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

listmountSyscall :: Syscall
listmountSyscall =
    Syscall
        { name = "listmount"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 458), (AArch64, 458), (RiscV64, 458)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

listxattrSyscall :: Syscall
listxattrSyscall =
    Syscall
        { name = "listxattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 194), (AArch64, 11), (RiscV64, 11)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

listxattratSyscall :: Syscall
listxattratSyscall =
    Syscall
        { name = "listxattrat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 465), (AArch64, 465), (RiscV64, 465)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

llistxattrSyscall :: Syscall
llistxattrSyscall =
    Syscall
        { name = "llistxattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 195), (AArch64, 12), (RiscV64, 12)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

lookupDcookieSyscall :: Syscall
lookupDcookieSyscall =
    Syscall
        { name = "lookup_dcookie"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 212), (AArch64, 18), (RiscV64, 18)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

lremovexattrSyscall :: Syscall
lremovexattrSyscall =
    Syscall
        { name = "lremovexattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 198), (AArch64, 15), (RiscV64, 15)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

lseekSyscall :: Syscall
lseekSyscall =
    Syscall
        { name = "lseek"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 8), (AArch64, 62), (RiscV64, 62)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

lsetxattrSyscall :: Syscall
lsetxattrSyscall =
    Syscall
        { name = "lsetxattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 189), (AArch64, 6), (RiscV64, 6)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

lsmGetSelfAttrSyscall :: Syscall
lsmGetSelfAttrSyscall =
    Syscall
        { name = "lsm_get_self_attr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 459), (AArch64, 459), (RiscV64, 459)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

lsmListModulesSyscall :: Syscall
lsmListModulesSyscall =
    Syscall
        { name = "lsm_list_modules"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 461), (AArch64, 461), (RiscV64, 461)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

lsmSetSelfAttrSyscall :: Syscall
lsmSetSelfAttrSyscall =
    Syscall
        { name = "lsm_set_self_attr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 460), (AArch64, 460), (RiscV64, 460)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

lstatSyscall :: Syscall
lstatSyscall =
    Syscall
        { name = "lstat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 6)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

madviseSyscall :: Syscall
madviseSyscall =
    Syscall
        { name = "madvise"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 28), (AArch64, 233), (RiscV64, 233)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mapShadowStackSyscall :: Syscall
mapShadowStackSyscall =
    Syscall
        { name = "map_shadow_stack"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 453), (AArch64, 453), (RiscV64, 453)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mbindSyscall :: Syscall
mbindSyscall =
    Syscall
        { name = "mbind"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 237), (AArch64, 235), (RiscV64, 235)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

membarrierSyscall :: Syscall
membarrierSyscall =
    Syscall
        { name = "membarrier"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 324), (AArch64, 283), (RiscV64, 283)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

memfdCreateSyscall :: Syscall
memfdCreateSyscall =
    Syscall
        { name = "memfd_create"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 319), (AArch64, 279), (RiscV64, 279)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

memfdSecretSyscall :: Syscall
memfdSecretSyscall =
    Syscall
        { name = "memfd_secret"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 447)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

migratePagesSyscall :: Syscall
migratePagesSyscall =
    Syscall
        { name = "migrate_pages"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 256), (AArch64, 238), (RiscV64, 238)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mincoreSyscall :: Syscall
mincoreSyscall =
    Syscall
        { name = "mincore"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 27), (AArch64, 232), (RiscV64, 232)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mkdirSyscall :: Syscall
mkdirSyscall =
    Syscall
        { name = "mkdir"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 83)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mkdiratSyscall :: Syscall
mkdiratSyscall =
    Syscall
        { name = "mkdirat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 258), (AArch64, 34), (RiscV64, 34)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mknodSyscall :: Syscall
mknodSyscall =
    Syscall
        { name = "mknod"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 133)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mknodatSyscall :: Syscall
mknodatSyscall =
    Syscall
        { name = "mknodat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 259), (AArch64, 33), (RiscV64, 33)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mlockSyscall :: Syscall
mlockSyscall =
    Syscall
        { name = "mlock"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 149), (AArch64, 228), (RiscV64, 228)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mlock2Syscall :: Syscall
mlock2Syscall =
    Syscall
        { name = "mlock2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 325), (AArch64, 284), (RiscV64, 284)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mlockallSyscall :: Syscall
mlockallSyscall =
    Syscall
        { name = "mlockall"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 151), (AArch64, 230), (RiscV64, 230)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mmapSyscall :: Syscall
mmapSyscall =
    Syscall
        { name = "mmap"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 9), (AArch64, 222), (RiscV64, 222)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

modifyLdtSyscall :: Syscall
modifyLdtSyscall =
    Syscall
        { name = "modify_ldt"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 154)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mountSyscall :: Syscall
mountSyscall =
    Syscall
        { name = "mount"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 165), (AArch64, 40), (RiscV64, 40)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mountSetattrSyscall :: Syscall
mountSetattrSyscall =
    Syscall
        { name = "mount_setattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 442), (AArch64, 442), (RiscV64, 442)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

moveMountSyscall :: Syscall
moveMountSyscall =
    Syscall
        { name = "move_mount"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 429), (AArch64, 429), (RiscV64, 429)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

movePagesSyscall :: Syscall
movePagesSyscall =
    Syscall
        { name = "move_pages"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 279), (AArch64, 239), (RiscV64, 239)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mprotectSyscall :: Syscall
mprotectSyscall =
    Syscall
        { name = "mprotect"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 10), (AArch64, 226), (RiscV64, 226)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mqGetsetattrSyscall :: Syscall
mqGetsetattrSyscall =
    Syscall
        { name = "mq_getsetattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 245), (AArch64, 185), (RiscV64, 185)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mqNotifySyscall :: Syscall
mqNotifySyscall =
    Syscall
        { name = "mq_notify"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 244), (AArch64, 184), (RiscV64, 184)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mqOpenSyscall :: Syscall
mqOpenSyscall =
    Syscall
        { name = "mq_open"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 240), (AArch64, 180), (RiscV64, 180)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mqTimedreceiveSyscall :: Syscall
mqTimedreceiveSyscall =
    Syscall
        { name = "mq_timedreceive"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 243), (AArch64, 183), (RiscV64, 183)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mqTimedsendSyscall :: Syscall
mqTimedsendSyscall =
    Syscall
        { name = "mq_timedsend"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 242), (AArch64, 182), (RiscV64, 182)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mqUnlinkSyscall :: Syscall
mqUnlinkSyscall =
    Syscall
        { name = "mq_unlink"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 241), (AArch64, 181), (RiscV64, 181)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

mremapSyscall :: Syscall
mremapSyscall =
    Syscall
        { name = "mremap"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 25), (AArch64, 216), (RiscV64, 216)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

msealSyscall :: Syscall
msealSyscall =
    Syscall
        { name = "mseal"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 462), (AArch64, 462), (RiscV64, 462)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

msgctlSyscall :: Syscall
msgctlSyscall =
    Syscall
        { name = "msgctl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 71), (AArch64, 187), (RiscV64, 187)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

msggetSyscall :: Syscall
msggetSyscall =
    Syscall
        { name = "msgget"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 68), (AArch64, 186), (RiscV64, 186)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

msgrcvSyscall :: Syscall
msgrcvSyscall =
    Syscall
        { name = "msgrcv"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 70), (AArch64, 188), (RiscV64, 188)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

msgsndSyscall :: Syscall
msgsndSyscall =
    Syscall
        { name = "msgsnd"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 69), (AArch64, 189), (RiscV64, 189)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

msyncSyscall :: Syscall
msyncSyscall =
    Syscall
        { name = "msync"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 26), (AArch64, 227), (RiscV64, 227)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

munlockSyscall :: Syscall
munlockSyscall =
    Syscall
        { name = "munlock"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 150), (AArch64, 229), (RiscV64, 229)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

munlockallSyscall :: Syscall
munlockallSyscall =
    Syscall
        { name = "munlockall"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 152), (AArch64, 231), (RiscV64, 231)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

munmapSyscall :: Syscall
munmapSyscall =
    Syscall
        { name = "munmap"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 11), (AArch64, 215), (RiscV64, 215)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

nameToHandleAtSyscall :: Syscall
nameToHandleAtSyscall =
    Syscall
        { name = "name_to_handle_at"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 303), (AArch64, 264), (RiscV64, 264)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

nanosleepSyscall :: Syscall
nanosleepSyscall =
    Syscall
        { name = "nanosleep"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 35), (AArch64, 101), (RiscV64, 101)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

newfstatatSyscall :: Syscall
newfstatatSyscall =
    Syscall
        { name = "newfstatat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 262), (AArch64, 79), (RiscV64, 79)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

nfsservctlSyscall :: Syscall
nfsservctlSyscall =
    Syscall
        { name = "nfsservctl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 180), (AArch64, 42), (RiscV64, 42)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

openSyscall :: Syscall
openSyscall =
    Syscall
        { name = "open"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 2)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

openByHandleAtSyscall :: Syscall
openByHandleAtSyscall =
    Syscall
        { name = "open_by_handle_at"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 304), (AArch64, 265), (RiscV64, 265)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

openTreeSyscall :: Syscall
openTreeSyscall =
    Syscall
        { name = "open_tree"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 428), (AArch64, 428), (RiscV64, 428)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

openTreeAttrSyscall :: Syscall
openTreeAttrSyscall =
    Syscall
        { name = "open_tree_attr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 467), (AArch64, 467), (RiscV64, 467)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

openatSyscall :: Syscall
openatSyscall =
    Syscall
        { name = "openat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 257), (AArch64, 56), (RiscV64, 56)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

openat2Syscall :: Syscall
openat2Syscall =
    Syscall
        { name = "openat2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 437), (AArch64, 437), (RiscV64, 437)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pauseSyscall :: Syscall
pauseSyscall =
    Syscall
        { name = "pause"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 34)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

perfEventOpenSyscall :: Syscall
perfEventOpenSyscall =
    Syscall
        { name = "perf_event_open"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 298), (AArch64, 241), (RiscV64, 241)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

personalitySyscall :: Syscall
personalitySyscall =
    Syscall
        { name = "personality"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 135), (AArch64, 92), (RiscV64, 92)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pidfdGetfdSyscall :: Syscall
pidfdGetfdSyscall =
    Syscall
        { name = "pidfd_getfd"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 438), (AArch64, 438), (RiscV64, 438)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pidfdOpenSyscall :: Syscall
pidfdOpenSyscall =
    Syscall
        { name = "pidfd_open"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 434), (AArch64, 434), (RiscV64, 434)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pidfdSendSignalSyscall :: Syscall
pidfdSendSignalSyscall =
    Syscall
        { name = "pidfd_send_signal"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 424), (AArch64, 424), (RiscV64, 424)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pipeSyscall :: Syscall
pipeSyscall =
    Syscall
        { name = "pipe"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 22)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pipe2Syscall :: Syscall
pipe2Syscall =
    Syscall
        { name = "pipe2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 293), (AArch64, 59), (RiscV64, 59)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pivotRootSyscall :: Syscall
pivotRootSyscall =
    Syscall
        { name = "pivot_root"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 155), (AArch64, 41), (RiscV64, 41)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pkeyAllocSyscall :: Syscall
pkeyAllocSyscall =
    Syscall
        { name = "pkey_alloc"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 330), (AArch64, 289), (RiscV64, 289)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pkeyFreeSyscall :: Syscall
pkeyFreeSyscall =
    Syscall
        { name = "pkey_free"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 331), (AArch64, 290), (RiscV64, 290)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pkeyMprotectSyscall :: Syscall
pkeyMprotectSyscall =
    Syscall
        { name = "pkey_mprotect"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 329), (AArch64, 288), (RiscV64, 288)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pollSyscall :: Syscall
pollSyscall =
    Syscall
        { name = "poll"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 7)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ppollSyscall :: Syscall
ppollSyscall =
    Syscall
        { name = "ppoll"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 271), (AArch64, 73), (RiscV64, 73)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

prctlSyscall :: Syscall
prctlSyscall =
    Syscall
        { name = "prctl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 157), (AArch64, 167), (RiscV64, 167)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pread64Syscall :: Syscall
pread64Syscall =
    Syscall
        { name = "pread64"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 17), (AArch64, 67), (RiscV64, 67)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

preadvSyscall :: Syscall
preadvSyscall =
    Syscall
        { name = "preadv"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 295), (AArch64, 69), (RiscV64, 69)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

preadv2Syscall :: Syscall
preadv2Syscall =
    Syscall
        { name = "preadv2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 327), (AArch64, 286), (RiscV64, 286)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

prlimit64Syscall :: Syscall
prlimit64Syscall =
    Syscall
        { name = "prlimit64"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 302), (AArch64, 261), (RiscV64, 261)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

processMadviseSyscall :: Syscall
processMadviseSyscall =
    Syscall
        { name = "process_madvise"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 440), (AArch64, 440), (RiscV64, 440)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

processMreleaseSyscall :: Syscall
processMreleaseSyscall =
    Syscall
        { name = "process_mrelease"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 448), (AArch64, 448), (RiscV64, 448)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

processVmReadvSyscall :: Syscall
processVmReadvSyscall =
    Syscall
        { name = "process_vm_readv"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 310), (AArch64, 270), (RiscV64, 270)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

processVmWritevSyscall :: Syscall
processVmWritevSyscall =
    Syscall
        { name = "process_vm_writev"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 311), (AArch64, 271), (RiscV64, 271)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pselect6Syscall :: Syscall
pselect6Syscall =
    Syscall
        { name = "pselect6"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 270), (AArch64, 72), (RiscV64, 72)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ptraceSyscall :: Syscall
ptraceSyscall =
    Syscall
        { name = "ptrace"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 101), (AArch64, 117), (RiscV64, 117)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

putpmsgSyscall :: Syscall
putpmsgSyscall =
    Syscall
        { name = "putpmsg"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 182)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pwrite64Syscall :: Syscall
pwrite64Syscall =
    Syscall
        { name = "pwrite64"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 18), (AArch64, 68), (RiscV64, 68)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pwritevSyscall :: Syscall
pwritevSyscall =
    Syscall
        { name = "pwritev"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 296), (AArch64, 70), (RiscV64, 70)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

pwritev2Syscall :: Syscall
pwritev2Syscall =
    Syscall
        { name = "pwritev2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 328), (AArch64, 287), (RiscV64, 287)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

queryModuleSyscall :: Syscall
queryModuleSyscall =
    Syscall
        { name = "query_module"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 178)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

quotactlSyscall :: Syscall
quotactlSyscall =
    Syscall
        { name = "quotactl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 179), (AArch64, 60), (RiscV64, 60)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

quotactlFdSyscall :: Syscall
quotactlFdSyscall =
    Syscall
        { name = "quotactl_fd"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 443), (AArch64, 443), (RiscV64, 443)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

readSyscall :: Syscall
readSyscall =
    Syscall
        { name = "read"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 0), (AArch64, 63), (RiscV64, 63)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

readaheadSyscall :: Syscall
readaheadSyscall =
    Syscall
        { name = "readahead"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 187), (AArch64, 213), (RiscV64, 213)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

readlinkSyscall :: Syscall
readlinkSyscall =
    Syscall
        { name = "readlink"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 89)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

readlinkatSyscall :: Syscall
readlinkatSyscall =
    Syscall
        { name = "readlinkat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 267), (AArch64, 78), (RiscV64, 78)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

readvSyscall :: Syscall
readvSyscall =
    Syscall
        { name = "readv"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 19), (AArch64, 65), (RiscV64, 65)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rebootSyscall :: Syscall
rebootSyscall =
    Syscall
        { name = "reboot"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 169), (AArch64, 142), (RiscV64, 142)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

recvfromSyscall :: Syscall
recvfromSyscall =
    Syscall
        { name = "recvfrom"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 45), (AArch64, 207), (RiscV64, 207)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

recvmmsgSyscall :: Syscall
recvmmsgSyscall =
    Syscall
        { name = "recvmmsg"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 299), (AArch64, 243), (RiscV64, 243)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

recvmsgSyscall :: Syscall
recvmsgSyscall =
    Syscall
        { name = "recvmsg"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 47), (AArch64, 212), (RiscV64, 212)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

remapFilePagesSyscall :: Syscall
remapFilePagesSyscall =
    Syscall
        { name = "remap_file_pages"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 216), (AArch64, 234), (RiscV64, 234)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

removexattrSyscall :: Syscall
removexattrSyscall =
    Syscall
        { name = "removexattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 197), (AArch64, 14), (RiscV64, 14)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

removexattratSyscall :: Syscall
removexattratSyscall =
    Syscall
        { name = "removexattrat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 466), (AArch64, 466), (RiscV64, 466)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

renameSyscall :: Syscall
renameSyscall =
    Syscall
        { name = "rename"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 82)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

renameatSyscall :: Syscall
renameatSyscall =
    Syscall
        { name = "renameat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 264)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

renameat2Syscall :: Syscall
renameat2Syscall =
    Syscall
        { name = "renameat2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 316), (AArch64, 276), (RiscV64, 276)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

requestKeySyscall :: Syscall
requestKeySyscall =
    Syscall
        { name = "request_key"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 249), (AArch64, 218), (RiscV64, 218)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

restartSyscallSyscall :: Syscall
restartSyscallSyscall =
    Syscall
        { name = "restart_syscall"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 219), (AArch64, 128), (RiscV64, 128)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

riscvFlushIcacheSyscall :: Syscall
riscvFlushIcacheSyscall =
    Syscall
        { name = "riscv_flush_icache"
        , subsystem = "unknown"
        , numbers = Map.fromList [(RiscV64, 259)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

riscvHwprobeSyscall :: Syscall
riscvHwprobeSyscall =
    Syscall
        { name = "riscv_hwprobe"
        , subsystem = "unknown"
        , numbers = Map.fromList [(RiscV64, 258)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rmdirSyscall :: Syscall
rmdirSyscall =
    Syscall
        { name = "rmdir"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 84)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rseqSyscall :: Syscall
rseqSyscall =
    Syscall
        { name = "rseq"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 334), (AArch64, 293), (RiscV64, 293)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rtSigactionSyscall :: Syscall
rtSigactionSyscall =
    Syscall
        { name = "rt_sigaction"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 13), (AArch64, 134), (RiscV64, 134)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rtSigpendingSyscall :: Syscall
rtSigpendingSyscall =
    Syscall
        { name = "rt_sigpending"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 127), (AArch64, 136), (RiscV64, 136)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rtSigprocmaskSyscall :: Syscall
rtSigprocmaskSyscall =
    Syscall
        { name = "rt_sigprocmask"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 14), (AArch64, 135), (RiscV64, 135)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rtSigqueueinfoSyscall :: Syscall
rtSigqueueinfoSyscall =
    Syscall
        { name = "rt_sigqueueinfo"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 129), (AArch64, 138), (RiscV64, 138)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rtSigreturnSyscall :: Syscall
rtSigreturnSyscall =
    Syscall
        { name = "rt_sigreturn"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 15), (AArch64, 139), (RiscV64, 139)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rtSigsuspendSyscall :: Syscall
rtSigsuspendSyscall =
    Syscall
        { name = "rt_sigsuspend"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 130), (AArch64, 133), (RiscV64, 133)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rtSigtimedwaitSyscall :: Syscall
rtSigtimedwaitSyscall =
    Syscall
        { name = "rt_sigtimedwait"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 128), (AArch64, 137), (RiscV64, 137)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

rtTgsigqueueinfoSyscall :: Syscall
rtTgsigqueueinfoSyscall =
    Syscall
        { name = "rt_tgsigqueueinfo"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 297), (AArch64, 240), (RiscV64, 240)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedGetPriorityMaxSyscall :: Syscall
schedGetPriorityMaxSyscall =
    Syscall
        { name = "sched_get_priority_max"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 146), (AArch64, 125), (RiscV64, 125)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedGetPriorityMinSyscall :: Syscall
schedGetPriorityMinSyscall =
    Syscall
        { name = "sched_get_priority_min"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 147), (AArch64, 126), (RiscV64, 126)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedGetaffinitySyscall :: Syscall
schedGetaffinitySyscall =
    Syscall
        { name = "sched_getaffinity"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 204), (AArch64, 123), (RiscV64, 123)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedGetattrSyscall :: Syscall
schedGetattrSyscall =
    Syscall
        { name = "sched_getattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 315), (AArch64, 275), (RiscV64, 275)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedGetparamSyscall :: Syscall
schedGetparamSyscall =
    Syscall
        { name = "sched_getparam"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 143), (AArch64, 121), (RiscV64, 121)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedGetschedulerSyscall :: Syscall
schedGetschedulerSyscall =
    Syscall
        { name = "sched_getscheduler"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 145), (AArch64, 120), (RiscV64, 120)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedRrGetIntervalSyscall :: Syscall
schedRrGetIntervalSyscall =
    Syscall
        { name = "sched_rr_get_interval"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 148), (AArch64, 127), (RiscV64, 127)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedSetaffinitySyscall :: Syscall
schedSetaffinitySyscall =
    Syscall
        { name = "sched_setaffinity"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 203), (AArch64, 122), (RiscV64, 122)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedSetattrSyscall :: Syscall
schedSetattrSyscall =
    Syscall
        { name = "sched_setattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 314), (AArch64, 274), (RiscV64, 274)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedSetparamSyscall :: Syscall
schedSetparamSyscall =
    Syscall
        { name = "sched_setparam"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 142), (AArch64, 118), (RiscV64, 118)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedSetschedulerSyscall :: Syscall
schedSetschedulerSyscall =
    Syscall
        { name = "sched_setscheduler"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 144), (AArch64, 119), (RiscV64, 119)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

schedYieldSyscall :: Syscall
schedYieldSyscall =
    Syscall
        { name = "sched_yield"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 24), (AArch64, 124), (RiscV64, 124)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

seccompSyscall :: Syscall
seccompSyscall =
    Syscall
        { name = "seccomp"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 317), (AArch64, 277), (RiscV64, 277)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

securitySyscall :: Syscall
securitySyscall =
    Syscall
        { name = "security"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 185)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

selectSyscall :: Syscall
selectSyscall =
    Syscall
        { name = "select"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 23)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

semctlSyscall :: Syscall
semctlSyscall =
    Syscall
        { name = "semctl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 66), (AArch64, 191), (RiscV64, 191)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

semgetSyscall :: Syscall
semgetSyscall =
    Syscall
        { name = "semget"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 64), (AArch64, 190), (RiscV64, 190)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

semopSyscall :: Syscall
semopSyscall =
    Syscall
        { name = "semop"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 65), (AArch64, 193), (RiscV64, 193)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

semtimedopSyscall :: Syscall
semtimedopSyscall =
    Syscall
        { name = "semtimedop"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 220), (AArch64, 192), (RiscV64, 192)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

sendfileSyscall :: Syscall
sendfileSyscall =
    Syscall
        { name = "sendfile"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 40), (AArch64, 71), (RiscV64, 71)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

sendmmsgSyscall :: Syscall
sendmmsgSyscall =
    Syscall
        { name = "sendmmsg"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 307), (AArch64, 269), (RiscV64, 269)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

sendmsgSyscall :: Syscall
sendmsgSyscall =
    Syscall
        { name = "sendmsg"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 46), (AArch64, 211), (RiscV64, 211)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

sendtoSyscall :: Syscall
sendtoSyscall =
    Syscall
        { name = "sendto"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 44), (AArch64, 206), (RiscV64, 206)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setMempolicySyscall :: Syscall
setMempolicySyscall =
    Syscall
        { name = "set_mempolicy"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 238), (AArch64, 237), (RiscV64, 237)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setMempolicyHomeNodeSyscall :: Syscall
setMempolicyHomeNodeSyscall =
    Syscall
        { name = "set_mempolicy_home_node"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 450), (AArch64, 450), (RiscV64, 450)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setRobustListSyscall :: Syscall
setRobustListSyscall =
    Syscall
        { name = "set_robust_list"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 273), (AArch64, 99), (RiscV64, 99)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setThreadAreaSyscall :: Syscall
setThreadAreaSyscall =
    Syscall
        { name = "set_thread_area"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 205)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setTidAddressSyscall :: Syscall
setTidAddressSyscall =
    Syscall
        { name = "set_tid_address"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 218), (AArch64, 96), (RiscV64, 96)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setdomainnameSyscall :: Syscall
setdomainnameSyscall =
    Syscall
        { name = "setdomainname"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 171), (AArch64, 162), (RiscV64, 162)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setfsgidSyscall :: Syscall
setfsgidSyscall =
    Syscall
        { name = "setfsgid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 123), (AArch64, 152), (RiscV64, 152)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setfsuidSyscall :: Syscall
setfsuidSyscall =
    Syscall
        { name = "setfsuid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 122), (AArch64, 151), (RiscV64, 151)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setgidSyscall :: Syscall
setgidSyscall =
    Syscall
        { name = "setgid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 106), (AArch64, 144), (RiscV64, 144)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setgroupsSyscall :: Syscall
setgroupsSyscall =
    Syscall
        { name = "setgroups"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 116), (AArch64, 159), (RiscV64, 159)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

sethostnameSyscall :: Syscall
sethostnameSyscall =
    Syscall
        { name = "sethostname"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 170), (AArch64, 161), (RiscV64, 161)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setitimerSyscall :: Syscall
setitimerSyscall =
    Syscall
        { name = "setitimer"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 38), (AArch64, 103), (RiscV64, 103)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setnsSyscall :: Syscall
setnsSyscall =
    Syscall
        { name = "setns"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 308), (AArch64, 268), (RiscV64, 268)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setpgidSyscall :: Syscall
setpgidSyscall =
    Syscall
        { name = "setpgid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 109), (AArch64, 154), (RiscV64, 154)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setprioritySyscall :: Syscall
setprioritySyscall =
    Syscall
        { name = "setpriority"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 141), (AArch64, 140), (RiscV64, 140)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setregidSyscall :: Syscall
setregidSyscall =
    Syscall
        { name = "setregid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 114), (AArch64, 143), (RiscV64, 143)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setresgidSyscall :: Syscall
setresgidSyscall =
    Syscall
        { name = "setresgid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 119), (AArch64, 149), (RiscV64, 149)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setresuidSyscall :: Syscall
setresuidSyscall =
    Syscall
        { name = "setresuid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 117), (AArch64, 147), (RiscV64, 147)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setreuidSyscall :: Syscall
setreuidSyscall =
    Syscall
        { name = "setreuid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 113), (AArch64, 145), (RiscV64, 145)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setrlimitSyscall :: Syscall
setrlimitSyscall =
    Syscall
        { name = "setrlimit"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 160)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setsidSyscall :: Syscall
setsidSyscall =
    Syscall
        { name = "setsid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 112), (AArch64, 157), (RiscV64, 157)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setsockoptSyscall :: Syscall
setsockoptSyscall =
    Syscall
        { name = "setsockopt"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 54), (AArch64, 208), (RiscV64, 208)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

settimeofdaySyscall :: Syscall
settimeofdaySyscall =
    Syscall
        { name = "settimeofday"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 164), (AArch64, 170), (RiscV64, 170)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setuidSyscall :: Syscall
setuidSyscall =
    Syscall
        { name = "setuid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 105), (AArch64, 146), (RiscV64, 146)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setxattrSyscall :: Syscall
setxattrSyscall =
    Syscall
        { name = "setxattr"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 188), (AArch64, 5), (RiscV64, 5)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

setxattratSyscall :: Syscall
setxattratSyscall =
    Syscall
        { name = "setxattrat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 463), (AArch64, 463), (RiscV64, 463)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

shmatSyscall :: Syscall
shmatSyscall =
    Syscall
        { name = "shmat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 30), (AArch64, 196), (RiscV64, 196)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

shmctlSyscall :: Syscall
shmctlSyscall =
    Syscall
        { name = "shmctl"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 31), (AArch64, 195), (RiscV64, 195)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

shmdtSyscall :: Syscall
shmdtSyscall =
    Syscall
        { name = "shmdt"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 67), (AArch64, 197), (RiscV64, 197)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

shmgetSyscall :: Syscall
shmgetSyscall =
    Syscall
        { name = "shmget"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 29), (AArch64, 194), (RiscV64, 194)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

shutdownSyscall :: Syscall
shutdownSyscall =
    Syscall
        { name = "shutdown"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 48), (AArch64, 210), (RiscV64, 210)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

sigaltstackSyscall :: Syscall
sigaltstackSyscall =
    Syscall
        { name = "sigaltstack"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 131), (AArch64, 132), (RiscV64, 132)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

signalfdSyscall :: Syscall
signalfdSyscall =
    Syscall
        { name = "signalfd"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 282)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

signalfd4Syscall :: Syscall
signalfd4Syscall =
    Syscall
        { name = "signalfd4"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 289), (AArch64, 74), (RiscV64, 74)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

socketSyscall :: Syscall
socketSyscall =
    Syscall
        { name = "socket"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 41), (AArch64, 198), (RiscV64, 198)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

socketpairSyscall :: Syscall
socketpairSyscall =
    Syscall
        { name = "socketpair"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 53), (AArch64, 199), (RiscV64, 199)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

spliceSyscall :: Syscall
spliceSyscall =
    Syscall
        { name = "splice"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 275), (AArch64, 76), (RiscV64, 76)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

statSyscall :: Syscall
statSyscall =
    Syscall
        { name = "stat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 4)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

statfsSyscall :: Syscall
statfsSyscall =
    Syscall
        { name = "statfs"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 137), (AArch64, 43), (RiscV64, 43)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

statmountSyscall :: Syscall
statmountSyscall =
    Syscall
        { name = "statmount"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 457), (AArch64, 457), (RiscV64, 457)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

statxSyscall :: Syscall
statxSyscall =
    Syscall
        { name = "statx"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 332), (AArch64, 291), (RiscV64, 291)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

swapoffSyscall :: Syscall
swapoffSyscall =
    Syscall
        { name = "swapoff"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 168), (AArch64, 225), (RiscV64, 225)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

swaponSyscall :: Syscall
swaponSyscall =
    Syscall
        { name = "swapon"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 167), (AArch64, 224), (RiscV64, 224)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

symlinkSyscall :: Syscall
symlinkSyscall =
    Syscall
        { name = "symlink"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 88)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

symlinkatSyscall :: Syscall
symlinkatSyscall =
    Syscall
        { name = "symlinkat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 266), (AArch64, 36), (RiscV64, 36)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

syncSyscall :: Syscall
syncSyscall =
    Syscall
        { name = "sync"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 162), (AArch64, 81), (RiscV64, 81)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

syncFileRangeSyscall :: Syscall
syncFileRangeSyscall =
    Syscall
        { name = "sync_file_range"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 277), (AArch64, 84), (RiscV64, 84)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

syncfsSyscall :: Syscall
syncfsSyscall =
    Syscall
        { name = "syncfs"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 306), (AArch64, 267), (RiscV64, 267)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

sysfsSyscall :: Syscall
sysfsSyscall =
    Syscall
        { name = "sysfs"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 139)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

sysinfoSyscall :: Syscall
sysinfoSyscall =
    Syscall
        { name = "sysinfo"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 99), (AArch64, 179), (RiscV64, 179)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

syslogSyscall :: Syscall
syslogSyscall =
    Syscall
        { name = "syslog"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 103), (AArch64, 116), (RiscV64, 116)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

teeSyscall :: Syscall
teeSyscall =
    Syscall
        { name = "tee"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 276), (AArch64, 77), (RiscV64, 77)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

tgkillSyscall :: Syscall
tgkillSyscall =
    Syscall
        { name = "tgkill"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 234), (AArch64, 131), (RiscV64, 131)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

timeSyscall :: Syscall
timeSyscall =
    Syscall
        { name = "time"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 201)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

timerCreateSyscall :: Syscall
timerCreateSyscall =
    Syscall
        { name = "timer_create"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 222), (AArch64, 107), (RiscV64, 107)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

timerDeleteSyscall :: Syscall
timerDeleteSyscall =
    Syscall
        { name = "timer_delete"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 226), (AArch64, 111), (RiscV64, 111)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

timerGetoverrunSyscall :: Syscall
timerGetoverrunSyscall =
    Syscall
        { name = "timer_getoverrun"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 225), (AArch64, 109), (RiscV64, 109)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

timerGettimeSyscall :: Syscall
timerGettimeSyscall =
    Syscall
        { name = "timer_gettime"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 224), (AArch64, 108), (RiscV64, 108)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

timerSettimeSyscall :: Syscall
timerSettimeSyscall =
    Syscall
        { name = "timer_settime"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 223), (AArch64, 110), (RiscV64, 110)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

timerfdCreateSyscall :: Syscall
timerfdCreateSyscall =
    Syscall
        { name = "timerfd_create"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 283), (AArch64, 85), (RiscV64, 85)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

timerfdGettimeSyscall :: Syscall
timerfdGettimeSyscall =
    Syscall
        { name = "timerfd_gettime"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 287), (AArch64, 87), (RiscV64, 87)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

timerfdSettimeSyscall :: Syscall
timerfdSettimeSyscall =
    Syscall
        { name = "timerfd_settime"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 286), (AArch64, 86), (RiscV64, 86)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

timesSyscall :: Syscall
timesSyscall =
    Syscall
        { name = "times"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 100), (AArch64, 153), (RiscV64, 153)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

tkillSyscall :: Syscall
tkillSyscall =
    Syscall
        { name = "tkill"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 200), (AArch64, 130), (RiscV64, 130)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

truncateSyscall :: Syscall
truncateSyscall =
    Syscall
        { name = "truncate"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 76), (AArch64, 45), (RiscV64, 45)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

tuxcallSyscall :: Syscall
tuxcallSyscall =
    Syscall
        { name = "tuxcall"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 184)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

umaskSyscall :: Syscall
umaskSyscall =
    Syscall
        { name = "umask"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 95), (AArch64, 166), (RiscV64, 166)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

umount2Syscall :: Syscall
umount2Syscall =
    Syscall
        { name = "umount2"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 166), (AArch64, 39), (RiscV64, 39)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

unameSyscall :: Syscall
unameSyscall =
    Syscall
        { name = "uname"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 63), (AArch64, 160), (RiscV64, 160)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

unlinkSyscall :: Syscall
unlinkSyscall =
    Syscall
        { name = "unlink"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 87)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

unlinkatSyscall :: Syscall
unlinkatSyscall =
    Syscall
        { name = "unlinkat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 263), (AArch64, 35), (RiscV64, 35)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

unshareSyscall :: Syscall
unshareSyscall =
    Syscall
        { name = "unshare"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 272), (AArch64, 97), (RiscV64, 97)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

uprobeSyscall :: Syscall
uprobeSyscall =
    Syscall
        { name = "uprobe"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 336)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

uretprobeSyscall :: Syscall
uretprobeSyscall =
    Syscall
        { name = "uretprobe"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 335)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

uselibSyscall :: Syscall
uselibSyscall =
    Syscall
        { name = "uselib"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 134)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

userfaultfdSyscall :: Syscall
userfaultfdSyscall =
    Syscall
        { name = "userfaultfd"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 323), (AArch64, 282), (RiscV64, 282)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

ustatSyscall :: Syscall
ustatSyscall =
    Syscall
        { name = "ustat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 136)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

utimeSyscall :: Syscall
utimeSyscall =
    Syscall
        { name = "utime"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 132)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

utimensatSyscall :: Syscall
utimensatSyscall =
    Syscall
        { name = "utimensat"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 280), (AArch64, 88), (RiscV64, 88)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

utimesSyscall :: Syscall
utimesSyscall =
    Syscall
        { name = "utimes"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 235)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

vforkSyscall :: Syscall
vforkSyscall =
    Syscall
        { name = "vfork"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 58)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

vhangupSyscall :: Syscall
vhangupSyscall =
    Syscall
        { name = "vhangup"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 153), (AArch64, 58), (RiscV64, 58)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

vmspliceSyscall :: Syscall
vmspliceSyscall =
    Syscall
        { name = "vmsplice"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 278), (AArch64, 75), (RiscV64, 75)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

vserverSyscall :: Syscall
vserverSyscall =
    Syscall
        { name = "vserver"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 236)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

wait4Syscall :: Syscall
wait4Syscall =
    Syscall
        { name = "wait4"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 61), (AArch64, 260), (RiscV64, 260)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

waitidSyscall :: Syscall
waitidSyscall =
    Syscall
        { name = "waitid"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 247), (AArch64, 95), (RiscV64, 95)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

writeSyscall :: Syscall
writeSyscall =
    Syscall
        { name = "write"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 1), (AArch64, 64), (RiscV64, 64)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

writevSyscall :: Syscall
writevSyscall =
    Syscall
        { name = "writev"
        , subsystem = "unknown"
        , numbers = Map.fromList [(X86_64, 20), (AArch64, 66), (RiscV64, 66)]
        , args = []
        , returns = TypePrim Opaque
        , errorConvention = NeverReturns
        }

