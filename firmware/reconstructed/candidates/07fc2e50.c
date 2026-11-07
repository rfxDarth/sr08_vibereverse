/* Address-exact C reconstruction of V204 FUN_07fc2e50. */
#include <stdint.h>

extern void FUN_07fc3410(uint32_t);
extern uint8_t FUN_07fc33e4(uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fc2e50")))
void FUN_07fc2e50(void)
{
    register volatile uint8_t *state asm("r4");
    __asm__ volatile ("ldr r4, [pc, #924]" : "=r" (state));
    FUN_07fc3410(state[9]);
    register uint32_t arg asm("r1");
    register uint32_t timeout asm("r0");
    __asm__ volatile (
        "movs r0, #75\n"
        "lsls r0, r0, #3\n"
        "ldr r1, [pc, #8]"
        : "=r" (timeout), "=r" (arg));
    uint8_t result = FUN_07fc33e4(timeout, arg);
    state[9] = result;
}
