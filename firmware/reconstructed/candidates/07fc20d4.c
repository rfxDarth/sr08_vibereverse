/* Address-exact reconstruction of V204 FUN_07fc20d4. */
#include <stdint.h>

extern uint32_t FUN_07fc33e4(uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fc20d4")))
void FUN_07fc20d4(void)
{
    uint32_t value = FUN_07fc33e4(0x0bb8u, 0x07fc20d5u);
    register uintptr_t base asm("r1");
    __asm__ volatile ("ldr r1, [pc, #900]" : "=r" (base));
    ((volatile uint8_t *)base)[11] = (uint8_t)value;
}
