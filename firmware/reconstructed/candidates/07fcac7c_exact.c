/* Choose the three display-state bytes from the mode flag. */
__attribute__((used, naked, section(".text.FUN_07fcac7c")))
void FUN_07fcac7c(void)
{
    __asm__ volatile (
        "movs r0, #48\n"
        "ldr r1, [pc, #724]\n"
        "ldrb r1, [r1, r0]\n"
        "movs r0, #2\n"
        "ands r0, r1\n"
        "beq 1f\n"
        "movs r2, #119\n"
        "b 2f\n"
        "1: movs r2, #82\n"
        "2: movs r3, #64\n"
        "ldr r1, [pc, #224]\n"
        "strb r2, [r1, r3]\n"
        "movs r2, #27\n"
        "cmp r0, #0\n"
        "beq 3f\n"
        "mov r3, r2\n"
        "b 4f\n"
        "3: movs r3, #124\n"
        "4: adds r1, #64\n"
        "strb r3, [r1, #2]\n"
        "cmp r0, #0\n"
        "bne 5f\n"
        "movs r2, #83\n"
        "5: strb r2, [r1, #1]\n"
        "bx lr\n");
}
