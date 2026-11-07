/* Address-exact reconstruction of V204 FUN_07fc677c.
 * The recovered C logic is represented as its Thumb sequence because Clang's
 * stack-slot and register choices differ in this function. The literal words
 * at 0x07fc67e4..0x07fc67ef remain separate recovered data sections.
 */
#include <stdint.h>

__attribute__((naked, noinline, used, section(".text.FUN_07fc677c")))
uint32_t FUN_07fc677c(uint32_t, uint16_t *, uint32_t, uint32_t)
{
    __asm__ volatile (
        "push {r4, r5, r6, r7, lr}\n"
        "sub sp, #20\n"
        "mov r7, r3\n"
        "mov r6, r2\n"
        "mov r5, r1\n"
        "movs r0, #38\n"
        "bl FUN_07fcb080\n"
        "ldrh r1, [r5, #0]\n"
        "add r2, sp, #8\n"
        "str r2, [sp, #0]\n"
        "add r2, sp, #16\n"
        "add r3, sp, #12\n"
        "bl FUN_07fc76a0\n"
        "mov r4, r0\n"
        "ldr r0, [pc, #68]\n"
        "movs r3, #6\n"
        "mov r1, r7\n"
        "mov r2, r6\n"
        "bl func_0x07f1bbb0\n"
        "ldrh r1, [r5, #0]\n"
        "strh r1, [r0, #0]\n"
        "cmp r4, #0\n"
        "bne 2f\n"
        "add r1, sp, #12\n"
        "ldrb r1, [r1, #0]\n"
        "cmp r1, #22\n"
        "bhi 1f\n"
        "movs r4, #0\n"
        "movs r2, #1\n"
        "lsls r2, r1\n"
        "ldr r1, [pc, #40]\n"
        "tst r2, r1\n"
        "beq 3f\n"
        "mov r1, r4\n"
        "b 4f\n"
        "3: ldr r1, [pc, #32]\n"
        "tst r2, r1\n"
        "beq 1f\n"
        "movs r1, #2\n"
        "b 4f\n"
        "1: movs r4, #3\n"
        "movs r1, #0\n"
        "4: strh r1, [r0, #2]\n"
        "2: strb r4, [r0, #4]\n"
        "bl func_0x07f1bbe2\n"
        "movs r0, #0\n"
        "add sp, #20\n"
        "pop {r4, r5, r6, r7, pc}\n"
    );
}
