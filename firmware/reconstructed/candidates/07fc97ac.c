/* Address-exact reconstruction of V204 FUN_07fc97ac. */
#include <stdint.h>

extern void FUN_07fc3b78(uint32_t);

__attribute__((used, section(".text.FUN_07fc97ac")))
void FUN_07fc97ac(void)
{
    register volatile uint8_t *state asm("r0");
    __asm__ volatile ("ldr r0, [pc, #60]" : "=r" (state));
    if ((state[0x14] & 1u) == 0)
        FUN_07fc3b78(3);
}
