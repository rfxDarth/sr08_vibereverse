/* Address-exact C reconstruction of V204 FUN_07fc8b2c. */
#include <stdint.h>

extern void FUN_07fc3a38(uint32_t);

__attribute__((used, section(".text.FUN_07fc8b2c")))
void FUN_07fc8b2c(void)
{
    register volatile uint8_t *flags asm("r0");
    __asm__ volatile ("ldr r0, [pc, #776]" : "=r" (flags));
    if ((flags[20] & 1) == 0)
        FUN_07fc3a38(0x10);
    register volatile uint8_t *state asm("r1");
    register uint32_t offset asm("r0");
    __asm__ volatile (
        "movs r0, #64\n"
        "ldr r1, [pc, #764]"
        : "=r" (offset), "=r" (state));
    *((volatile uint16_t *)(state + offset)) = 45;
}
