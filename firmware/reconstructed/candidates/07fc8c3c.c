/*
 * Check the sensor helper at interval 100 for aligned slots, then fall back
 * to interval 400. The ROM helper returns its status in r1. Its unusual
 * retry path and status-to-boolean sequence are kept in Thumb assembly to
 * preserve the V204 control-flow layout exactly.
 */
#include <stdint.h>

extern void func_0x07f1dfb8(uint32_t, uint32_t);

__attribute__((naked, used, section(".text.FUN_07fc8c3c")))
uint32_t FUN_07fc8c3c(uint32_t slot)
{
    __asm__ volatile (
        "push {r4, lr}\n\t"
        "mov r4, r0\n\t"
        "lsls r0, r0, #30\n\t"
        "beq 1f\n\t"
        "2: movs r0, #25\n\t"
        "lsls r1, r0, #4\n\t"
        "mov r0, r4\n\t"
        "bl func_0x07f1dfb8\n\t"
        "negs r0, r1\n\t"
        "adcs r0, r1\n\t"
        "pop {r4, pc}\n\t"
        "1: movs r1, #100\n\t"
        "mov r0, r4\n\t"
        "bl func_0x07f1dfb8\n\t"
        "cmp r1, #0\n\t"
        "beq 2b\n\t"
        "movs r0, #1\n\t"
        "pop {r4, pc}\n\t"
    );
}
