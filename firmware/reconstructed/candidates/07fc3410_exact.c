/* Replace an occupied slot with a newly allocated and initialized record. */
__attribute__((used, naked, section(".text.FUN_07fc3410")))
void FUN_07fc3410(void)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n"
        "mov r4, r0\n"
        "subs r0, r0, #1\n"
        "cmp r0, #9\n"
        "bhi 1f\n"
        "lsls r0, r4, #2\n"
        "ldr r1, [pc, #52]\n"
        "adds r0, r0, r1\n"
        "subs r7, r0, #4\n"
        "ldr r0, [r7, #0]\n"
        "cmp r0, #0\n"
        "beq 1f\n"
        "ldr r5, [pc, #44]\n"
        "cmp r0, r5\n"
        "beq 1f\n"
        "ldr r0, [pc, #44]\n"
        "adds r0, r4, r0\n"
        "adds r0, r0, #1\n"
        "movs r6, #4\n"
        "mov r1, r6\n"
        "bl func_0x07f1c0e8\n"
        "str r5, [r7, #0]\n"
        "movs r3, #8\n"
        "ldr r0, [pc, #24]\n"
        "mov r1, r6\n"
        "mov r2, r6\n"
        "bl func_0x07f1bbb0\n"
        "strb r4, [r0, #0]\n"
        "bl func_0x07f1bbe2\n"
        "1: pop {r3, r4, r5, r6, r7, pc}\n");
}
