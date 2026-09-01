//! # System Calls on `x86_64`
//!
//! The `syscall` instruction is used to invoke a system call on `x86_64`. A
//! system call can be thought of as a function that is executed by the kernel.
//! The arguments of the system call are put in CPU registers. The kernel uses
//! the values in these registers to execute the system call. Some system calls
//! may also return values. The return value is also put in a register, which
//! the program can read in user land.
//!
//! ## Register usage
//!
//! On `x86_64`, the following registers are used for system call arguments and
//! return values:
//!
//! - `rax` - system call number on entry, return value on exit
//! - `rdi` - argument 0
//! - `rsi` - argument 1
//! - `rdx` - argument 2
//! - `r10` - argument 3
//! - `r8` - argument 4
//! - `r9` - argument 5
//!
//! The `syscall` instruction itself uses two special registers:
//!
//! - `rcx` - on entry, the CPU saves user instruction pointer (`rip + 1`, the
//!   address immediately after the `syscall` instruction) into `rcx`.
//! - `r11` - on entry, the CPU clears `rflags.RF`, then saves saves `rlfags` to
//!   `r11`. The `preserves_flags` option used in the `asm!` macro only requires
//!   the status flags to be preserved. So, clearing `rflags.RF` is fine.
//!
//! Every `syscall` instruction clobbers these two registers, so we must tell
//! the compiler not to assume they are preserved.
//!
//! ## Return path
//!
//! After the kernel handles the system call, it executes `sysret` to return to
//! user land. The `sysret` instruction restores:
//!
//! - `rip <- rcx` (the saved return address)
//! - `rflags <- r11` (the saved flags)
//!
//! This ensures that the user land program continues executing with the same
//! flags it had before, regardless of any modifications the kernel might have
//! done during the system call execution.
//!
//! ## References
//!
//! - [`arch/x86/entry/entry_64.S`](https://github.com/torvalds/linux/blob/master/arch/x86/entry/entry_64.S)
//! - [Linux Kernel - Syscalls](https://blog.slowerzs.net/posts/linux-kernel-syscalls/)
//! - [The Rust Reference - Inline Assembly](https://doc.rust-lang.org/reference/inline-assembly.html)

use core::arch::asm;

#[inline]
pub unsafe fn syscall0(number: usize) -> usize
{
    let ret: usize;
    unsafe {
        asm!(
            "syscall",
            inlateout("rax") number => ret,
            lateout("rcx") _,
            lateout("r11") _,
            options(nostack, preserves_flags),
        );
    }
    ret
}

#[inline]
pub unsafe fn syscall1(number: usize, arg0: usize) -> usize
{
    let ret: usize;
    unsafe {
        asm!(
            "syscall",
            inlateout("rax") number => ret,
            in("rdi") arg0,
            lateout("rcx") _,
            lateout("r11") _,
            options(nostack, preserves_flags),
        );
    }
    ret
}

#[inline]
pub unsafe fn syscall2(number: usize, arg0: usize, arg1: usize) -> usize
{
    let ret: usize;
    unsafe {
        asm!(
            "syscall",
            inlateout("rax") number => ret,
            in("rdi") arg0,
            in("rsi") arg1,
            lateout("rcx") _,
            lateout("r11") _,
            options(nostack, preserves_flags),
        );
    }
    ret
}

#[inline]
pub unsafe fn syscall3(number: usize, arg0: usize, arg1: usize, arg2: usize) -> usize
{
    let ret: usize;
    unsafe {
        asm!(
            "syscall",
            inlateout("rax") number => ret,
            in("rdi") arg0,
            in("rsi") arg1,
            in("rdx") arg2,
            lateout("rcx") _,
            lateout("r11") _,
            options(nostack, preserves_flags),
        );
    }
    ret
}

#[inline]
pub unsafe fn syscall4(number: usize, arg0: usize, arg1: usize, arg2: usize, arg3: usize) -> usize
{
    let ret: usize;
    unsafe {
        asm!(
            "syscall",
            inlateout("rax") number => ret,
            in("rdi") arg0,
            in("rsi") arg1,
            in("rdx") arg2,
            in("r10") arg3,
            lateout("rcx") _,
            lateout("r11") _,
            options(nostack, preserves_flags),
        );
    }
    ret
}

#[inline]
pub unsafe fn syscall5(
    number: usize,
    arg0: usize,
    arg1: usize,
    arg2: usize,
    arg3: usize,
    arg4: usize,
) -> usize
{
    let ret: usize;
    unsafe {
        asm!(
            "syscall",
            inlateout("rax") number => ret,
            in("rdi") arg0,
            in("rsi") arg1,
            in("rdx") arg2,
            in("r10") arg3,
            in("r8") arg4,
            lateout("rcx") _,
            lateout("r11") _,
            options(nostack, preserves_flags),
        );
    }
    ret
}

#[inline]
pub unsafe fn syscall6(
    number: usize,
    arg0: usize,
    arg1: usize,
    arg2: usize,
    arg3: usize,
    arg4: usize,
    arg5: usize,
) -> usize
{
    let ret: usize;
    unsafe {
        asm!(
            "syscall",
            inlateout("rax") number => ret,
            in("rdi") arg0,
            in("rsi") arg1,
            in("rdx") arg2,
            in("r10") arg3,
            in("r8") arg4,
            in("r9") arg5,
            lateout("rcx") _,
            lateout("r11") _,
            options(nostack, preserves_flags),
        );
    }
    ret
}
