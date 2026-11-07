/* Address-exact C reconstruction of V204 FUN_07fcacd0. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fcacd0")))
void FUN_07fcacd0(void)
{
    register volatile uint8_t *state asm("r1");
    register uint32_t offset asm("r0");
    __asm__ volatile (
        "movs r0, #68\n"
        "ldr r1, [pc, #160]"
        : "=r" (offset), "=r" (state));
    state[offset] = 31;
    register uint32_t value asm("r0");
    __asm__ volatile ("ldr r0, [pc, #8]" : "=r" (value));
    *(volatile uint32_t *)(state + 64) = value;
}
