/* C delay loop with the V204 timing padding retained explicitly. */
#include <stdint.h>

__attribute__((used, section(".text.c_delay_loop_v204_timing_padding_at_0194"))) void
c_delay_loop_v204_timing_padding_at_0194(uint32_t requested_iterations) {
    uint32_t remaining_iterations = requested_iterations;
again:
    if (remaining_iterations == 0)
        return;
    /* Preserve the ten NOPs before each decrement; this is V204's delay cadence. */
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
    --remaining_iterations;
    if (remaining_iterations != 0)
        goto again;
}
