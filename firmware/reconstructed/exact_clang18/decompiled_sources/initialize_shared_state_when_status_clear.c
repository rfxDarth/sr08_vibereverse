/* Initialize shared output state when the status helper returns zero. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_output_state.h"

void initialize_shared_state_when_status_clear(void)

{
    if (map_record_flag_to_status_mask() != 0) {
        return;
    }
    set_ring_s_output_mode_and_enable(0);
    update_mode_dependent_output_state_during_flash_transfer(0xb9);
}
