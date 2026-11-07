/* Address-exact C reconstruction of V204 FUN_07fc8680. */
#include <stdint.h>

extern void FUN_07fc7f58(void);
extern void FUN_07fc8a54(uint32_t);

__attribute__((used, section(".text.FUN_07fc8680")))
void FUN_07fc8680(uint32_t arg)
{
    register volatile uint16_t *status asm("r0");
    __asm__ volatile ("ldr r0, [pc, #488]" : "=r" (status));
    uint16_t value = *status;
    register uint32_t mask asm("r1");
    __asm__ volatile ("ldr r1, [pc, #488]" : "=r" (mask));
    mask &= value;
    if (mask != 0x44)
        FUN_07fc7f58();
    FUN_07fc8a54(arg);
}
