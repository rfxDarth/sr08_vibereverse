/* Switch to state zero only when the current display state is fourteen. */
#include "firmware/reconstructed/include/sr08_display_state_switches.h"

enum { DISPLAY_STATE_ZERO = 0 };

__attribute__((used, section(".text.switch_to_display_state_zero_if_fourteen"))) void
switch_to_display_state_zero_if_fourteen(void) {
    register volatile struct sr08_display_mode_state *state __asm__("r0");
    __asm__ volatile("ldr r0, [pc, #832]" : "=r"(state));
    if (state->current_mode == 14)
        switch_display_state_and_run_hooks(DISPLAY_STATE_ZERO);
}
