/* Update the device settings record and run its conditional mode callback. */
#include <stdint.h>

extern void FUN_07fc4440(void);
extern void FUN_07fc2e50(void);

__attribute__((used, section(".text.FUN_07fc2e1c")))
void FUN_07fc2e1c(uint32_t value, uint16_t setting, uint16_t mode)
{
    register uint32_t saved_value __asm__("r4") = value;
    register uint32_t saved_setting __asm__("r6") = setting;
    register uint32_t saved_mode __asm__("r5") = mode;
    register volatile uint8_t *state __asm__("r0");

    FUN_07fc4440();
    __asm__ volatile ("movs r0, #66\n\t"
                      "ldr r1, [pc, #964]\n\t"
                      "strh r5, [r1, r0]\n\t"
                      "movs r0, #0\n\t"
                      "str r0, [r1, #112]"
                      : : "r" (saved_mode) : "r0", "r1", "memory", "cc");
    __asm__ volatile ("ldr r0, [pc, #24]" : "=r" (state));
    *(volatile uint16_t *)(state + 14) = (uint16_t)saved_setting;
    *(volatile uint16_t *)(state + 12) = (uint16_t)saved_value;
    if (saved_value < *(volatile uint16_t *)(state + 10))
        *(volatile uint16_t *)(state + 10) = (uint16_t)saved_value;
    if (saved_value < 0x50)
        FUN_07fc2e50();
}
