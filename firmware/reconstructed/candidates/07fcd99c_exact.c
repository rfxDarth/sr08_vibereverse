#include <stdint.h>

extern void FUN_07fcd4f8(uint32_t);

/* Applies the pending-record operation to each item while the subsystem is active. */
__attribute__((used, naked, section(".text.FUN_07fcd99c")))
uint32_t FUN_07fcd99c(const uint32_t *items, uint32_t count)
{
    __asm__ volatile (
        "push {r4, r5, r6, lr}\n"
        "mov r6, r0\n"
        "ldr r0, [pc, #32]\n" /* state pointer at 0x07fcd9c4 */
        "movs r4, #0\n"
        "ldr r0, [r0, #4]\n"
        "mov r5, r1\n"
        "cmp r0, #0\n"
        "beq 2f\n"
        "b 1f\n"
        "3: lsls r0, r4, #2\n"
        "ldr r0, [r6, r0]\n"
        "bl FUN_07fcd4f8\n"
        "adds r4, r4, #1\n"
        "uxtb r4, r4\n"
        "1: cmp r4, r5\n"
        "bcc 3b\n"
        "movs r0, #1\n"
        "2: pop {r4, r5, r6, pc}\n");
}
