/* SDK arch_system.c read_rcx_freq, specialized to20 calibration cycles.
 * CLK_REF_SEL_REG / CLK_REF_VAL_L_REG / CLK_REF_VAL_H_REG form the counter.
 * V204 publishes slot duration first, then frequency and period.
 */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
extern uint64_t divide_u64_restoring(uint64_t numerator, uint64_t denominator);
struct sr08_rcx_timekeeping_view {
    uint8_t reserved_00[8];
    uint32_t rcx_freq;
    uint32_t reserved_0c;
    uint32_t rcx_period;
    uint8_t reserved_14_to_4f[0x3c];
    uint32_t rcx_slot_duration_low;
    uint32_t rcx_slot_duration_high;
};
_Static_assert(offsetof(struct sr08_rcx_timekeeping_view, rcx_slot_duration_low) == 0x50,
               "slot duration low word must remain at offset0x50");
__attribute__((used, section(".text.wait_sensor_readiness_combine_counter_words_at_b7d4"))) void
wait_sensor_readiness_combine_counter_words_at_b7d4(void) {
    volatile uint8_t *rcx_cal_in_progress = (volatile uint8_t *)&merged_globals_5650;
    if (*rcx_cal_in_progress != 1)
        return;
    volatile uint16_t *clock_reference = (volatile uint16_t *)0x50001600u;
    while ((clock_reference[0] & 4u) != 0) {}
    uint32_t high = clock_reference[3];
    uint32_t low = clock_reference[2];
    *rcx_cal_in_progress = 0;
    uint32_t value = (high << 16) + low;
    uint64_t slot_duration = divide_u64_restoring((uint64_t)625 * 20 * 16 << 20, value);
    volatile struct sr08_rcx_timekeeping_view *state =
        (volatile struct sr08_rcx_timekeeping_view *)&merged_globals_56d0;
    state->rcx_slot_duration_low = (uint32_t)slot_duration;
    state->rcx_slot_duration_high = (uint32_t)(slot_duration >> 32);
    state->rcx_freq = (16000000u * 20) / value;
    state->rcx_period = (64u * value) / 20;
}
