/* C countdown loop with V204 timing padding and loop edge preserved. */
#include <stdint.h>

__attribute__((used, section(".text.adc_usDelay"))) void
adc_usDelay(uint32_t count) {
again:
    if (count == 0)
        return;
    __builtin_arm_nop();
    __builtin_arm_nop();
    __builtin_arm_nop();
    __builtin_arm_nop();
    __builtin_arm_nop();
    __builtin_arm_nop();
    __builtin_arm_nop();
    __builtin_arm_nop();
    __builtin_arm_nop();
    __builtin_arm_nop();
    __builtin_arm_nop();
    --count;
    goto again;
}
