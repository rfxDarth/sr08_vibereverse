/* Address-exact C reconstruction of V204 FUN_07fcca2c. */
#include <stdint.h>

extern void FUN_07fc3a38(uint32_t);
extern void FUN_07fc8e58(uint32_t);

__attribute__((used, section(".text.FUN_07fcca2c")))
void FUN_07fcca2c(void)
{
    register volatile uint32_t *state asm("r5");
    __asm__ volatile ("ldr r5, [pc, #52]" : "=r" (state));
    register uint32_t old asm("r4") = state[13];
    uint32_t next = old + 1;
    state[13] = next;
    if (next > 3)
        FUN_07fc3a38(0x400000);
    if (state[8] == 0x40) {
        uint32_t index = old & 3;
        uint32_t arg;
        if (index == 0)
            arg = 0x400;
        else
            arg = (index == 2) * 0x800;
        FUN_07fc8e58(arg);
    }
}
