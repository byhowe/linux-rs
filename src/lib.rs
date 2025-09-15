#![no_std]
#![allow(non_camel_case_types)]

use bitflags::bitflags;

use crate::x86_64::syscall4;

pub mod x86_64;

pub type mode_t = usize;

#[repr(usize)]
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Sys
{
    Openat = 257,
}

bitflags! {
    #[derive(Debug, Clone, Copy, PartialEq, Eq)]
    pub struct O: u32 {
        const RDONLY    = 0;
        const WRONLY    = 1 << 0;
        const RDWR      = 1 << 1;
        const CREAT     = 1 << 6;
        const EXCL      = 1 << 7;
        const NOCTTY    = 1 << 8;
        const TRUNC     = 1 << 9;
        const APPEND    = 1 << 10;
        const NONBLOCK  = 1 << 11;
        const DSYNC     = 1 << 12;
        const ASYNC     = 1 << 13;
        const DIRECT    = 1 << 14;
        const DIRECTORY = 1 << 16;
        const NOFOLLOW  = 1 << 17;
        const NOATIME   = 1 << 18;
        const CLOEXEC   = 1 << 19;
        const SYNC      = 1 << 20;
        const PATH      = 1 << 21;
        const TMPFILE   = 1 << 22;
    }
}

#[inline]
pub unsafe fn openat(dirfd: i32, path: *const u8, flags: O, mode: mode_t) -> usize
{
    unsafe {
        syscall4(
            Sys::Openat as usize,
            dirfd as isize as usize,
            path as usize,
            flags.bits() as usize,
            mode as usize,
        )
    }
}
