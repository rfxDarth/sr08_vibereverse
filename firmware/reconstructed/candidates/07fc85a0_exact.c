/* Read three callback values between mode transitions and combine fixed-point fields. */
__attribute__((used, naked, section(".text.FUN_07fc85a0")))
int FUN_07fc85a0(void)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n"
        "mov r6, r1\n"
        "str r0, [sp, #0]\n"
        "movs r4, #53\n"
        "movs r1, #8\n"
        "mov r0, r4\n"
        "bl FUN_07fc8850\n"
        "subs r0, r6, #1\n"
        "uxtb r0, r0\n"
        "ldr r5, [pc, #36]\n"
        "blx r5\n"
        "mov r7, r0\n"
        "mov r0, r6\n"
        "blx r5\n"
        "mov r6, r0\n"
        "ldr r0, [sp, #0]\n"
        "blx r5\n"
        "mov r5, r0\n"
        "movs r1, #0\n"
        "mov r0, r4\n"
        "bl FUN_07fc8850\n"
        "lsrs r0, r7, #4\n"
        "lsls r1, r6, #4\n"
        "adds r0, r1, r0\n"
        "lsls r1, r5, #12\n"
        "adds r0, r0, r1\n"
        "sxth r0, r0\n"
        "pop {r3, r4, r5, r6, r7, pc}\n");
}
