#include <stdint.h>

/* Process two packed input bytes, update state, and optionally append status. */
__attribute__((used, naked, section(".text.FUN_07fc8ad8")))
uint16_t FUN_07fc8ad8(void)
{
    __asm__ volatile (
        "push {r2, r3, r4, r5, r6, lr}\n"
        "add r4, sp, #4\n"
        "strb r1, [r4, #1]\n"
        "strb r0, [r4, #0]\n"
        "movs r5, #2\n"
        "ldr r6, [pc, #48]\n"
        "1: bl FUN_07fc1f20\n"
        "ldrb r0, [r4, #0]\n"
        "strh r0, [r6, #0]\n"
        "adds r4, r4, #1\n"
        "subs r5, r5, #1\n"
        "lsls r0, r5, #16\n"
        "bne 1b\n"
        "bl FUN_07fc1f00\n"
        "bl FUN_07fc1f10\n"
        "ldr r4, [pc, #24]\n"
        "ldrh r0, [r4, #44]\n"
        "lsls r0, r0, #31\n"
        "beq 2f\n"
        "ldr r0, [pc, #20]\n"
        "movs r1, #234\n"
        "movs r2, #1\n"
        "bl FUN_07fc532c\n"
        "2: ldrh r0, [r4, #0]\n"
        "pop {r2, r3, r4, r5, r6, pc}\n");
}
