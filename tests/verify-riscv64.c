#include <stdint.h>
#include <asm/unistd.h>
#include <linux/mman.h>

_Static_assert(PROT_READ == (1u << 0), "PROT_READ mismatch on riscv64");
_Static_assert(PROT_WRITE == (1u << 1), "PROT_WRITE mismatch on riscv64");
_Static_assert(PROT_EXEC == (1u << 2), "PROT_EXEC mismatch on riscv64");
_Static_assert(PROT_SEM == (1u << 3), "PROT_SEM mismatch on riscv64");
_Static_assert(PROT_GROWSDOWN == (1u << 24), "PROT_GROWSDOWN mismatch on riscv64");
_Static_assert(PROT_GROWSUP == (1u << 25), "PROT_GROWSUP mismatch on riscv64");
_Static_assert(MAP_SHARED == (1u << 0), "MAP_SHARED mismatch on riscv64");
_Static_assert(MAP_PRIVATE == (2u << 0), "MAP_PRIVATE mismatch on riscv64");
_Static_assert(MAP_SHARED_VALIDATE == (3u << 0), "MAP_SHARED_VALIDATE mismatch on riscv64");
_Static_assert(MAP_DROPPABLE == (8u << 0), "MAP_DROPPABLE mismatch on riscv64");
_Static_assert(MAP_FIXED == (1u << 4), "MAP_FIXED mismatch on riscv64");
_Static_assert(MAP_ANONYMOUS == (1u << 5), "MAP_ANONYMOUS mismatch on riscv64");
_Static_assert(MAP_GROWSDOWN == (1u << 8), "MAP_GROWSDOWN mismatch on riscv64");
_Static_assert(MAP_DENYWRITE == (1u << 11), "MAP_DENYWRITE mismatch on riscv64");
_Static_assert(MAP_EXECUTABLE == (1u << 12), "MAP_EXECUTABLE mismatch on riscv64");
_Static_assert(MAP_LOCKED == (1u << 13), "MAP_LOCKED mismatch on riscv64");
_Static_assert(MAP_NORESERVE == (1u << 14), "MAP_NORESERVE mismatch on riscv64");
_Static_assert(MAP_POPULATE == (1u << 15), "MAP_POPULATE mismatch on riscv64");
_Static_assert(MAP_NONBLOCK == (1u << 16), "MAP_NONBLOCK mismatch on riscv64");
_Static_assert(MAP_STACK == (1u << 17), "MAP_STACK mismatch on riscv64");
_Static_assert(MAP_HUGETLB == (1u << 18), "MAP_HUGETLB mismatch on riscv64");
_Static_assert(MAP_SYNC == (1u << 19), "MAP_SYNC mismatch on riscv64");
_Static_assert(MAP_FIXED_NOREPLACE == (1u << 20), "MAP_FIXED_NOREPLACE mismatch on riscv64");
_Static_assert(MAP_HUGE_16KB == (14u << 26), "MAP_HUGE_16KB mismatch on riscv64");
_Static_assert(MAP_HUGE_64KB == (16u << 26), "MAP_HUGE_64KB mismatch on riscv64");
_Static_assert(MAP_HUGE_512KB == (19u << 26), "MAP_HUGE_512KB mismatch on riscv64");
_Static_assert(MAP_HUGE_1MB == (20u << 26), "MAP_HUGE_1MB mismatch on riscv64");
_Static_assert(MAP_HUGE_2MB == (21u << 26), "MAP_HUGE_2MB mismatch on riscv64");
_Static_assert(MAP_HUGE_8MB == (23u << 26), "MAP_HUGE_8MB mismatch on riscv64");
_Static_assert(MAP_HUGE_16MB == (24u << 26), "MAP_HUGE_16MB mismatch on riscv64");
_Static_assert(MAP_HUGE_32MB == (25u << 26), "MAP_HUGE_32MB mismatch on riscv64");
_Static_assert(MAP_HUGE_256MB == (28u << 26), "MAP_HUGE_256MB mismatch on riscv64");
_Static_assert(MAP_HUGE_512MB == (29u << 26), "MAP_HUGE_512MB mismatch on riscv64");
_Static_assert(MAP_HUGE_1GB == (30u << 26), "MAP_HUGE_1GB mismatch on riscv64");
_Static_assert(MAP_HUGE_2GB == (31u << 26), "MAP_HUGE_2GB mismatch on riscv64");
_Static_assert(MAP_HUGE_16GB == (34u << 26), "MAP_HUGE_16GB mismatch on riscv64");
_Static_assert(MAP_UNINITIALIZED == (1u << 26), "MAP_UNINITIALIZED mismatch on riscv64");
_Static_assert(__NR_mmap == 222, "__NR_mmap mismatch on riscv64");
_Static_assert(__NR_munmap == 215, "__NR_munmap mismatch on riscv64");
_Static_assert(__NR_exit == 93, "__NR_exit mismatch on riscv64");

int main(void) {
    return 0;
}
