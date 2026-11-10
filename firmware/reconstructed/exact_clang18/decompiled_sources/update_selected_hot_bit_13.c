/* Call the shared selected-bit updater with bit index 13. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_hot_bits.h"
#include "firmware/reconstructed/include/sr08_trivial_callbacks.h"

SR08_DEFINE_VOID_U32_FORWARDER(update_selected_hot_bit_13, update_selected_hot_bit_associated_bit_at_1d44, 0xd)
