/* Address-exact C reconstruction of V204 FUN_07fc8018. */
#include <stdint.h>

extern void FUN_07fc8680(void);
extern void FUN_07fc82b0(void);

__attribute__((used, section(".text.FUN_07fc8018")))
void FUN_07fc8018(int arg)
{
    uint32_t val = arg == 0 ? 0x7c : 0x7f;
    register uint32_t inverse asm("r1") = ~val;
    register volatile uint8_t *state asm("r0");
    __asm__ volatile ("ldr r0, [pc, #20]" : "=r" (state));
    state[5] = (uint8_t)inverse;
    FUN_07fc8680();
    FUN_07fc82b0();
    register uint32_t one asm("r1");
    __asm__ volatile (
        "ldr r0, [pc, #760]\n"
        "movs r1, #1"
        : "=r" (state), "=r" (one));
    state[17] = (uint8_t)one;
}
