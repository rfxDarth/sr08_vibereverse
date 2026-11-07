#include <stdint.h>

/* Looks up the display code paired with a byte-sized mode identifier. */
__attribute__((used, naked, section(".text.FUN_07fc7358")))
uint8_t FUN_07fc7358(uint32_t mode)
{
    __asm__ volatile (
        "push {r4, lr}\n"
        "movs r1, #19\n"
        "mvns r1, r1\n"
        "ldr r2, [pc, #28]\n" /* lookup table at 0x07fc737c */
        "1: cmp r1, #0\n"
        "beq 2f\n"
        "adds r3, r2, r1\n"
        "movs r4, #122\n"
        "ldrb r3, [r3, r4]\n"
        "adds r1, r1, #2\n"
        "cmp r3, r0\n"
        "bne 1b\n"
        "adds r0, r2, r1\n"
        "movs r1, #121\n"
        "ldrb r0, [r0, r1]\n"
        "pop {r4, pc}\n"
        "2: movs r0, #4\n"
        "pop {r4, pc}\n");
}
