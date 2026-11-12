/* Switch to state zero only when the current display state is fourteen. */
#include "firmware/reconstructed/include/sr08_display_state_switches.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

enum { DISPLAY_STATE_ZERO = 0 };

__attribute__((used, section(".text.switch_to_display_state_zero_if_fourteen"))) void
switch_to_display_state_zero_if_fourteen(void) {
    volatile uint8_t *mode_byte = merged_globals_5650.reserved_0c;
    if (*mode_byte == 14)
        switch_display_state_and_run_hooks(DISPLAY_STATE_ZERO);
}
