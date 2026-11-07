/* Build the mode status record and select its corresponding halfword value. */
__attribute__((used, naked, section(".text.FUN_07fc43a4")))
void FUN_07fc43a4(void)
{
    __asm__ volatile (
        "push {r4, r5, r6, lr}\n"
        "mov r5, r0\n"
        "ldr r0, [pc, #64]\n"
        "ldr r0, [r0, #0]\n"
        "movs r1, #1\n"
        "bl FUN_07fc4400\n"
        "movs r4, #0\n"
        "mov r0, r4\n"
        "bl FUN_07fc3838\n"
        "movs r0, #152\n"
        "ldr r1, [pc, #116]\n"
        "ldr r2, [pc, #48]\n"
        "strh r2, [r1, r0]\n"
        "adds r1, #152\n"
        "ldr r0, [pc, #112]\n"
        "ldr r0, [r0, #44]\n"
        "str r0, [r1, #4]\n"
        "cmp r5, #2\n"
        "beq 1f\n"
        "mov r6, r4\n"
        "b 2f\n"
        "1: ldr r6, [pc, #32]\n"
        "2: cmp r5, #1\n"
        "bne 3f\n"
        "ldr r6, [pc, #28]\n"
        "3: bl FUN_07fc5200\n"
        "ldr r0, [pc, #28]\n"
        "strh r6, [r0, #0]\n"
        "mov r0, r4\n"
        "bl func_0x07f027e4\n"
        "pop {r4, r5, r6, pc}\n");
}
