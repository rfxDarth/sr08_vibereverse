/* Address-exact C reconstruction of V204 FUN_07fc2da8. */
#include <stdint.h>

extern int FUN_07fcc494(void);

__attribute__((used, section(".text.FUN_07fc2da8")))
uint16_t FUN_07fc2da8(void)
{
    int result = FUN_07fcc494();
    register volatile uint16_t *state asm("r0");
    __asm__ volatile ("ldr r0, [pc, #152]" : "=r" (state));
    uint16_t value = state[5];
    uint16_t out = value;
    if (value < 0x15)
        out = 0x14;
    if (result != 0)
        out = value;
    return out;
}
