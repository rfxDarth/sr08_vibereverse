/* C reconstruction of the 1,000-unit measurement update. */
#include <stdint.h>

extern uint32_t FUN_07fc4440(void);
extern uint32_t func_0x07f1dfb8(uint32_t value, uint32_t interval);

__attribute__((used, section(".text.FUN_07fc2e6c")))
void FUN_07fc2e6c(void)
{
    uint32_t value = FUN_07fc4440();
    value = func_0x07f1dfb8(value, 1000);
    register volatile uint32_t *state __asm__("r1");
    __asm__ volatile ("ldr r1, [pc, #884]" : "=r" (state));
    state[29] = value;
}
