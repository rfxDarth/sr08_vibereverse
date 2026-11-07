#include <stdint.h>

extern void thunk_FUN_07fc98d4(void);

/* Calls each registered startup callback, then transfers to the ROM thunk. */
__attribute__((used, naked, section(".text.FUN_07fc1904")))
void FUN_07fc1904(void)
{
    __asm__ volatile (
        "ldr r4, [pc, #24]\n"
        "movs r5, #1\n"
        "ldr r6, [pc, #24]\n"
        "b 2f\n"
        "1: ldr r3, [r4, #12]\n"
        "ldmia r4!, {r0, r1, r2}\n"
        "orrs r3, r5\n"
        "subs r4, #12\n"
        "blx r3\n"
        "adds r4, #16\n"
        "2: cmp r4, r6\n"
        "bcc 1b\n"
        "bl thunk_FUN_07fc98d4\n"
        ".word 0x07fd0340\n"
        ".word 0x07fd0360\n");
}
