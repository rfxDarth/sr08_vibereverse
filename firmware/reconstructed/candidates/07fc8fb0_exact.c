/* Validate the cached text payload and return it, or install the fallback text. */
__attribute__((used, naked, section(".text.FUN_07fc8fb0")))
void FUN_07fc8fb0(void)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n"
        "mov r4, r0\n"
        "movs r3, #0\n"
        "strb r3, [r0, #0]\n"
        "ldr r6, [pc, #60]\n"
        "mov r5, r6\n"
        "adds r5, #20\n"
        "movs r0, #25\n"
        "lsls r1, r0, #14\n"
        "movs r2, #20\n"
        "mov r0, r5\n"
        "bl FUN_07fc3ea0\n"
        "ldrb r0, [r6, #20]\n"
        "cmp r0, #43\n"
        "bne 2f\n"
        "ldrb r7, [r5, #19]\n"
        "cmp r7, #0\n"
        "beq 2f\n"
        "cmp r7, #17\n"
        "bhi 2f\n"
        "mov r5, r6\n"
        "adds r5, #21\n"
        "mov r0, r5\n"
        "bl FUN_07fc18f4\n"
        "cmp r0, r7\n"
        "beq 1f\n"
        "2: movs r0, #132\n"
        "strb r0, [r6, #20]\n"
        ".inst.n 0xa503\n"
        "movs r7, #4\n"
        "1: strb r7, [r4, #0]\n"
        "mov r0, r5\n"
        "pop {r3, r4, r5, r6, r7, pc}\n");
}
