/* Address-exact reconstruction of V204 FUN_07fc5200. */
#include <stdint.h>

extern void FUN_07fc3e90(uint32_t, uint32_t);
extern void FUN_07fc3ea0(uint32_t, uint32_t, uint32_t, uint32_t);

__attribute__((noinline, used, section(".text.FUN_07fc5200")))
void FUN_07fc5200(void)
{
    register volatile uint32_t *source __asm__("r0");
    register uint32_t *base __asm__("r4");
    uint32_t value;

    __asm__ volatile ("ldr r0, [pc, #36]" : "=r" (source) : : "memory");
    value = *source;
    __asm__ volatile ("ldr r4, [pc, #748]" : "=r" (base) : : "memory");
    *(volatile uint32_t *)(base + 12) = value;

    FUN_07fc3e90(0x3c000, 0x2000);
    FUN_07fc3ea0((uint32_t)(base + 12), 0x3c000, 0x70, 1);
}
