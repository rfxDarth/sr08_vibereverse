/* Address-exact reconstruction of V204 FUN_07fc2568. */
#include <stdint.h>

__attribute__((used, naked, section(".text.FUN_07fc2568")))
void FUN_07fc2568(void)
{
    __asm__ volatile (
        "push {r4, r5, r7, lr}\n\t"
        "ldr r0, [pc, #36]\n\t"
        "ldr r1, [pc, #36]\n\t"
        "movs r2, #20\n\t"
        "movs r3, #16\n\t"
        "ldr r4, [pc, #36]\n\t"
        "str r2, [r0, #84]\n\t"
        "str r4, [r0, #88]\n\t"
        "movs r4, #8\n\t"
        "movs r5, #0\n\t"
        "str r5, [r0, #52]\n\t"
        "str r5, [r0, #56]\n\t"
        "str r3, [r0, #60]\n\t"
        "str r2, [r0, #64]\n\t"
        "str r1, [r0, #68]\n\t"
        "str r5, [r0, #72]\n\t"
        "str r5, [r0, #76]\n\t"
        "str r4, [r0, #80]\n\t"
        "pop {r4, r5, r7, pc}\n\t");
}
