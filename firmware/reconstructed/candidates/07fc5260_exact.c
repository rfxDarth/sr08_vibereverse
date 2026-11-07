/* Set the pending flag while preserving the caller's interrupt mask. */
__attribute__((used, naked, section(".text.FUN_07fc5260")))
int FUN_07fc5260(void)
{
    __asm__ volatile (
        "mrs r1, primask\n"
        "movs r0, #1\n"
        "msr primask, r0\n"
        "ldr r2, [pc, #32]\n"
        "ldrh r2, [r2, #0]\n"
        "lsls r2, r2, #24\n"
        "bmi 1f\n"
        "ldr r2, [pc, #28]\n"
        "ldrh r3, [r2, #0]\n"
        "orrs r3, r0\n"
        "strh r3, [r2, #0]\n"
        "1: cmp r1, #0\n"
        "beq 2f\n"
        "msr primask, r0\n"
        "bx lr\n"
        "2: movs r0, #0\n"
        "msr primask, r0\n"
        "bx lr\n");
}
