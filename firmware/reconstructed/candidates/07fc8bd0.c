/* Address-exact C reconstruction of V204 FUN_07fc8bd0. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fc8bd0")))
void FUN_07fc8bd0(void)
{
    register volatile uint8_t *state asm("r1");
    register uint32_t offset asm("r0");
    __asm__ volatile (
        "movs r0, #64\n"
        "ldr r1, [pc, #616]"
        : "=r" (offset), "=r" (state));
    *((volatile uint16_t *)(state + offset)) = 2;
}
