/* Scan the bounded record range until the callback clears the continue byte. */
__attribute__((used, naked, section(".text.FUN_07fc87f4")))
int FUN_07fc87f4(void)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n"
        "mov r1, sp\n"
        "movs r0, #0\n"
        "strb r0, [r1, #0]\n"
        "ldr r4, [pc, #52]\n"
        "mov r3, r4\n"
        "adds r3, #40\n"
        "ldmia r3, {r1, r2, r3}\n"
        "subs r1, r1, r2\n"
        "subs r7, r3, #1\n"
        "ands r7, r1\n"
        "cmp r7, #7\n"
        "bcc 4f\n"
        "movs r5, #0\n"
        "adds r4, #40\n"
        "1: cmp r7, r5\n"
        "beq 3f\n"
        "mov r6, sp\n"
        "mov r0, r4\n"
        "mov r1, r5\n"
        "mov r2, r6\n"
        "bl FUN_07fc2fa4\n"
        "adds r5, r5, #1\n"
        "ldrb r0, [r6, #0]\n"
        "cmp r0, #1\n"
        "beq 1b\n"
        "movs r0, #255\n"
        "b 4f\n"
        "3: movs r0, #1\n"
        "4: sxtb r0, r0\n"
        "pop {r3, r4, r5, r6, r7, pc}\n");
}
