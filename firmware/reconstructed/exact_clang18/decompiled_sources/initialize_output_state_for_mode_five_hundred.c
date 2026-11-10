/* Set output mode one and initialize shared state with 0x500. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_output_state.h"

uint16_t initialize_output_state_for_mode_five_hundred(void)

{
    set_ring_s_output_mode_and_enable(1);
    return update_mode_dependent_output_state_during_flash_transfer(0x500);
}
