/* Copy two initialized state blocks and install three state pointers. */
__attribute__((used, naked, section(".text.FUN_07fc1696")))
void FUN_07fc1696(void)
{
    __asm__ volatile (
        "push {r4, lr}\n"
        "movs r2, #112\n"
        "ldr r1, [pc, #72]\n"
        "ldr r0, [pc, #72]\n"
        "bl func_0x07f1e0ac\n"
        "ldr r1, [pc, #64]\n"
        "movs r2, #56\n"
        "subs r1, #56\n"
        "ldr r0, [pc, #64]\n"
        "bl func_0x07f1e0ac\n"
        "ldr r0, [pc, #56]\n"
        "ldr r1, [pc, #60]\n"
        "adds r0, #160\n"
        "str r1, [r0, #0]\n"
        "ldr r1, [pc, #44]\n"
        "subs r1, #112\n"
        "str r1, [r0, #4]\n"
        "ldr r1, [pc, #40]\n"
        "ldr r0, [pc, #52]\n"
        "subs r1, #32\n"
        "str r0, [r1, #0]\n"
        "pop {r4, pc}\n");
}
