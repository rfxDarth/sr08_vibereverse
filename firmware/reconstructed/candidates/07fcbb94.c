/* Initialize both output-state halfwords around the shared mode helper. */
#include <stdint.h>

extern void FUN_07fcba98(void);

__attribute__((naked, used, section(".text.FUN_07fcbb94")))
void FUN_07fcbb94(void)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n\t"
        "ldr r6, [pc, #36]\n\t"
        "ldrb r1, [r6, #2]\n\t"
        "movs r4, #8\n\t"
        "movs r5, #1\n\t"
        "cmp r1, #0\n\t"
        "mov r1, r4\n\t"
        "bne .Lfirst_done_bb94\n\t"
        "mov r1, r5\n"
        ".Lfirst_done_bb94:\n\t"
        "ldr r7, [pc, #24]\n\t"
        "strh r1, [r7, #2]\n\t"
        "bl FUN_07fcba98\n\t"
        "ldrb r1, [r6, #2]\n\t"
        "cmp r1, #0\n\t"
        "bne .Lsecond_done_bb94\n\t"
        "mov r4, r5\n"
        ".Lsecond_done_bb94:\n\t"
        "strh r4, [r7, #0]\n\t"
        "pop {r3, r4, r5, r6, r7, pc}");
}
