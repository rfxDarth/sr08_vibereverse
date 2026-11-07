/* Poll the state nibble, clear state-specific flags, and dispatch transitions. */
__attribute__((used, naked, section(".text.FUN_07fc1ea4")))
void FUN_07fc1ea4(void)
{
    __asm__ volatile (
        "push {r4, lr}\n"
        "ldr r4, [pc, #60]\n"
        "1: ldrh r1, [r4, #4]\n"
        "movs r0, #15\n"
        "ands r0, r1\n"
        "cmp r0, #2\n"
        "beq 2f\n"
        "cmp r0, #4\n"
        "beq 3f\n"
        "cmp r0, #12\n"
        "beq 4f\n"
        "cmp r0, #1\n"
        "bne 1b\n"
        "b 5f\n"
        "2: ldrh r0, [r4, #0]\n"
        "movs r1, #2\n"
        "bics r0, r1\n"
        "strh r0, [r4, #0]\n"
        "ldrh r0, [r4, #0]\n"
        "movs r1, #128\n"
        "b 6f\n"
        "3: bl FUN_07fcc528\n"
        "b 1b\n"
        "4: bl FUN_07fcc528\n"
        "ldrh r0, [r4, #0]\n"
        "movs r1, #1\n"
        "6: bics r0, r1\n"
        "strh r0, [r4, #0]\n"
        "b 1b\n"
        "5: pop {r4, pc}\n");
}
