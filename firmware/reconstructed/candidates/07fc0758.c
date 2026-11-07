/* Scan a variable-length byte record for marker 1 and return its payload. */
#include <stdint.h>

__attribute__((naked, used, section(".text.FUN_07fc0758")))
uint8_t FUN_07fc0758(const uint8_t *record, uint32_t limit)
{
    __asm__ volatile (
        "push {r4, lr}\n\t"
        "movs r2, #0\n\t"
        "mov r3, r2\n\t"
        "b .Lcheck_0758\n"
        ".Lbody_0758:\n\t"
        "adds r4, r0, r2\n\t"
        "ldrb r4, [r4, #1]\n\t"
        "cmp r4, #1\n\t"
        "beq .Lfound_0758\n\t"
        "ldrb r4, [r0, r2]\n\t"
        ".inst.n 0x1c52\n\t"
        ".inst.n 0x18a2\n\t"
        "uxth r2, r2\n"
        ".Lcheck_0758:\n\t"
        "cmp r2, r1\n\t"
        "bcc .Lbody_0758\n"
        ".Lreturn_0758:\n\t"
        "mov r0, r3\n\t"
        "pop {r4, pc}\n"
        ".Lfound_0758:\n\t"
        "adds r0, r0, r2\n\t"
        "ldrb r3, [r0, #2]\n\t"
        "b .Lreturn_0758");
}
