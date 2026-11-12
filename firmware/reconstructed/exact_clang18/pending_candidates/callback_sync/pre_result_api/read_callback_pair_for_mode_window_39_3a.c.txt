/* Recovered behavior:
 * Multiply the mode by three, subtract byte offsets 0x39 and 0x3a modulo 256, then read the
 * callback values for that pair.
 */
#include "firmware/reconstructed/include/sr08_callback_mode_range.h"

enum {
    CALLBACK_WINDOW_39_OFFSET = 57,
    CALLBACK_WINDOW_3A_OFFSET = 58,
};

SR08_DEFINE_CALLBACK_PAIR_FOR_MODE_WINDOW(read_callback_pair_for_mode_window_39_3a, CALLBACK_WINDOW_39_OFFSET,
                                          CALLBACK_WINDOW_3A_OFFSET)
