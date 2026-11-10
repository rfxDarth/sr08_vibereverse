/*
 * Shift the low/high word pair right, preserving V204's masked shift counts.
 * A direct C translation built with the pinned Clang 18 flags emits 38 bytes
 * instead of this 34-byte slot. It also returns the two words through a
 * different register sequence, so retain the named Thumb operations to keep
 * the fixed-address image exact.
 */
#include <stdint.h>

__attribute__((naked, used, section(".text.shift_unsigned_64_right"))) uint64_t shift_unsigned_64_right(uint32_t low,
                                                                                                        uint32_t high,
                                                                                                        int32_t shift) {
    /* Inputs are low word, high word, and shift count in r0-r2. */
    __asm__ volatile("push {r4, lr}\n\t"
                     "cmp r2, #32\n\t"
                     "blt .Lshift_small_1b66\n\t"
                     /* For shifts >= 32, the result is high >> (shift - 32). */
                     "mov r0, r1\n\t"
                     "subs r2, #32\n\t"
                     "lsrs r0, r2\n\t"
                     "movs r1, #0\n\t"
                     "pop {r4, pc}\n"
                     /* For smaller shifts, combine both cross-word contributions. */
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
