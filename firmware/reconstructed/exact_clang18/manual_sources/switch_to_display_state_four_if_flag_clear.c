/* Switch to display state four only when control flag bit one is clear. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state_switches.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

enum {
    DISPLAY_STATE_FOUR = 4,
    DISPLAY_CONTROL_FLAG_BIT_1_MASK = 0x02,
};

void switch_to_display_state_four_if_flag_clear(void) {
    if ((sr08_shared_context.display_control_flags & DISPLAY_CONTROL_FLAG_BIT_1_MASK) == 0)
        switch_display_state_and_run_hooks(DISPLAY_STATE_FOUR);
}
