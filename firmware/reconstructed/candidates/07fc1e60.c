/* Address-exact reconstruction of V204 FUN_07fc1e60. */
#include <stdint.h>

extern void FUN_07fc8c90(void);

__attribute__((used, section(".text.FUN_07fc1e60")))
void FUN_07fc1e60(void)
{
    register volatile uint32_t *state asm("r0");
    __asm__ volatile ("ldr r0, [pc, #648]" : "=r" (state));
    if (state[19] != 0)
        FUN_07fc8c90();
}
