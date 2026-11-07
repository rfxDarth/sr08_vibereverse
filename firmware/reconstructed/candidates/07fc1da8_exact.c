/* Handle the matched device state and send the corresponding state records. */
__attribute__((used, naked, section(".text.FUN_07fc1da8")))
void FUN_07fc1da8(void)
{
    __asm__ volatile (
        "push {r4, r5, r7, lr}\n"
        "bl FUN_07fc1e50\n"
        "movs r0, #15\n"
        "bl FUN_07fc8a0c\n"
        "mov r5, r0\n"
        "movs r0, #112\n"
        "bl FUN_07fc8a0c\n"
        "cmp r5, #17\n"
        "bne 1f\n"
        "mov r4, r0\n"
        "ldr r0, [pc, #44]\n"
        "bl FUN_07fc8a54\n"
        "movs r0, #10\n"
        "bl FUN_07fc4458\n"
        "ldr r0, [pc, #796]\n"
        "cmp r4, #40\n"
        "bne 2f\n"
        "movs r1, #3\n"
        "strb r1, [r0, #17]\n"
        "b 3f\n"
        "2: movs r1, #2\n"
        "strb r1, [r0, #17]\n"
        "movs r0, #30\n"
        "movs r1, #5\n"
        "bl FUN_07fc8ad8\n"
        "3: ldr r0, [pc, #12]\n"
        "bl FUN_07fc8a54\n"
        "1: pop {r4, r5, r7, pc}\n");
}
