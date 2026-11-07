/* Select one of two display patterns from the mode flag and write five bytes. */
__attribute__((used, naked, section(".text.FUN_07fcab78")))
void FUN_07fcab78(void)
{
    __asm__ volatile (
        "push {r4, r5, r6, lr}\n"
        "movs r0, #48\n"
        "ldr r1, [pc, #980]\n"
        "ldrb r0, [r1, r0]\n"
        "lsls r0, r0, #30\n"
        "bmi 1f\n"
        "movs r3, #62\n"
        "movs r0, #111\n"
        "movs r1, #36\n"
        "movs r2, #24\n"
        "movs r4, #58\n"
        "b 2f\n"
        "1: movs r0, #107\n"
        "movs r1, #91\n"
        "movs r2, #55\n"
        "movs r4, #19\n"
        "mov r3, r0\n"
        "2: movs r5, #64\n"
        "ldr r6, [pc, #468]\n"
        "strb r4, [r6, r5]\n"
        "adds r6, #64\n"
        "strb r3, [r6, #4]\n"
        "strb r0, [r6, #3]\n"
        "strb r1, [r6, #2]\n"
        "strb r2, [r6, #1]\n"
        "pop {r4, r5, r6, pc}\n");
}
