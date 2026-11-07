/* Exact Thumb reconstruction of the status-record range check. */
#include <stdint.h>

extern void FUN_07fcc3f0(uint32_t);

__attribute__((used, naked, section(".text.FUN_07fcc2f0")))
uint32_t FUN_07fcc2f0(uint32_t unused, uint8_t *record)
{
    __asm__ volatile (
        "push {r7, lr}\n"
        "ldrb r0, [r1, #2]\n"
        "cmp r0, #0\n"
        "beq 2f\n"
        "ldrh r0, [r1, #4]\n"
        "cmp r0, #0\n"
        "beq 1f\n"
        "ldr r1, [pc, #24]\n"
        "cmp r0, r1\n"
        "bcc 3f\n"
        "movs r0, #7\n"
        "b 4f\n"
        "1: movs r0, #5\n"
        "4: bl FUN_07fcc3f0\n"
        "b 2f\n"
        "3: ldr r1, [pc, #176]\n"
        "str r0, [r1, #24]\n"
        "2: movs r0, #0\n"
        "pop {r7, pc}\n"
    );
}
