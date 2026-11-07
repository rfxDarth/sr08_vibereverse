/* Address-exact reconstruction of V204 FUN_07fc3b40. */
#include <stdint.h>

extern void FUN_07fc3b78(uint32_t);

__attribute__((used, section(".text.FUN_07fc3b40")))
void FUN_07fc3b40(void)
{
    register volatile uint8_t *state asm("r0");
    __asm__ volatile ("ldr r0, [pc, #832]" : "=r" (state));
    if (state[12] == 14)
        FUN_07fc3b78(0);
}
