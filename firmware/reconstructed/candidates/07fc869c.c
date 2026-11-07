/* Address-exact C reconstruction of V204 FUN_07fc869c. */
#include <stdint.h>

extern void FUN_07fc8680(uint32_t);
extern void FUN_07fc82b0(void);

__attribute__((used, section(".text.FUN_07fc869c")))
void FUN_07fc869c(void)
{
    register volatile uint8_t *state asm("r4");
    __asm__ volatile ("ldr r4, [pc, #556]" : "=r" (state));
    state[27] = 0;
    register uint32_t arg asm("r0");
    __asm__ volatile ("ldr r0, [pc, #12]" : "=r" (arg));
    FUN_07fc8680(arg);
    FUN_07fc82b0();
    state[17] = 1;
}
