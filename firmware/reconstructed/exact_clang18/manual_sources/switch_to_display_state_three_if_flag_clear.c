/* Switch to display state three only when control flag bit zero is clear. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state_switches.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

enum { DISPLAY_STATE_THREE = 3 };

void switch_to_display_state_three_if_flag_clear(void) {
    if ((sr08_shared_context.display_control_flags & 1u) == 0)
        switch_display_state_and_run_hooks(DISPLAY_STATE_THREE);
}
