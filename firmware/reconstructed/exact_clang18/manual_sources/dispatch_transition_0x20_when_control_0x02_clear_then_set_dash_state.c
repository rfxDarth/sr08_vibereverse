/* Run mode transition 0x20 unless display control flag 0x02 is set, then show the dash marker. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_mode_transition.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

/* The display output fields are in the merged block at 0x07fd5650. */
#define display_output ((struct sr08_display_output_state *)(void *)&merged_globals_5650)

enum {
    CONTROL_FLAG_MASK = 0x02,
    TRANSITION_FLAG_MASK = 0x20,
    DASH_MARKER = '-',
};

void dispatch_transition_0x20_when_control_0x02_clear_then_set_dash_state(void)
{
    if ((sr08_shared_context.display_control_flags & CONTROL_FLAG_MASK) == 0)
        update_mode_flags_and_transitions(TRANSITION_FLAG_MASK);
    *(uint16_t *)(void *)display_output->digits = DASH_MARKER;
}
