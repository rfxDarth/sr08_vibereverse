/* Reset mode state, clear the associated flag, then run the mode callback. */
#include <stdint.h>

extern void FUN_07fc50b4(void);

__attribute__((used, section(".text.FUN_07fc4fa0")))
void FUN_07fc4fa0(void)
{
    register volatile uint32_t *state __asm__("r0");
    register uint32_t zero __asm__("r1");

    __asm__ volatile ("" ::: "r7");
    __asm__ volatile ("ldr r0, [pc, #648]\n\tmovs r1, #0"
                      : "=r" (state), "=r" (zero));
    state[14] = zero;
    state[15] = zero;
    state[16] = zero;
    state[18] = zero;
    state[19] = zero;
    state[20] = zero;
    state[21] = zero;

    __asm__ volatile ("ldr r0, [pc, #112]" : "=r" (state));
    state[26] = zero;
    __asm__ volatile ("ldr r0, [pc, #8]" : "=r" (state));
    *(volatile uint8_t *)((volatile uint8_t *)state + 6) = (uint8_t)zero;
    FUN_07fc50b4();
}
