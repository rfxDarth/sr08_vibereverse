/* Select the fast ROM write or allocate and initialize a fallback record. */
__attribute__((used, naked, section(".text.FUN_07fc575c")))
void FUN_07fc575c(void)
{
    __asm__ volatile (
        "push {r4, r5, r6, lr}\n"
        "mov r4, r1\n"
        "mov r5, r0\n"
        "ldr r0, [pc, #64]\n"
        "ldrh r0, [r0, #0]\n"
        "lsls r0, r0, #24\n"
        "ldr r6, [pc, #60]\n"
        "bpl 1f\n"
        "ldr r0, [pc, #60]\n"
        "ldr r0, [r0, #0]\n"
        "lsls r0, r0, #16\n"
        "bmi 1f\n"
        "ldr r0, [pc, #56]\n"
        "ldrh r0, [r0, #0]\n"
        "lsls r0, r0, #31\n"
        "bne 1f\n"
        "adds r0, r6, r5\n"
        "adds r0, r0, #2\n"
        "movs r1, #4\n"
        "mov r2, r4\n"
        "bl func_0x07f1c054\n"
        "pop {r4, r5, r6, pc}\n"
        "1: bl FUN_07fc5260\n"
        "movs r1, #4\n"
        "movs r3, #8\n"
        "mov r0, r6\n"
        "mov r2, r1\n"
        "bl func_0x07f1bbb0\n"
        "str r4, [r0, #4]\n"
        "strb r5, [r0, #0]\n"
        "bl func_0x07f1bbe2\n"
        "pop {r4, r5, r6, pc}\n");
}
