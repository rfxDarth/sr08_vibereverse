/* Poll the output-state table and return whether its count has advanced. */
#include <stdint.h>

extern int FUN_07fcbafc(void);

__attribute__((naked, used, section(".text.FUN_07fcbb10")))
int FUN_07fcbb10(void)
{
    __asm__ volatile (
        "push {r4, r5, r7, lr}\n\t"
        "movs r5, #0\n\t"
        "ldr r4, [pc, #28]\n"
        ".Lloop_bb10:\n\t"
        "adds r1, r4, #1\n\t"
        "cmp r1, r5\n\t"
        "beq .Ldone_bb10\n\t"
        ".inst.n 0x1c6d\n\t"
        "bl FUN_07fcbafc\n\t"
        "lsls r0, r0, #31\n\t"
        "bne .Lloop_bb10\n\t"
        ".inst.n 0x1e69\n"
        ".Ldone_bb10:\n\t"
        "movs r0, #0\n\t"
        "cmp r1, r4\n\t"
        "bls .Lreturn_bb10\n\t"
        "mvns r0, r0\n"
        ".Lreturn_bb10:\n\t"
        "pop {r4, r5, r7, pc}");
}
