/* C countdown loop with V204 timing padding and loop edge preserved. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc20b4")))
void FUN_07fc20b4(uint32_t count)
{
    register uint32_t n __asm__("r0") = count;
again:
    if (n == 0)
        return;
    __asm__ volatile (".rept 11\n\tnop\n\t.endr" ::: "memory");
    --n;
    __asm__ volatile ("" : "+r" (n));
    goto again;
}
