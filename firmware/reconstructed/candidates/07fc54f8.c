/* Translate the ROM conversion result into the two display coordinates. */
#include <stdint.h>

extern uint32_t func_0x07f1dfb8(uint32_t, uint32_t);
extern void FUN_07fc3e90(uint32_t, ...);

__attribute__((used, section(".text.FUN_07fc54f8")))
void FUN_07fc54f8(uint32_t value)
{
    register uint32_t argument __asm__("r0") = value;
    register uint32_t converted __asm__("r4");
    register uint32_t converted_r1 __asm__("r1");
    register uint32_t x __asm__("r0");
    register uint32_t y __asm__("r1");

    __asm__ volatile ("ldr r1, [pc, #336]\n\t"
                      "bl func_0x07f1dfb8\n\t"
                      "movs r1, #7\n\t"
                      "bl func_0x07f1dfb8\n\t"
                      "mov r4, r1"
                      : "+r" (argument), "=r" (converted), "=r" (converted_r1)
                      : : "r2", "r3", "lr", "cc", "memory");
    y = converted_r1;
    __asm__ volatile ("lsls r0, r1, #13\n\t"
                      "movs r1, #23\n\t"
                      "lsls r1, r1, #13\n\t"
                      "adds r0, r0, r1\n\t"
                      "movs r1, #1\n\t"
                      "lsls r1, r1, #13"
                      : "=r" (x), "+r" (y) : : "cc");
    FUN_07fc3e90(x, y);
    __asm__ volatile ("movs r0, #3\n\t"
                      "lsls r1, r0, #12\n\t"
                      "muls r4, r1\n\t"
                      "movs r0, #19\n\t"
                      "lsls r0, r0, #14\n\t"
                      "adds r0, r4, r0"
                      : "=r" (x) : "r" (converted) : "r1", "cc");
    FUN_07fc3e90(x);
}
