/* Clear the selected slot's record series and reset its associated state. */
__attribute__((used, naked, section(".text.FUN_07fc74d4")))
void FUN_07fc74d4(void)
{
    __asm__ volatile (
        "push {r4, lr}\n"
        "cmp r1, #8\n"
        "bcs 4f\n"
        "ldr r2, [r0, #16]\n"
        "ldr r3, [pc, #64]\n"
        "movs r4, #0\n"
        "strh r4, [r3, #32]\n"
        "lsls r1, r1, #1\n"
        "adds r1, r1, r2\n"
        "adds r2, #33\n"
        "adds r1, r1, #6\n"
        "ldrb r3, [r2, #0]\n"
        "1: cmp r3, #0\n"
        "beq 3f\n"
        "strh r4, [r1, #0]\n"
        "subs r3, r3, #1\n"
        "adds r1, #22\n"
        "b 1b\n"
        "4: ldr r0, [pc, #760]\n"
        "movs r1, #200\n"
        "strh r1, [r0, #0]\n"
        "ldr r0, [pc, #760]\n"
        "movs r1, #8\n"
        "strh r1, [r0, #0]\n"
        "5: b 5b\n"
        "3: strb r4, [r2, #1]\n"
        "ldrh r0, [r0, #20]\n"
        "mov r1, r4\n"
        "bl func_0x07f1beb6\n"
        "movs r0, #176\n"
        "ldr r1, [pc, #184]\n"
        "strb r4, [r1, r0]\n"
        "pop {r4, pc}\n");
}
