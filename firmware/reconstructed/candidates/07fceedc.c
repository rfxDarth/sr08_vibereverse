/* Address-exact C reconstruction of V204 FUN_07fceedc. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fceedc")))
void FUN_07fceedc(uint8_t a, uint8_t b, uint8_t c,
                  uint32_t d, uint32_t e, uint8_t f)
{
    register volatile uint8_t *state asm("r4");
    __asm__ volatile ("ldr r4, [pc, #20]" : "=r" (state));
    register uint32_t p5 asm("r5");
    register uint32_t p6 asm("r6");
    __asm__ volatile (
        "ldr r6, [sp, #20]\n"
        "ldr r5, [sp, #16]"
        : "=r" (p6), "=r" (p5));
    state[0] = a;
    state[1] = b;
    state[2] = c;
    *(volatile uint32_t *)(state + 8) = p5;
    *(volatile uint32_t *)(state + 4) = d;
    state[12] = (uint8_t)p6;
}
