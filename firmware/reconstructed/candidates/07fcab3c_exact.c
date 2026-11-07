/* Update the status display using the remainder from the ROM divide helper. */
__attribute__((used, naked, section(".text.FUN_07fcab3c")))
void FUN_07fcab3c(void)
{
    __asm__ volatile (
        "push {r4, lr}\n"
        "movs r0, #64\n"
        "ldr r4, [pc, #560]\n"
        "ldr r1, [pc, #48]\n"
        "strh r1, [r4, r0]\n"
        "mov r0, r4\n"
        "adds r0, #64\n"
        "movs r1, #82\n"
        "strb r1, [r0, #2]\n"
        "movs r0, #48\n"
        "ldr r1, [pc, #660]\n"
        "ldrb r0, [r1, r0]\n"
        "movs r1, #3\n"
        "bl func_0x07f1dfb8\n"
        "cmp r1, #2\n"
        "bcc 1f\n"
        "movs r0, #68\n"
        "movs r1, #8\n"
        "strb r1, [r4, r0]\n"
        "b 2f\n"
        "1: cmp r1, #0\n"
        "beq 3f\n"
        "2: movs r0, #67\n"
        "movs r1, #8\n"
        "strb r1, [r4, r0]\n"
        "3: pop {r4, pc}\n");
}
