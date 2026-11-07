/* Address-exact C reconstruction of V204 FUN_07fcbbdc. */
#include <stdint.h>

extern void FUN_07fc3b78(uint32_t);

__attribute__((used, section(".text.FUN_07fcbbdc")))
void FUN_07fcbbdc(void)
{
    register volatile uint8_t *state asm("r1");
    register uint32_t offset asm("r0");
    __asm__ volatile (
        "movs r0, #148\n"
        "ldr r1, [pc, #12]"
        : "=r" (offset), "=r" (state));
    if (state[offset] != 1)
        FUN_07fc3b78(0);
}
