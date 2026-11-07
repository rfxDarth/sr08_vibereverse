/* Address-exact C reconstruction of V204 FUN_07fca904. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fca904")))
void FUN_07fca904(void)
{
    register volatile uint8_t *state asm("r1");
    register uint32_t offset asm("r0");
    register uint32_t value asm("r2");
    __asm__ volatile (
        "movs r0, #64\n"
        "ldr r1, [pc, #940]"
        : "=r" (offset), "=r" (state));
    __asm__ volatile ("ldr r2, [pc, #4]" : "=r" (value));
    *((volatile uint16_t *)(state + offset)) = (uint16_t)value;
}
