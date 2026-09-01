use core::arch::asm;

#[inline(always)]
pub unsafe fn syscall0(number: usize) -> usize {
    let ret: usize;
    unsafe {
        asm!(
            "svc #0",
            in("x8") number,
            lateout("x0") ret,
            options(nostack, preserves_flags)
        );
    }
    ret
}

#[inline(always)]
pub unsafe fn syscall1(number: usize, arg1: usize) -> usize {
    let ret: usize;
    unsafe {
        asm!(
            "svc #0",
            in("x8") number,
            inlateout("x0") arg1 => ret,
            options(nostack, preserves_flags)
        );
    }
    ret
}

#[inline(always)]
pub unsafe fn syscall2(number: usize, arg1: usize, arg2: usize) -> usize {
    let ret: usize;
    unsafe {
        asm!(
            "svc #0",
            in("x8") number,
            inlateout("x0") arg1 => ret,
            in("x1") arg2,
            options(nostack, preserves_flags)
        );
    }
    ret
}

#[inline(always)]
pub unsafe fn syscall3(number: usize, arg1: usize, arg2: usize, arg3: usize) -> usize {
    let ret: usize;
    unsafe {
        asm!(
            "svc #0",
            in("x8") number,
            inlateout("x0") arg1 => ret,
            in("x1") arg2,
            in("x2") arg3,
            options(nostack, preserves_flags)
        );
    }
    ret
}

#[inline(always)]
pub unsafe fn syscall4(number: usize, arg1: usize, arg2: usize, arg3: usize, arg4: usize) -> usize {
    let ret: usize;
    unsafe {
        asm!(
            "svc #0",
            in("x8") number,
            inlateout("x0") arg1 => ret,
            in("x1") arg2,
            in("x2") arg3,
            in("x3") arg4,
            options(nostack, preserves_flags)
        );
    }
    ret
}

#[inline(always)]
pub unsafe fn syscall5(number: usize, arg1: usize, arg2: usize, arg3: usize, arg4: usize, arg5: usize) -> usize {
    let ret: usize;
    unsafe {
        asm!(
            "svc #0",
            in("x8") number,
            inlateout("x0") arg1 => ret,
            in("x1") arg2,
            in("x2") arg3,
            in("x3") arg4,
            in("x4") arg5,
            options(nostack, preserves_flags)
        );
    }
    ret
}

#[inline(always)]
pub unsafe fn syscall6(
    number: usize,
    arg1: usize,
    arg2: usize,
    arg3: usize,
    arg4: usize,
    arg5: usize,
    arg6: usize,
) -> usize {
    let ret: usize;
    unsafe {
        asm!(
            "svc #0",
            in("x8") number,
            inlateout("x0") arg1 => ret,
            in("x1") arg2,
            in("x2") arg3,
            in("x3") arg4,
            in("x4") arg5,
            in("x5") arg6,
            options(nostack, preserves_flags)
        );
    }
    ret
}
