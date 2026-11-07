/* Address-exact C reconstruction of V204 FUN_07fc5484. */
#include <stdint.h>

extern uint32_t func_0x07f02976(void);

__attribute__((used, section(".text.FUN_07fc5484")))
uint32_t FUN_07fc5484(uint32_t ignored, uint8_t *dst)
{
    register uint32_t i asm("r5") = 0;
    register uint8_t *base asm("r4") = dst;

loop:
    asm goto volatile ("cmp %0, #32\n\tbeq %l[done]"
                       : : "r" (i) : "cc" : done);
    base[i] = (uint8_t)func_0x07f02976();
    ++i;
    asm goto volatile ("b %l[loop]" : : : : loop);

done:
    return 0;
}
