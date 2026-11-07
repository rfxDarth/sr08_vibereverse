/* C delay loop with the V204 timing padding retained explicitly. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc0194")))
void FUN_07fc0194(uint32_t count)
{
    register uint32_t n __asm__("r0") = count;
again:
    if (n == 0)
        return;
    __asm__ volatile (".rept 10\n\tnop\n\t.endr" ::: "memory");
    --n;
    if (n != 0)
        goto again;
}
