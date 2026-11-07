#include <stdint.h>

/* Looks up a byte identifier in the 32-entry sensor record table. */
__attribute__((used, naked, section(".text.FUN_07fcb0a8")))
uint32_t FUN_07fcb0a8(uint32_t value)
{
    __asm__ volatile (
        "push {r4, r5, r7, lr}\n"
        "ldr r1, [pc, #188]\n" /* records at 0x07fcb168 */
        "adds r1, #20\n"
        "uxtb r3, r0\n"
        "movs r4, #33\n"
        "1:"
        "movs r2, #255\n"
        "subs r4, r4, #1\n"
        "beq 2f\n"
        "ldrh r5, [r1, #0]\n"
        "adds r1, #24\n"
        "cmp r5, r3\n"
        "bne 1b\n"
        "subs r1, #22\n"
        "ldrh r1, [r1, #0]\n"
        "b 3f\n"
        "2: mov r1, r2\n"
        "3: bics r0, r2\n"
        "orrs r0, r1\n"
        "pop {r4, r5, r7, pc}\n");
}
