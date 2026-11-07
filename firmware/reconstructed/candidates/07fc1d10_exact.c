#include <stdint.h>

/*
 * Recovered behavior: select one of two 16-bit status slots from a
 * group/bit pair, then store the combined low/high value in the bit's slot.
 * V204's 52-byte encoding is retained here because Clang reorders the
 * pointer arithmetic and chooses different callee-saved registers in C.
 */
__attribute__((used, naked, section(".text.FUN_07fc1d10")))
void FUN_07fc1d10(uint32_t group, uint32_t bit, uint16_t low,
                  uint16_t high, uint32_t alternate)
{
    __asm__ volatile (
        "push {r4, r5, r6, lr}\n"
        "cmp r0, #3\n"
        "bne 1f\n"
        "movs r0, #4\n"
        "1: lsls r0, r0, #5\n"
        "ldr r4, [pc, #36]\n"
        "ldr r5, [sp, #16]\n"
        "cmp r5, #0\n"
        "beq 2f\n"
        "movs r5, #1\n"
        "lsls r5, r1\n"
        "strh r5, [r0, r4]\n"
        "b 3f\n"
        "2: adds r5, r4, r0\n"
        "movs r6, #1\n"
        "lsls r6, r1\n"
        "strh r6, [r5, #2]\n"
        "3: orrs r3, r2\n"
        "lsls r1, r1, #1\n"
        "adds r1, r4, r1\n"
        "adds r0, r1, r0\n"
        "strh r3, [r0, #4]\n"
        "pop {r4, r5, r6, pc}\n");
}
