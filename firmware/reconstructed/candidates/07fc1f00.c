/* Address-exact reconstruction of V204 FUN_07fc1f00. */
#include <stdint.h>

extern void FUN_07fc8a78(uint32_t, uint32_t, uint32_t, uint32_t);

__attribute__((used, section(".text.FUN_07fc1f00")))
void FUN_07fc1f00(void)
{
    register uint32_t data asm("r0");
    __asm__ volatile ("ldr r0, [pc, #44]" : "=r" (data));
    FUN_07fc8a78(data, 4, 0, 0x20);
}
