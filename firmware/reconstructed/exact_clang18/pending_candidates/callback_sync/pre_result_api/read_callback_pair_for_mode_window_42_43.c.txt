/* Recovered behavior:
 * Multiply the mode by three, subtract byte offsets 0x42 and 0x43 modulo 256, then read the
 * callback values for that pair.
 */
#include "firmware/reconstructed/include/sr08_callback_mode_range.h"

enum {
    CALLBACK_WINDOW_42_OFFSET = 66,
    CALLBACK_WINDOW_43_OFFSET = 67,
};

SR08_DEFINE_CALLBACK_PAIR_FOR_MODE_WINDOW(read_callback_pair_for_mode_window_42_43, CALLBACK_WINDOW_42_OFFSET,
                                          CALLBACK_WINDOW_43_OFFSET)
