/* Select the interrupted stack and tail-call the exception dispatcher. */
__attribute__((used, naked, section(".text.FUN_07fc014c")))
void FUN_07fc014c(void)
{
    __asm__ volatile (
        "movs r0, #4\n"
        "mov r1, lr\n"
        "tst r0, r1\n"
        "beq 1f\n"
        "mrs r0, psp\n"
        "ldr r1, [pc, #48]\n"
        "bx r1\n"
        "1: mrs r0, msp\n"
        "ldr r1, [pc, #40]\n"
        "bx r1\n");
}
