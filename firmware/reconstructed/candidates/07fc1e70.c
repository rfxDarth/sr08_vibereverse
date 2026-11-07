/* Restoring integer square root; V204 returns the accumulated root in r0. */
#include <stdint.h>

__attribute__((naked, used, section(".text.FUN_07fc1e70")))
uint32_t FUN_07fc1e70(uint32_t input)
{
    __asm__ volatile (
        "push {r4, r5, r7, lr}\n\t"
        "mov r1, r0\n\t"
        "movs r0, #1\n\t"
        "lsls r0, r0, #30\n"
        ".Lscale_1e70:\n\t"
        "mov r2, r0\n\t"
        "lsrs r0, r0, #2\n\t"
        "cmp r2, r1\n\t"
        "bhi .Lscale_1e70\n\t"
        "movs r0, #0\n"
        ".Lroot_1e70:\n\t"
        "cmp r2, #0\n\t"
        "beq .Ldone_1e70\n\t"
        "adds r4, r2, r0\n\t"
        "subs r5, r1, r4\n\t"
        "mov r3, r1\n\t"
        "bcc .Lkeep_input_1e70\n\t"
        "mov r3, r5\n"
        ".Lkeep_input_1e70:\n\t"
        "cmp r1, r4\n\t"
        "bcc .Lshift_1e70\n\t"
        "lsls r1, r2, #1\n\t"
        "adds r0, r0, r1\n"
        ".Lshift_1e70:\n\t"
        "lsrs r0, r0, #1\n\t"
        "lsrs r2, r2, #2\n\t"
        "mov r1, r3\n\t"
        "b .Lroot_1e70\n"
        ".Ldone_1e70:\n\t"
        "pop {r4, r5, r7, pc}");
}
