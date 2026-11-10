#ifndef SR08_CLOCK_LITERAL_POOL_H
#define SR08_CLOCK_LITERAL_POOL_H

#include <stddef.h>
#include <stdint.h>

#include "sr08_cycle_control_state.h"

/* Partial layout written by update_clock_and_process_events. Names for the
 * first three timestamp words are inferred from their reads and writes; they
 * are not recovered vendor field names. Calendar and tick offsets are direct
 * from the conversion and counter accesses in that routine. */
struct sr08_clock_timekeeping_state {
    uint32_t current_timestamp;
    uint32_t accumulated_timestamp;
    uint32_t calendar_update_timestamp;
    uint32_t seconds_since_midnight;
    uint32_t hardware_tick_baseline;
    uint32_t rebase_state;
    uint32_t calendar_second;
    uint32_t calendar_minute;
    uint32_t calendar_hour;
};

/* Literal words consumed by update_clock_and_process_events at 0x07fc44a8. */
struct sr08_clock_literal_pool_view {
    uint16_t instruction_alignment_word;
    volatile uint32_t *sensor_conversion_request_register;
    volatile uint32_t *sensor_conversion_result_register;
    union {
        volatile struct sr08_clock_timekeeping_state *timekeeping_state;
        volatile uint32_t *timekeeping_state_words;
    } __attribute__((packed));
    uint32_t tick_rebase_threshold;
    volatile uint8_t *shared_context_bytes;
    volatile uint8_t *time_event_queue_bytes;
    union {
        volatile struct sr08_cycle_control_state *cycle_and_schedule_state;
        volatile uint8_t *cycle_and_schedule_state_bytes;
    } __attribute__((packed));
    volatile uint8_t *device_control_state_bytes;
    uint32_t schedule_threshold_4878;
    uint32_t schedule_threshold_487c;
    volatile uint8_t *mode_and_display_state_bytes;
    int32_t negative_time_adjustment_4884;
    uint32_t seconds_per_day;
    uint32_t last_second_of_day;
    uint32_t word_4890;
    volatile uint8_t *persistent_measurement_state_bytes;
    int32_t signed_threshold_4898;
    uint32_t word_489c;
    union {
        uint32_t callback_address_48a0;
        void (*callback_function_48a0)();
    } __attribute__((packed));
    volatile uint8_t *shared_measurement_state_bytes;
} __attribute__((packed));

union sr08_clock_literal_pool {
    uint8_t bytes[82];
    struct sr08_clock_literal_pool_view view;
} __attribute__((packed));

_Static_assert(sizeof(struct sr08_clock_literal_pool_view) == 82, "clock routine literal pool must remain 82 bytes");
_Static_assert(offsetof(struct sr08_clock_timekeeping_state, hardware_tick_baseline) == 16,
               "clock hardware tick baseline must remain at offset 16");
_Static_assert(offsetof(struct sr08_clock_timekeeping_state, calendar_second) == 24,
               "calendar seconds output must remain at offset 24");
_Static_assert(offsetof(struct sr08_clock_timekeeping_state, calendar_minute) == 28,
               "calendar minutes output must remain at offset 28");
_Static_assert(offsetof(struct sr08_clock_timekeeping_state, calendar_hour) == 32,
               "calendar hours output must remain at offset 32");
_Static_assert(sizeof(struct sr08_clock_timekeeping_state) == 36,
               "clock timekeeping state must cover the nine observed words");
_Static_assert(offsetof(struct sr08_clock_literal_pool_view, sensor_conversion_request_register) == 2,
               "clock sensor request literal must remain at 0x07fc4858");
_Static_assert(offsetof(struct sr08_clock_literal_pool_view, timekeeping_state) == 10,
               "clock timekeeping-state literal must remain at 0x07fc4860");
_Static_assert(offsetof(struct sr08_clock_literal_pool_view, timekeeping_state_words) == 10,
               "clock timekeeping word alias must remain at 0x07fc4860");
_Static_assert(offsetof(struct sr08_clock_literal_pool_view, cycle_and_schedule_state) == 26,
               "clock cycle-state literal must remain at 0x07fc4870");
_Static_assert(offsetof(struct sr08_clock_literal_pool_view, cycle_and_schedule_state_bytes) == 26,
               "clock cycle-state byte alias must remain at 0x07fc4870");
_Static_assert(offsetof(struct sr08_clock_literal_pool_view, seconds_per_day) == 50,
               "seconds-per-day constant must remain at 0x07fc4888");
_Static_assert(offsetof(struct sr08_clock_literal_pool_view, callback_function_48a0) == 74,
               "clock callback pointer alias must remain at 0x07fc48a0");
_Static_assert(sizeof(union sr08_clock_literal_pool) == 82,
               "clock literal-pool view must preserve the original section size");

#endif
