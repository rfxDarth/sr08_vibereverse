/* Clear a record field, run the validation helper, then signal fatal failure. */
__attribute__((used, naked, section(".text.FUN_07fcbbf4")))
void FUN_07fcbbf4(void)
{
    __asm__ volatile (
        "push {r5, r6, r7, lr}\n"
        "ldr r0, [r0, #16]\n"
        "movs r2, #0\n"
        "strh r2, [r0, #10]\n"
        "add r3, sp, #4\n"
        "strb r2, [r3, #0]\n"
        "ldrh r0, [r0, #6]\n"
        "adds r0, #12\n"
        "uxth r0, r0\n"
        "movs r1, #1\n"
        "bl func_0x07f1003a\n"
        "cmp r0, #0\n"
        "beq 1f\n"
        "ldr r0, [pc, #12]\n"
        "movs r1, #200\n"
        "strh r1, [r0, #0]\n"
        "ldr r0, [pc, #12]\n"
        "movs r1, #8\n"
        "strh r1, [r0, #0]\n"
        "2: b 2b\n"
        "1: pop {r2, r3, r7, pc}\n");
}
