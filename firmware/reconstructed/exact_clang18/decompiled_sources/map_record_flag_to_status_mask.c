/* Map the low bit of the record flag to zero or the fixed status mask. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_output_state.h"

uint32_t map_record_flag_to_status_mask(void)

{
    uint32_t initialized_state;

    initialized_state = initialize_output_state_for_mode_five_hundred();
    return (initialized_state & 1) != 0 ? 0xfffffff2u : 0;
}
