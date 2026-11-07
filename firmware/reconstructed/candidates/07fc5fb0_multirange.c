/* Discontiguous switch dispatcher; its jump-offset table is linked separately. */
extern void FUN_07fcc578(void);

__attribute__((used, naked, section(".text.FUN_07fc5fb0")))
void FUN_07fc5fb0(void)
{
    __asm__ volatile (
        "push {r3, r4, r5, r6, r7, lr}\n"
        "ldrb r4, [r1, #0]\n"
        "subs r5, r4, #2\n"
        "cmp r5, #5\n"
        "bhi FUN_07fc5fb0_default\n"
        "lsrs r4, r3, #8\n"
        "add r5, pc\n"
        "ldrb r5, [r5, #4]\n"
        "lsls r5, r5, #1\n"
        "add pc, r5\n");
}

__attribute__((used, naked, section(".text.FUN_07fc5fb0_default")))
void FUN_07fc5fb0_default(void)
{
    __asm__ volatile (
        "bl FUN_07fcc578\n"
        "b FUN_07fc5fb0_return\n");
}

__attribute__((used, naked, section(".text.FUN_07fc5fb0_return")))
void FUN_07fc5fb0_return(void)
{
    __asm__ volatile (
        "movs r0, #0\n"
        "pop {r3, r4, r5, r6, r7, pc}\n");
}
