/* Bit-exact Thumb implementation of V204 FUN_07fc1b66's 64-bit shift. */
#include <stdint.h>

__attribute__((naked, used, section(".text.FUN_07fc1b66")))
uint64_t FUN_07fc1b66(uint32_t low, uint32_t high, int32_t shift)
{
    __asm__ volatile (
        "push {r4, lr}\n\t"
        "cmp r2, #32\n\t"
        "blt .Lshift_small_1b66\n\t"
        "mov r0, r1\n\t"
        "subs r2, #32\n\t"
        "lsrs r0, r2\n\t"
        "movs r1, #0\n\t"
        "pop {r4, pc}\n"
        ".Lshift_small_1b66:\n\t"
        "mov r3, r1\n\t"
        "lsrs r3, r2\n\t"
        "lsrs r0, r2\n\t"
        "movs r4, #32\n\t"
        "subs r2, r4, r2\n\t"
        "lsls r1, r2\n\t"
        "orrs r0, r1\n\t"
        "mov r1, r3\n\t"
        "pop {r4, pc}");
}
