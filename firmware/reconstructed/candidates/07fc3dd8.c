/* Copy three signed-coordinate values into the display state and notify it. */
#include <stdint.h>

extern void FUN_07fc2ed6(void *, void *);

__attribute__((used, section(".text.FUN_07fc3dd8")))
void FUN_07fc3dd8(volatile uint16_t *x, volatile uint16_t *y,
                  volatile int16_t *angle)
{
    register volatile uint8_t *buffer __asm__("r0");
    register volatile uint16_t *xreg __asm__("r0") = x;
    register volatile uint16_t *yreg __asm__("r1") = y;
    register volatile int16_t *angle_reg __asm__("r2") = angle;

    *angle_reg = (int16_t)-*angle_reg;
    __asm__ volatile ("ldrh r0, [r0, #0]\n\t"
                      "movs r3, #206\n\t"
                      "ldr r4, [pc, #24]\n\t"
                      "strh r0, [r4, r3]\n\t"
                      "ldrh r0, [r1, #0]\n\t"
                      "movs r1, #208\n\t"
                      "strh r0, [r4, r1]\n\t"
                      "ldrh r0, [r2, #0]\n\t"
                      "movs r1, #210\n\t"
                      "strh r0, [r4, r1]"
                      : "+r" (xreg), "+r" (yreg)
                      : "r" (angle_reg) : "r3", "r4", "cc", "memory");
    __asm__ volatile ("ldr r0, [pc, #12]" : "=r" (buffer));
    FUN_07fc2ed6((void *)(buffer + 0x5c), (void *)angle_reg);
}
