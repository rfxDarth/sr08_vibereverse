/* Second exception entry point; same stack selection, distinct dispatcher. */
__attribute__((used, naked, section(".text.FUN_07fc0164")))
void FUN_07fc0164(void)
{
    __asm__ volatile (
        "movs r0, #4\n"
        "mov r1, lr\n"
        "tst r0, r1\n"
        "beq 1f\n"
        "mrs r0, psp\n"
        "ldr r1, [pc, #28]\n"
        "bx r1\n"
        "1: mrs r0, msp\n"
        "ldr r1, [pc, #20]\n"
        "bx r1\n");
}
