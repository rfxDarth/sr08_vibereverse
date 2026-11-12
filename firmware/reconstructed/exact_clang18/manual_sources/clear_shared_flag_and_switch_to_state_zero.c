/* Clear the shared display-transition flag when set, then switch display state to zero. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_context.h"

extern void switch_display_state_and_run_hooks(uint32_t);

void clear_shared_flag_and_switch_to_state_zero(void) {
    if (sr08_shared_context.display_transition_flag != 0)
        sr08_shared_context.display_transition_flag = 0;
    switch_display_state_and_run_hooks(0);
}
