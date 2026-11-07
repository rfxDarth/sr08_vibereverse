/* Address-exact C reconstruction of V204 FUN_07fc72f0. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc72f0")))
void FUN_07fc72f0(uint8_t *out)
{
    register uint32_t index asm("r1");
    register volatile uint8_t *src asm("r2");
    __asm__ volatile (
        "movs r1, #7\n"
        "ldr r2, [pc, #16]"
        : "=r" (index), "=r" (src));
again:
    __asm__ volatile ("" : "+r" (index));
    if (index == 1)
        return;
    *out = src[index];
    out++;
    index--;
    goto again;
}
