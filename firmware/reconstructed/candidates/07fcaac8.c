/* Address-exact C reconstruction of V204 FUN_07fcaac8. */
#include <stdint.h>

extern void FUN_07fc3148(uint32_t, uint32_t, uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fcaac8")))
void FUN_07fcaac8(void)
{
    register uint32_t arg asm("r0");
    __asm__ volatile ("ldr r0, [pc, #24]\n\tldrb r0, [r0, #11]"
                      : "=r" (arg) : : "memory");

    register volatile uint8_t *state asm("r4");
    __asm__ volatile ("ldr r4, [pc, #676]"
                      : "=r" (state) : : "memory");
    FUN_07fc3148(arg, (uint32_t)(state + 0x40), 3, 1);
    state[0x45] = 0x10;
}
