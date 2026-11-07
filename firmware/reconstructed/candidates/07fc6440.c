/* Address-exact C reconstruction of V204 FUN_07fc6440. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc6440")))
uint32_t FUN_07fc6440(uint32_t a, uint8_t *src, uint32_t c, uint32_t value)
{
    register uint32_t index asm("r0");
    register uint32_t slot asm("r2");
    __asm__ volatile (
        "lsrs r0, r3, #8\n"
        "movs r2, #122\n"
        "muls r0, r2"
        : "=r" (index), "=r" (slot) : "r" (value) : "cc");
    register volatile uint8_t *base asm("r3");
    __asm__ volatile ("ldr r3, [pc, #92]" : "=r" (base));
    volatile uint8_t *dest = base + index;
    dest[slot] = *src;
    return 0;
}
