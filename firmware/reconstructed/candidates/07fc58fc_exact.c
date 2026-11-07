/* Scan five masked records and dispatch entries whose key matches the target. */
__attribute__((used, naked, section(".text.FUN_07fc58fc")))
void FUN_07fc58fc(void)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n"
        "cmp r1, #7\n"
        "bhi 4f\n"
        "mov r4, r1\n"
        "ldr r5, [pc, #816]\n"
        "adds r5, #20\n"
        "movs r6, #1\n"
        "ldr r7, [pc, #820]\n"
        "1: cmp r6, #6\n"
        "beq 3f\n"
        "movs r0, #42\n"
        "lsrs r0, r6\n"
        "lsls r0, r0, #31\n"
        "beq 2f\n"
        "ldr r0, [r5, #0]\n"
        "ldrh r0, [r0, #0]\n"
        "cmp r0, r7\n"
        "bne 2f\n"
        "uxtb r1, r6\n"
        "movs r2, #0\n"
        "mov r0, r4\n"
        "bl FUN_07fc5c44\n"
        "2: adds r5, #20\n"
        "adds r6, r6, #1\n"
        "b 1b\n"
        "4: ldr r0, [pc, #896]\n"
        "movs r1, #200\n"
        "strh r1, [r0, #0]\n"
        "ldr r0, [pc, #896]\n"
        "movs r1, #8\n"
        "strh r1, [r0, #0]\n"
        "5: b 5b\n"
        "3: pop {r3, r4, r5, r6, r7, pc}\n");
}
