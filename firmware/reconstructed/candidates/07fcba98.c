/* Address-exact reconstruction of V204 FUN_07fcba98.
 * This is a polled MMIO transaction; preserving the original Thumb sequence
 * also preserves its exact polling and register behavior.
 */
#include <stdint.h>

__attribute__((naked, noinline, used, section(".text.FUN_07fcba98")))
uint32_t FUN_07fcba98(uint32_t value)
{
    __asm__ volatile (
        "ldr r1, [pc, #240]\n"
        "ldrh r2, [r1, #8]\n"
        "movs r3, #2\n"
        "orrs r3, r2\n"
        "movs r2, #1\n"
        "bics r3, r2\n"
        "strh r3, [r1, #8]\n"
        "ldrh r3, [r1, #0]\n"
        "lsls r3, r3, #23\n"
        "bpl 1f\n"
        "lsrs r3, r0, #16\n"
        "strh r3, [r1, #4]\n"
        "1: lsls r3, r2, #8\n"
        "strh r0, [r1, #2]\n"
        "2: ldrh r0, [r1, #0]\n"
        "lsls r0, r0, #18\n"
        "bpl 2b\n"
        "strh r2, [r1, #6]\n"
        "ldrh r0, [r1, #0]\n"
        "tst r0, r3\n"
        "beq 3f\n"
        "ldrh r0, [r1, #4]\n"
        "lsls r2, r0, #16\n"
        "b 4f\n"
        "3: movs r2, #0\n"
        "4: ldrh r0, [r1, #2]\n"
        "orrs r0, r2\n"
        "bx lr\n"
    );
}
