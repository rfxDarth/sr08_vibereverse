/* Switch to state three only when flag bit zero is clear. */
#include "firmware/reconstructed/include/sr08_display_state_switches.h"

enum { DISPLAY_STATE_THREE = 3 };

__attribute__((used, section(".text.switch_to_display_state_three_if_flag_clear"))) void
switch_to_display_state_three_if_flag_clear(void) {
    register volatile struct sr08_display_control_state *state __asm__("r0");
    __asm__ volatile("ldr r0, [pc, #60]" : "=r"(state));
    if ((state->control_flags & 1u) == 0)
        switch_display_state_and_run_hooks(DISPLAY_STATE_THREE);
}
