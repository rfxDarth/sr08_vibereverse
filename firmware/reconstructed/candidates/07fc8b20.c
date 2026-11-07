/* Address-exact C reconstruction of V204 FUN_07fc8b20. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc8b20")))
void FUN_07fc8b20(void)
{
    register volatile uint8_t *state asm("r1");
    register uint32_t offset asm("r0");
    __asm__ volatile (
        "movs r0, #64\n"
        "ldr r1, [pc, #792]"
        : "=r" (offset), "=r" (state));
    *((volatile uint16_t *)(state + offset)) = 11;
}
