/* Serialize the status byte, two global values, and the 32-bit input. */
__attribute__((used, naked, section(".text.FUN_07fc4400")))
void FUN_07fc4400(void)
{
    __asm__ volatile (
        "push {r4, lr}\n"
        "cmp r1, #1\n"
        "beq 1f\n"
        "movs r1, #84\n"
        "mvns r1, r1\n"
        "b 2f\n"
        "1: movs r1, #59\n"
        "2: ldr r2, [pc, #36]\n"
        "ldr r2, [r2, #68]\n"
        "ldr r3, [pc, #36]\n"
        "ldr r3, [r3, #44]\n"
        "ldr r4, [pc, #36]\n"
        "strb r1, [r4, #0]\n"
        "strb r3, [r4, #1]\n"
        "strb r2, [r4, #2]\n"
        "lsrs r1, r2, #8\n"
        "strb r1, [r4, #3]\n"
        "strb r0, [r4, #4]\n"
        "lsrs r1, r0, #8\n"
        "strb r1, [r4, #5]\n"
        "lsrs r1, r0, #16\n"
        "strb r1, [r4, #6]\n"
        "lsrs r0, r0, #24\n"
        "strb r0, [r4, #7]\n"
        "pop {r4, pc}\n");
}
