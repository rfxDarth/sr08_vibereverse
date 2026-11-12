/* Switch to display state zero unless the shared display-transition flag is one. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_context.h"

extern void switch_display_state_and_run_hooks(uint32_t);

void switch_to_state_zero_unless_flag_is_one(void) {
    if (sr08_shared_context.display_transition_flag != 1)
        switch_display_state_and_run_hooks(0);
}
