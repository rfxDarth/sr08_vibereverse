/* Dispatch the six command identifiers through the table at 0x07fc8050. */
__attribute__((used, naked, section(".text.FUN_07fc8040")))
void FUN_07fc8040(void)
{
    __asm__ volatile (
        "push {r4, r5, r7, lr}\n"
        "cmp r0, #5\n"
        ".inst.n 0xd835 /* bhi 0x07fc80b2 default */\n"
        "lsls r0, r0, #2\n"
        ".inst.n 0xa101 /* adr r1, 0x07fc8050 */\n"
        "ldr r0, [r1, r0]\n"
        "mov pc, r0\n");
}
