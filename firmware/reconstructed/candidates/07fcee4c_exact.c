#include <stdint.h>

/* Dispatch each batch item with its three sign-extended offset parameters. */
__attribute__((used, naked, section(".text.FUN_07fcee4c")))
uint32_t FUN_07fcee4c(void)
{
    __asm__ volatile (
        "push {r0, r1, r2, r3, r4, r5, r6, r7, lr}\n"
        "mov r6, r0\n"
        "ldr r0, [pc, #60]\n"
        "sub sp, #12\n"
        "ldr r0, [r0, #28]\n"
        "movs r4, #0\n"
        "ldr r7, [sp, #48]\n"
        "mov r5, r1\n"
        "cmp r0, #0\n"
        "beq 3f\n"
        "b 2f\n"
        "1: ldr r2, [sp, #60]\n"
        "lsls r0, r4, #1\n"
        "ldrsh r2, [r2, r0]\n"
        "ldr r1, [sp, #56]\n"
        "ldrsh r1, [r1, r0]\n"
        "ldr r3, [sp, #52]\n"
        "ldrsh r0, [r3, r0]\n"
        "mov r3, sp\n"
        "stmia r3!, {r0, r1, r2}\n"
        "lsls r0, r4, #2\n"
        "ldr r1, [r5, r0]\n"
        "ldr r0, [r6, r0]\n"
        "ldr r3, [sp, #24]\n"
        "ldr r2, [sp, #20]\n"
        "bl FUN_07fcdd68\n"
        "adds r4, r4, #1\n"
        "uxtb r4, r4\n"
        "2: cmp r4, r7\n"
        "bcc 1b\n"
        "movs r0, #1\n"
        "3: add sp, #28\n"
        "pop {r4, r5, r6, r7, pc}\n");
}
