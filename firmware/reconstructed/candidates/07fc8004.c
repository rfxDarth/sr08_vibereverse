/* Address-exact C reconstruction of V204 FUN_07fc8004. */
#include <stdint.h>

extern void FUN_07fc8680(uint32_t);

__attribute__((used, section(".text.FUN_07fc8004")))
void FUN_07fc8004(void)
{
    register volatile uint8_t *state asm("r0");
    __asm__ volatile ("ldr r0, [pc, #804]" : "=r" (state));
    state[27] = 0;
    register uint32_t arg asm("r0");
    __asm__ volatile ("ldr r0, [pc, #4]" : "=r" (arg));
    FUN_07fc8680(arg);
}
