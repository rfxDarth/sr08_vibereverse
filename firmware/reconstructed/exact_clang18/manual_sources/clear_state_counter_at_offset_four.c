/* Recovered behavior:
 * Clear the state counter at offset four when it is nonzero.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_state_fields.h"

SR08_DEFINE_CLEAR_NONZERO_STATE_FIELD(clear_state_counter_at_offset_four, volatile struct sr08_shared_counter_state,
                                      counter_at_04)
