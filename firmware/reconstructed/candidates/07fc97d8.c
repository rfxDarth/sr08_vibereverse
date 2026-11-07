/* Address-exact reconstruction of V204 FUN_07fc97d8. */
#include <stdint.h>

extern void FUN_07fc3b78(uint32_t);

__attribute__((used, section(".text.FUN_07fc97d8")))
void FUN_07fc97d8(void)
{
    register volatile uint8_t *state asm("r0");
    __asm__ volatile ("ldr r0, [pc, #16]" : "=r" (state));
    if ((int32_t)((uint32_t)state[0x14] << 30) >= 0)
        FUN_07fc3b78(4);
}
