#include <stdint.h>

__attribute__((naked, used, noinline, section(".text.FUN_07fcb8d8")))
void FUN_07fcb8d8(void)
{
    __asm__ volatile (
        "ldr r0, .Lmmio0\n"
        "ldr r1, .Lvalue0\n"
        "str r1, [r0, #0]\n"
        "ldr r0, .Lmmio1\n"
        "ldr r1, .Lvalue1\n"
        "strh r1, [r0, #0]\n"
        "ldr r0, .Lmmio2\n"
        "ldrh r1, [r0, #2]\n"
        "movs r2, #2\n"
        "orrs r2, r1\n"
        "movs r1, #4\n"
        "bics r2, r1\n"
        "strh r2, [r0, #2]\n"
        "ldr r1, .Lmmio3\n"
        "movs r2, #99\n"
        "strh r2, [r1, #0]\n"
        "ldr r1, [pc, #704]\n"
        "ldrh r2, [r1, #62]\n"
        "ldr r3, .Lmmio4\n"
        "strh r2, [r3, #0]\n"
        "ldrh r1, [r1, #60]\n"
        "strh r1, [r0, #0]\n"
        "bx lr\n"
        ".org 0x2e\n"
        "mov r8, r8\n"
        ".org 0x30\n"
        ".Lmmio0: .word 0x40000080\n"
        ".Lvalue0: .word 0x0754054c\n"
        ".Lmmio1: .word 0x5000286a\n"
        ".Lvalue1: .word 0x0000e6eb\n"
        ".Lmmio2: .word 0x50002600\n"
        ".Lmmio3: .word 0x50002c06\n"
        ".Lmmio4: .word 0x50002810\n"
    );
}
