/* Allocate and attach a per-slot record only when one is not already present. */
__attribute__((used, naked, section(".text.FUN_07fc98a0")))
void FUN_07fc98a0(void)
{
    __asm__ volatile (
        "push {r4, lr}\n"
        "mov r1, r0\n"
        "lsls r0, r0, #2\n"
        "ldr r2, [pc, #36]\n"
        "adds r4, r2, r0\n"
        "ldr r0, [r4, #96]\n"
        "cmp r0, #0\n"
        "beq 1f\n"
        "pop {r4, pc}\n"
        "1: adds r4, #96\n"
        "lsls r1, r1, #8\n"
        "adds r1, #10\n"
        "ldr r0, [pc, #20]\n"
        "movs r2, #4\n"
        "movs r3, #30\n"
        "bl func_0x07f1bbb0\n"
        "movs r1, #255\n"
        "adds r1, #8\n"
        "strh r1, [r0, #0]\n"
        "str r0, [r4, #0]\n"
        "pop {r4, pc}\n");
}
