/* Shared entry shim: move the incoming value to r2 and fall through. */
__attribute__((used, naked, section(".text.FUN_07fc022a")))
void FUN_07fc022a(void)
{
    __asm__ volatile ("mov r2, r0\n");
}
