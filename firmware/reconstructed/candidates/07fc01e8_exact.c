/* Validate the selected record state and return its readiness flag. */
__attribute__((used, naked, section(".text.FUN_07fc01e8")))
int FUN_07fc01e8(void)
{
    __asm__ volatile (
        "mov r2, r0\n"
        "ldr r3, [pc, #1020]\n"
        "lsls r2, r2, #2\n"
        "ldr r2, [r3, r2]\n"
        "movs r0, #1\n"
        "ldr r2, [r2, #16]\n"
        "cmp r1, #0\n"
        "beq 1f\n"
        "ldrb r1, [r2, #29]\n"
        "2: movs r3, #94\n"
        "ldrb r3, [r3, r2]\n"
        "cmp r3, #0\n"
        "beq 3f\n"
        "cmp r1, #5\n"
        "bne 4f\n"
        "6: ldrb r1, [r2, #25]\n"
        "lsls r1, r1, #28\n"
        "bpl 5f\n"
        "ldrb r1, [r2, #18]\n"
        "lsls r1, r1, #28\n"
        "bmi 4f\n"
        "5: movs r0, #0\n"
        "4: bx lr\n"
        "1: ldrb r1, [r2, #22]\n"
        "b 2b\n"
        "3: cmp r1, #2\n"
        "beq 5b\n"
        "cmp r1, #4\n"
        "beq 5b\n"
        "cmp r1, #5\n"
        "bne 4b\n"
        "movs r0, #0\n"
        "b 6b\n");
}
