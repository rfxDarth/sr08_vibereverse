/* Address-exact reconstruction of V204 FUN_07fcd8a0. */
#include <stdint.h>

__attribute__((used, section(".text.FUN_07fcd8a0")))
void FUN_07fcd8a0(void)
{
    register volatile uint32_t *state asm("r0");
    __asm__ volatile ("ldr r0, [pc, #12]" : "=r" (state));
    if (state[1] != 0)
        state[1] = 0;
}
