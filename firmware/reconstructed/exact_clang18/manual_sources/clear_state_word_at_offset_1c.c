/* Recovered behavior:
 * Clear the state word at offset 0x1c when it is nonzero.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_state_fields.h"

SR08_DEFINE_CLEAR_NONZERO_STATE_FIELD(clear_state_word_at_offset_1c, volatile struct sr08_shared_word_state, word_at_1c)
