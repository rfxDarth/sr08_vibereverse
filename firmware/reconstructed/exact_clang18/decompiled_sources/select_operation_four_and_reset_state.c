/* Select operation four and reset display state when it equals 0x0e. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state_switches.h"
#include "firmware/reconstructed/include/sr08_record_dispatch.h"

void select_operation_four_and_reset_state(void)

{
    enqueue_typed_operation_record(4);
    switch_to_display_state_zero_if_fourteen();
}
