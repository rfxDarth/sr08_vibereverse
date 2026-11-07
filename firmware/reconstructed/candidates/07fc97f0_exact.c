/* Accumulate elapsed units, store the quotient/remainder fields, and mark valid. */
__attribute__((used, naked, section(".text.FUN_07fc97f0")))
void FUN_07fc97f0(void)
{
    __asm__ volatile (
        "push {r4, r5, r6, lr}\n"
        "ldr r6, [pc, #96]\n"
        "ldr r0, [r6, #8]\n"
        "bl FUN_07fc9858\n"
        "ldr r1, [pc, #208]\n"
        "ldr r2, [r1, #80]\n"
        "movs r3, #0\n"
        "str r3, [r1, #80]\n"
        "adds r5, r2, r0\n"
        "ldr r4, [pc, #32]\n"
        "mov r0, r5\n"
        "mov r1, r4\n"
        "bl func_0x07f1dfb8\n"
        "str r0, [r6, #20]\n"
        "ldr r1, [pc, #24]\n"
        "muls r1, r0\n"
        "adds r0, r1, r5\n"
        "beq 1f\n"
        "subs r0, r4, r0\n"
        "uxth r0, r0\n"
        "1: str r0, [r6, #16]\n"
        "ldr r0, [r6, #0]\n"
        "movs r1, #8\n"
        "orrs r1, r0\n"
        "str r1, [r6, #0]\n"
        "pop {r4, r5, r6, pc}\n");
}
