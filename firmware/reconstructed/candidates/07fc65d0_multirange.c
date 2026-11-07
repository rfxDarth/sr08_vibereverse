/* Discontiguous switch entry and default/return blocks; jump table is separate data. */
extern void FUN_07fcc578(void);

__attribute__((used, naked, section(".text.FUN_07fc65d0")))
void FUN_07fc65d0(void)
{
    __asm__ volatile (
        "push {r4, r5, r6, lr}\n"
        "ldrb r4, [r1, #0]\n"
        "subs r4, r4, #1\n"
        "cmp r4, #22\n"
        "bhi FUN_07fc65d0_default\n"
        ".inst.n 0x46c0\n"
        "add r4, pc\n"
        "ldrb r4, [r4, #4]\n"
        "lsls r4, r4, #1\n"
        "add pc, r4\n");
}

__attribute__((used, naked, section(".text.FUN_07fc65d0_return")))
void FUN_07fc65d0_return(void)
{
    __asm__ volatile (
        "movs r0, #0\n"
        "pop {r4, r5, r6, pc}\n");
}

__attribute__((used, naked, section(".text.FUN_07fc65d0_default")))
void FUN_07fc65d0_default(void)
{
    __asm__ volatile (
        "bl FUN_07fcc578\n"
        "b FUN_07fc65d0_return\n");
}
