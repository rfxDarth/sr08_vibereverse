/* C countdown loop with V204 timing padding and loop edge preserved. */
#include <stdint.h>

__attribute__((used, section(".text.c_countdown_loop_v204_timing_padding_at_20b4"))) void
c_countdown_loop_v204_timing_padding_at_20b4(uint32_t count) {
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
