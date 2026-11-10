/* Recovered behavior:
 * Format the shared byte at offset 8 into three display digits and set the display tag to 0x10.
 */
#include "firmware/reconstructed/include/sr08_display_value_formatters.h"

enum {
    VALUE_POINTER_LITERAL_OFFSET = 952,
    SHARED_VALUE_BYTE_OFFSET = 8,
    DISPLAY_STATE_POINTER_LITERAL_OFFSET = 952,
};

SR08_DEFINE_SHARED_DISPLAY_VALUE_FORMATTER(format_display_value_from_shared_offset_8, VALUE_POINTER_LITERAL_OFFSET,
                                           SHARED_VALUE_BYTE_OFFSET, DISPLAY_STATE_POINTER_LITERAL_OFFSET)
