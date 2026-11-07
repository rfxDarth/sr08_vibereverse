/* Address-exact reconstruction of V204 FUN_07fc549c. */
#include <stdint.h>

extern void FUN_07fc3b78(uint32_t);

__attribute__((used, section(".text.FUN_07fc549c")))
void FUN_07fc549c(void)
{
    register volatile uint32_t *state asm("r0");
    __asm__ volatile ("ldr r0, [pc, #16]" : "=r" (state));
    if (state[11] == 100)
        FUN_07fc3b78(0x1b);
}
