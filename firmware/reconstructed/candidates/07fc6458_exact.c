/* Route a record update by slot state and its two-byte identifier. */
__attribute__((used, naked, section(".text.FUN_07fc6458")))
void FUN_07fc6458(void)
{
    __asm__ volatile (
        "push {r7, lr}\n"
        "lsrs r0, r3, #8\n"
        "movs r2, #14\n"
        "muls r2, r0\n"
        "ldr r3, [pc, #60]\n"
        "adds r2, r3, r2\n"
        "movs r3, #99\n"
        "ldrb r2, [r2, r3]\n"
        "cmp r2, #0\n"
        "beq 3f\n"
        "ldrh r1, [r1, #0]\n"
        "cmp r1, #0\n"
        "bne 1f\n"
        "movs r1, #122\n"
        "muls r1, r0\n"
        "ldr r2, [pc, #44]\n"
        "adds r1, r2, r1\n"
        "ldrb r1, [r1, #2]\n"
        "lsls r1, r1, #31\n"
        "beq 2f\n"
        "1: bl FUN_07fc334c\n"
        "b 4f\n"
        "3: ldrb r2, [r1, #0]\n"
        "ldrb r1, [r1, #1]\n"
        "lsls r1, r1, #8\n"
        "adds r1, r1, r2\n"
        "ldr r2, [pc, #20]\n"
        "ldrh r2, [r2, #20]\n"
        "cmp r2, r1\n"
        "beq 1b\n"
        "2: bl FUN_07fc33c0\n"
        "4: movs r0, #0\n"
        "pop {r7, pc}\n");
}
