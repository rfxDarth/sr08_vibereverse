/* Switch to state four only when flag bit one is clear. */
#include "firmware/reconstructed/include/sr08_display_state_switches.h"

enum {
    DISPLAY_STATE_FOUR = 4,
    DISPLAY_CONTROL_FLAG_BIT_1_MASK = 0x02,
};

__attribute__((used, section(".text.switch_to_display_state_four_if_flag_clear"))) void
switch_to_display_state_four_if_flag_clear(void) {
    register volatile struct sr08_display_control_state *state __asm__("r0");
    __asm__ volatile("ldr r0, [pc, #16]" : "=r"(state));
    if ((state->control_flags & DISPLAY_CONTROL_FLAG_BIT_1_MASK) == 0)
        switch_display_state_and_run_hooks(DISPLAY_STATE_FOUR);
}
