/* Merge the companion-mode bits into display byte 0x40 (mode 3: 0x49, 2: 0x48, 1: 0x40, 0: unchanged)
 * and redraw the word at display+0x2c as three digits from display+0x42. Same body as
 * update_mode_bits_and_notify_display_service. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_display_value_formatters.h"

__attribute__((used, section(".text.update_companion_mode_bits_and_notify_display"))) void
update_companion_mode_bits_and_notify_display(void)
{
    volatile uint8_t *display = (volatile uint8_t *)&merged_globals_56d0;
    uint32_t mode = ((volatile uint8_t *)&merged_globals_5650)[0x30] & 3u;
    uint32_t bits;
    if (mode == 3) bits = display[0x40] | 1;
    else if (mode >= 2) bits = display[0x40];
    else if (mode == 0) goto notify;
    else { bits = display[0x40]; goto write; }
    bits |= 8;
write:
    display[0x40] = bits | 64;
notify:
    convert_quotient_remainder_sequence_ring_s_at_3148(*(volatile uint32_t *)(display + 0x2c), display + 0x42, 3, 1);
}
