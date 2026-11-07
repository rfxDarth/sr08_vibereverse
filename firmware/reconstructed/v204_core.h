#ifndef V204_CORE_H
#define V204_CORE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

/* Recovered wire event bytes and sensor sample decoding from V204. */
typedef struct {
    uint8_t bytes[3];
} v204_event_t;

typedef struct {
    int16_t x;
    int16_t y;
    int16_t z;
} v204_accel_t;

/* Calendar fields in the same convention as the recovered time helper:
 * month is 0..11 and year is years since 1900. */
typedef struct {
    uint8_t second;
    uint8_t minute;
    uint8_t hour;
    uint8_t day;
    uint8_t month;
    uint8_t weekday;
    uint16_t year;
    uint16_t year_day;
} v204_calendar_t;

/* Counter fields mirror offsets read or written by FUN_07fc4f34 and the
 * daily reset helper FUN_07fc4fa0. Unknown counter meanings stay neutral. */
typedef struct {
    uint32_t total;
    uint32_t mode_count;
    uint32_t qualified_count;
    uint32_t count_40;
    uint32_t count_48;
    uint32_t count_4c;
    uint32_t count_50;
    uint32_t count_54;
    uint32_t count_68;
    uint8_t control_flags;
    uint8_t mode;
    uint8_t report_flags;
    uint8_t collection_state;
} v204_step_counters_t;

typedef struct {
    uint8_t port;
    uint8_t pin;
} v204_gpio_t;

typedef struct {
    uint8_t reg;
    uint8_t value;
} v204_reg_write_t;

extern const v204_gpio_t v204_display_segments[7];
extern const v204_gpio_t v204_display_digits[6];
extern const uint8_t v204_digit_segments[16];
extern const v204_reg_write_t v204_accel_common_init[2];
extern const v204_reg_write_t v204_accel_init[10];
extern const v204_reg_write_t v204_accel_variant_init;

void v204_encode_event(uint8_t event, uint8_t subtype, uint8_t value,
                       v204_event_t *out);
void v204_decode_accel(const uint8_t sample[6], v204_accel_t *out);
uint32_t v204_decode_step_count(const uint8_t payload[4]);
/* V204 command 0x01 carries a four-byte little-endian Unix timestamp. */
uint32_t v204_decode_epoch_le(const uint8_t payload[4]);
/* Ports the mode-2 candidate-rate curve in FUN_07fc3584. `sample_sum` is
 * accumulated from the firmware's internal ring buffer; `sensor_floor` is
 * the contemporaneous value carried in the sensor context. This is one
 * transformation stage, not a standalone heart-rate measurement. */
uint8_t v204_hr_candidate_rate(uint16_t sample_sum, uint8_t sensor_floor);
bool v204_step_counters_add(v204_step_counters_t *counters, uint32_t amount,
                            bool qualified_event);
void v204_step_counters_reset(v204_step_counters_t *counters);
void v204_encode_step_status(uint32_t field1, uint32_t total_steps,
                             uint32_t thresholded_count, uint16_t scale,
                             uint8_t factor, uint8_t record[20]);
void v204_epoch_to_calendar(uint32_t epoch_seconds, v204_calendar_t *out);
bool v204_motion_event_due(uint8_t mode, uint32_t now, uint32_t last_event,
                           uint32_t interval);
uint16_t v204_state_period(uint8_t state, bool *known);
bool v204_state_flags(uint8_t state, uint16_t *flags);
bool v204_format_number(uint32_t value, uint8_t digits, bool blank_leading,
                        uint8_t *out);
bool v204_render_three_digit(uint8_t value, bool blank_leading,
                             uint8_t display[6]);
bool v204_render_five_digit(uint32_t value, bool blank_leading,
                            uint8_t display[6]);
bool v204_render_two_pairs(uint32_t left, uint32_t right, bool indicator,
                           uint8_t display[6]);
void v204_render_all_segments(uint8_t display[6]);
uint8_t v204_display_next_digit(uint8_t current_digit, bool *refresh_frame);
bool v204_display_refresh_due(uint32_t now, uint32_t *last_refresh);

#endif
