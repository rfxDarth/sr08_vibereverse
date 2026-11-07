/*
 * Exact-code-generation probe for V204 address 0x07fc1c0c.
 * This explicitly binds the two values to the registers used by the target.
 * It is an experiment, not yet part of a full firmware reconstruction.
 */
#include <stdint.h>

void FUN_07fc1c0c(void)
{
    register uintptr_t gpio __asm__("r0") = 0x50001508u;
    register uint32_t value __asm__("r1") = 1;
    __asm__ volatile ("" : : "r" (gpio), "r" (value));
    *(volatile uint16_t *)gpio = value;
}
