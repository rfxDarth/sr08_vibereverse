/* Sum two record-window results and commit only a threshold-crossing change. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_clock_literal_pool.h"
extern struct sr08_clock_timekeeping_state clock_timekeeping_state;
#include "firmware/reconstructed/include/sr08_cycle_control_state.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"
extern uint32_t find_latest_valid_record_within_bitset(uint32_t time, uint32_t first, uint32_t last);
struct sr08_window_sum_view { uint8_t reserved[0x2c]; uint32_t total; };
__attribute__((used, section(".text.accumulate_two_timing_deltas_update_wrapped_at_8bdc"))) void
accumulate_two_timing_deltas_update_wrapped_at_8bdc(void) {
    volatile uint32_t *now = &clock_timekeeping_state.current_timestamp;
    volatile struct sr08_window_sum_view *sum = (volatile struct sr08_window_sum_view *)&cycle_control_state;
    sum->total = find_latest_valid_record_within_bitset(*now - 86400u, 1260, 1440);
    uint32_t second = find_latest_valid_record_within_bitset(*now, 0, 660);
    uint32_t total = sum->total + second;
    sum->total = total;
    volatile uint32_t *published = (volatile uint32_t *)((uint8_t *)&sr08_shared_context + 0x44);
    uint32_t previous = *published;
    if (total == previous)
        return;
    if (total < 9001 && previous > 9000) {
        *published = total;
    } else if (total > 9000 && previous < 9001) {
        *published = total;
    }

}
