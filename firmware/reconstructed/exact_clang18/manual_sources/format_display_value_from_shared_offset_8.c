/* Format shared byte 8 into three digits, then set the display tag.
 * Native Armclang instruction selection; shared module link resolves literal pools.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_value_formatters.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

__attribute__((used, section(".text.format_display_value_from_shared_offset_8"))) void
format_display_value_from_shared_offset_8(void) {
    uint32_t value = ((volatile uint8_t *)&sr08_shared_context)[8];
    volatile uint8_t *display = (volatile uint8_t *)&merged_globals_56d0;
    convert_quotient_remainder_sequence_ring_s_at_3148(value, display + 0x40, 3, 1);
    display[0x45] = 0x10;
}
