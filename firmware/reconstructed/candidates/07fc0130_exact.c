/* Reset-entry stack setup and startup callback walk. */
extern void FUN_07fc1904(void);

__attribute__((used, naked, section(".text.FUN_07fc0130")))
void FUN_07fc0130(void)
{
    __asm__ volatile (
        "ldr r0, [pc, #12]\n"
        "mov sp, r0\n"
        "bl FUN_07fc1904\n");
}
