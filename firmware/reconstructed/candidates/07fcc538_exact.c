/* Initialize measurement state unless the record is already in state 1 or 2. */
__attribute__((used, naked, section(".text.FUN_07fcc538")))
void FUN_07fcc538(void)
{
    __asm__ volatile (
        "push {r4, lr}\n"
        "ldr r4, [pc, #880]\n"
        "ldrb r0, [r4, #14]\n"
        "cmp r0, #1\n"
        "beq 1f\n"
        "ldrb r0, [r4, #14]\n"
        "cmp r0, #2\n"
        "beq 1f\n"
        "ldr r0, [pc, #36]\n"
        "ldr r1, [pc, #40]\n"
        "bl FUN_07fc33e4\n"
        "strb r0, [r4, #11]\n"
        "bl FUN_07fc32bc\n"
        "bl FUN_07fc32bc\n"
        "bl func_0x07f1bbe2\n"
        "movs r0, #0\n"
        "str r0, [r4, #88]\n"
        "movs r0, #4\n"
        "movs r1, #2\n"
        "bl func_0x07f1beb6\n"
        "1: pop {r4, pc}\n");
}
