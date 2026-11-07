/* Select the six-byte source from the current state, record the selection, and copy. */
__attribute__((used, naked, section(".text.FUN_07fc042a")))
void FUN_07fc042a(void)
{
    __asm__ volatile (
        "push {r4, lr}\n"
        "mov r4, r0\n"
        "ldr r0, [pc, #452]\n"
        "ldrh r0, [r0, #40]\n"
        "lsls r0, r0, #30\n"
        "lsrs r0, r0, #30\n"
        "cmp r0, #1\n"
        "beq 1f\n"
        "movs r0, #0\n"
        "1: strb r0, [r4, #5]\n"
        "cmp r0, #0\n"
        "beq 2f\n"
        "bl func_0x07f185ec\n"
        "mov r1, r0\n"
        "movs r2, #6\n"
        "adds r0, r4, #6\n"
        "3: bl func_0x07f1e0ac\n"
        "pop {r4, pc}\n"
        "2: movs r2, #6\n"
        "ldr r1, [pc, #416]\n"
        "adds r0, r4, #6\n"
        "b 3b\n");
}
