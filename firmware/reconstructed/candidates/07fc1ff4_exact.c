/* Reproduce the two-pulse output sequence used by the original routine. */
__attribute__((used, naked, section(".text.FUN_07fc1ff4")))
int FUN_07fc1ff4(void)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n"
        "ldr r0, [pc, #72]\n"
        "str r0, [sp, #0]\n"
        "mov r4, sp\n"
        "mov r0, r4\n"
        "bl FUN_07fc2048\n"
        "movs r0, #20\n"
        "bl FUN_07fc20b4\n"
        "ldr r6, [pc, #152]\n"
        "ldrh r0, [r6, #0]\n"
        "ldr r1, [pc, #52]\n"
        "ands r0, r1\n"
        "adds r0, #64\n"
        "strh r0, [r6, #0]\n"
        "bl FUN_07fc1fd0\n"
        "mov r5, r0\n"
        "movs r0, #1\n"
        "bl FUN_07fc20b4\n"
        "movs r7, #0\n"
        "strb r7, [r4, #2]\n"
        "mov r0, r4\n"
        "bl FUN_07fc2048\n"
        "ldrh r0, [r6, #0]\n"
        "ldr r1, [pc, #20]\n"
        "ands r0, r1\n"
        "adds r0, #64\n"
        "strh r0, [r6, #0]\n"
        "bl FUN_07fc1fd0\n"
        "strh r7, [r6, #0]\n"
        "adds r0, r0, r5\n"
        "pop {r3, r4, r5, r6, r7, pc}\n");
}
