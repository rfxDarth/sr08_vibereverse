/* Integer-root iteration using the firmware's divide helper. */
#include <stdint.h>

extern uint32_t func_0x07f1dfb8(uint32_t, uint32_t);

__attribute__((naked, used, section(".text.FUN_07fcd0c8")))
uint32_t FUN_07fcd0c8(uint32_t input)
{
    __asm__ volatile (
        "push {r4, r5, r6, lr}\n\t"
        "mov r5, r0\n\t"
        "movs r4, r0\n\t"
        "beq .Lzero_d0c8\n"
        ".Lloop_d0c8:\n\t"
        "mov r6, r4\n\t"
        "mov r1, r6\n\t"
        "mov r0, r5\n\t"
        "bl func_0x07f1dfb8\n\t"
        "adds r0, r0, r4\n\t"
        "lsrs r4, r0, #1\n\t"
        "subs r0, r4, r6\n\t"
        ".inst.n 0x1c40\n\t"
        "cmp r0, #2\n\t"
        "bhi .Lloop_d0c8\n\t"
        "mov r0, r4\n\t"
        "pop {r4, r5, r6, pc}\n"
        ".Lzero_d0c8:\n\t"
        "movs r0, #0\n\t"
        "pop {r4, r5, r6, pc}");
}
