/* Startup hooks loaded from the adjacent callback pointer literals. */
__attribute__((used, naked, section(".text.FUN_07fc0144")))
void FUN_07fc0144(void)
{
    __asm__ volatile (
        "ldr r0, [pc, #60]\n"
        "blx r0\n"
        "ldr r0, [pc, #60]\n"
        "bx r0\n");
}
