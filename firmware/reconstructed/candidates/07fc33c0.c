/* Address-exact C reconstruction of V204 FUN_07fc33c0. */
#include <stdint.h>

extern uint8_t *FUN_07fc5f38(void);
extern void FUN_07fc33a4(uint32_t);
extern void FUN_07fc3220(uint32_t);

__attribute__((used, section(".text.FUN_07fc33c0")))
void FUN_07fc33c0(uint32_t arg)
{
    register uint32_t zero asm("r5") = 0;
    *FUN_07fc5f38() = (uint8_t)zero;
    FUN_07fc33a4(arg);
    FUN_07fc3220(arg);
    register volatile uint8_t *state asm("r1");
    register uint32_t offset asm("r0");
    __asm__ volatile (
        "movs r0, #100\n"
        "ldr r1, [pc, #4]"
        : "=r" (offset), "=r" (state));
    state[offset] = (uint8_t)zero;
}
