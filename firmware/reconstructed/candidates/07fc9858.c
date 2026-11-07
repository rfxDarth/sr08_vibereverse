/* Scale the value directly below 0x8000; use the ROM wide multiply above it. */
#include <stdint.h>

extern uint64_t func_0x07f1e00c(uint32_t, uint32_t, uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fc9858")))
uint32_t FUN_07fc9858(uint32_t value)
{
    register uint32_t saved_value __asm__("r2") = value;
    asm goto volatile ("lsrs r0, r0, #15\n\tbeq %l[small]"
                       : : "r" (saved_value) : "r0", "cc" : small);

    register volatile uint32_t *wide_state __asm__("r0");
    __asm__ volatile ("ldr r0, [pc, #48]" : "=r" (wide_state));
    uint32_t scale = wide_state[4];
    uint64_t product = func_0x07f1e00c(scale, 0, saved_value, 0);
    return (uint32_t)(product >> 10);

small:
    {
        register volatile uint32_t *narrow_state __asm__("r0");
        __asm__ volatile ("ldr r0, [pc, #28]" : "=r" (narrow_state));
        return (narrow_state[4] * value) >> 10;
    }
}
