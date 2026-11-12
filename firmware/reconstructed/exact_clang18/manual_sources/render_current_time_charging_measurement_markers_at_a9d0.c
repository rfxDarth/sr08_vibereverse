/* Render the clock on the display.
 *
 * Idle (shared byte 0xc4 == 1): fill display bytes 0x40..0x44 with 127 and set 0x45 to 80.
 * Otherwise show the hour (12-hour when shared byte 0x34 is set and the hour is past 12) and the
 * minute through the two-digit formatter, and the separator (72 at byte 0x42) when bit 0 of
 * merged_globals_5650+0x30 is set.
 *
 * Matching note: V204's code generator saw `select (twelve_hour != 0), hour - 12, hour`. InstCombine
 * rewrites a single-use `!=` compare into `==` with the arms swapped (beq instead of V204's bne, and a
 * different block layout). The __builtin_assume gives the compare a second use, so it stays `!=`; it
 * emits no code and states something true (in 24-hour mode `value` is the hour, 0..23). */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_clock_literal_pool.h"
#include "firmware/reconstructed/include/sr08_display_value_formatters.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

extern struct sr08_clock_timekeeping_state clock_timekeeping_state;

__attribute__((used, section(".text.render_current_time_charging_measurement_markers_at_a9d0"))) void
render_current_time_charging_measurement_markers_at_a9d0(void)
{
    volatile uint8_t *shared = (volatile uint8_t *)&sr08_shared_context;
    volatile uint8_t *display = (volatile uint8_t *)&merged_globals_56d0;
    if (!(shared[0xc4] == 1)) {
        uint32_t twelve_hour = shared[0x34];
        volatile struct sr08_clock_timekeeping_state *clock = &clock_timekeeping_state;
        int32_t hour = clock->calendar_hour;
        int is12 = twelve_hour != 0;
        int32_t value = is12 ? hour - 12 : hour;
        __builtin_assume(is12 | (value != 1000));
        value = hour > 12 ? value : hour;
        convert_quotient_remainder_sequence_ring_s_at_3148(value, display + 0x40, 2, 0);
        convert_quotient_remainder_sequence_ring_s_at_3148(clock->calendar_minute, display + 0x43, 2, 0);
        if (__builtin_expect(((volatile uint8_t *)&merged_globals_5650)[0x30] & 1, 0))
            display[0x42] = 72;
        return;
    }
    for (uint32_t i = 0x40; i != 0x45; i++)
        display[i] = 127;
    display[0x45] = 80;
}
