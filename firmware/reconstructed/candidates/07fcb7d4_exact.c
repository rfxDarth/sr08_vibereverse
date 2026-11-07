/* Wait for sensor readiness, combine its counter words, and store derived values. */
__attribute__((used, naked, section(".text.FUN_07fcb7d4")))
void FUN_07fcb7d4(void)
{
    __asm__ volatile (
        "push {r4, r5, r7, lr}\n"
        "ldr r0, [pc, #996]\n"
        "ldrb r1, [r0, #0]\n"
        "cmp r1, #1\n"
        "bne 2f\n"
        "ldr r1, [pc, #60]\n"
        "1: ldrh r2, [r1, #0]\n"
        "lsls r2, r2, #29\n"
        "bmi 1b\n"
        "ldrh r2, [r1, #6]\n"
        "ldrh r1, [r1, #4]\n"
        "movs r3, #0\n"
        "strb r3, [r0, #0]\n"
        "lsls r0, r2, #16\n"
        "adds r4, r0, r1\n"
        "movs r0, #53\n"
        "lsls r0, r0, #26\n"
        "movs r1, #48\n"
        "mov r2, r4\n"
        "bl FUN_07fc1928\n"
        "ldr r5, [pc, #32]\n"
        "str r0, [r5, #80]\n"
        "str r1, [r5, #84]\n"
        "ldr r0, [pc, #28]\n"
        "mov r1, r4\n"
        "bl func_0x07f1dfb8\n"
        "str r0, [r5, #8]\n"
        "lsls r0, r4, #6\n"
        "movs r1, #20\n"
        "bl func_0x07f1dfb8\n"
        "str r0, [r5, #16]\n"
        "2: pop {r4, r5, r7, pc}\n");
}
