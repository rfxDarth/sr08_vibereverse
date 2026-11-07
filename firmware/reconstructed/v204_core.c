#include "v204_core.h"

/* Exact port/pin tables recovered from V204's state-switch setup. */
const v204_gpio_t v204_display_segments[7] = {
    {2, 1}, {1, 3}, {2, 0}, {1, 2}, {1, 0}, {1, 1}, {0, 2}
};

const v204_gpio_t v204_display_digits[6] = {
    {2, 8}, {2, 7}, {2, 6}, {2, 5}, {2, 2}, {2, 9}
};

const uint8_t v204_digit_segments[16] = {
    0x77, 0x24, 0x5d, 0x6d, 0x2e, 0x6b, 0x7b, 0x25,
    0x7f, 0x6f, 0x3f, 0x3a, 0x53, 0x7c, 0x5b, 0x1b
};

/* Register writes recovered from the two terminated tables used by
 * FUN_07fc1da8 after it identifies the motion sensor (WHO_AM_I == 0x11).
 * The second table is followed by the optional 0x1e=0x05 variant write. */
const v204_reg_write_t v204_accel_common_init[2] = {
    {0x68, 0xa5}, {0x24, 0x80}
};

const v204_reg_write_t v204_accel_init[10] = {
    {0x57, 0x08}, {0x2e, 0x00}, {0x20, 0x47}, {0x23, 0xa8},
    {0x24, 0x4e}, {0x2e, 0x9f}, {0x21, 0x82}, {0x36, 0x03},
    {0x37, 0x02}, {0x34, 0x0a}
};

const v204_reg_write_t v204_accel_variant_init = {0x1e, 0x05};

void v204_encode_event(uint8_t event, uint8_t subtype, uint8_t value,
                       v204_event_t *out)
{
    out->bytes[0] = event;
    out->bytes[1] = subtype;
    out->bytes[2] = value;
}

static int16_t decode_axis(const uint8_t *p)
{
    uint16_t raw = (uint16_t)p[0] | ((uint16_t)p[1] << 8);
    return (int16_t)((int16_t)raw >> 2);
}

void v204_decode_accel(const uint8_t sample[6], v204_accel_t *out)
{
    out->x = decode_axis(sample);
    out->y = decode_axis(sample + 2);
    out->z = decode_axis(sample + 4);
}

uint32_t v204_decode_step_count(const uint8_t payload[4])
{
    /* The JRing app handles response 0x51 by reversing four hex-byte fields
     * before parsing them, so the wire payload is little-endian. */
    return (uint32_t)payload[0] |
           ((uint32_t)payload[1] << 8) |
           ((uint32_t)payload[2] << 16) |
           ((uint32_t)payload[3] << 24);
}

uint32_t v204_decode_epoch_le(const uint8_t payload[4])
{
    /* JRing serializes the 32-bit time as four little-endian bytes. */
    return (uint32_t)payload[0] |
           ((uint32_t)payload[1] << 8) |
           ((uint32_t)payload[2] << 16) |
           ((uint32_t)payload[3] << 24);
}

uint8_t v204_hr_candidate_rate(uint16_t sample_sum, uint8_t sensor_floor)
{
    uint32_t curve = sample_sum;

    /* FUN_07fc3584 applies this lookup-like piecewise mapping when its mode
     * field equals 2, then takes the greater of the result and sensor_floor. */
    if (sample_sum < 0x82u)
        curve = (uint32_t)sample_sum * 10u / 0x41u + 0x50u;
    else if (sample_sum < 0xa0u)
        curve = (uint32_t)sample_sum * 2u - 0xa0u;

    if (curve < sensor_floor)
        curve = sensor_floor;
    if (curve > 0xb8u)
        curve = 0xb9u;
    return (uint8_t)curve;
}

bool v204_step_counters_add(v204_step_counters_t *counters, uint32_t amount,
                            bool qualified_event)
{
    bool emit_mode_count = (counters->control_flags & 0x80u) != 0u &&
                           counters->mode < 5u &&
                           ((0x16u >> counters->mode) & 1u) != 0u;

    counters->total += amount;
    if (emit_mode_count)
        counters->mode_count += amount;
    counters->report_flags |= 0x02u;
    if (qualified_event)
        counters->qualified_count += amount;
    return emit_mode_count;
}

void v204_step_counters_reset(v204_step_counters_t *counters)
{
    counters->total = 0;
    counters->qualified_count = 0;
    counters->count_40 = 0;
    counters->count_48 = 0;
    counters->count_4c = 0;
    counters->count_50 = 0;
    counters->count_54 = 0;
    counters->count_68 = 0;
    counters->collection_state = 0;
}

static void write_le32(uint8_t *out, uint32_t value)
{
    out[0] = (uint8_t)value;
    out[1] = (uint8_t)(value >> 8);
    out[2] = (uint8_t)(value >> 16);
    out[3] = (uint8_t)(value >> 24);
}

void v204_encode_step_status(uint32_t field1, uint32_t total_steps,
                             uint32_t thresholded_count, uint16_t scale,
                             uint8_t factor, uint8_t record[20])
{
    uint32_t scaled = total_steps * (uint32_t)scale;
    uint32_t metric_a = (scaled * (uint32_t)factor * 14u) / 1600000u;
    uint32_t metric_b = ((scaled & 0x7fffffffu) >> 4) / 5u;
    uint32_t gated_count = thresholded_count >= 0x2329u ? thresholded_count : 0u;

    record[0] = 0x03;
    write_le32(record + 1, field1);
    write_le32(record + 5, total_steps);
    record[9] = (uint8_t)gated_count;
    record[10] = (uint8_t)(gated_count >> 8);
    record[11] = (uint8_t)(gated_count >> 16);
    write_le32(record + 12, metric_b);
    write_le32(record + 16, metric_a);
}

static bool is_leap_year(uint16_t year)
{
    return (year % 4u == 0u) && ((year % 100u != 0u) || (year % 400u == 0u));
}

void v204_epoch_to_calendar(uint32_t epoch_seconds, v204_calendar_t *out)
{
    uint32_t days = epoch_seconds / 86400u;
    uint32_t seconds_of_day = epoch_seconds % 86400u;
    uint16_t year = 1970;
    uint16_t year_day = (uint16_t)days;

    while (year_day >= (uint16_t)(is_leap_year(year) ? 366u : 365u)) {
        year_day -= (uint16_t)(is_leap_year(year) ? 366u : 365u);
        ++year;
    }

    uint8_t month = 0;
    while (month < 11) {
        uint8_t month_days = (uint8_t[]){31, 28, 31, 30, 31, 30,
                                         31, 31, 30, 31, 30, 31}[month];
        if (month == 1 && is_leap_year(year))
            ++month_days;
        if (year_day < month_days)
            break;
        year_day -= month_days;
        ++month;
    }

    out->second = (uint8_t)(seconds_of_day % 60u);
    out->minute = (uint8_t)((seconds_of_day / 60u) % 60u);
    out->hour = (uint8_t)(seconds_of_day / 3600u);
    out->day = (uint8_t)(year_day + 1u);
    out->month = month;
    out->weekday = (uint8_t)((days + 4u) % 7u);
    out->year = (uint16_t)(year - 1900u);
    out->year_day = year_day;
}

bool v204_motion_event_due(uint8_t mode, uint32_t now, uint32_t last_event,
                           uint32_t interval)
{
    /* Mirrors the observed unsigned tick-difference gate at 0x7fc41e4. */
    return mode == 0x10 && interval + 1u < now - last_event;
}

uint16_t v204_state_period(uint8_t state, bool *known)
{
    static const uint8_t periods[0x24] = {
        [0x00] = 6,  [0x02] = 2,  [0x03] = 2,  [0x04] = 2,
        [0x06] = 30, [0x08] = 6,  [0x09] = 45, [0x0a] = 5,
        [0x0c] = 45, [0x0d] = 5,  [0x0e] = 30,
        [0x14] = 6,  [0x15] = 11
    };

    *known = state < 0x24 && periods[state] != 0;
    return *known ? periods[state] : 0;
}

bool v204_state_flags(uint8_t state, uint16_t *flags)
{
    static const uint8_t state_flags[0x24] = {
        3, 2, 2, 2, 2, 3, 2, 3, 3, 2, 2, 1,
        2, 2, 3, 2, 1, 2, 2, 0, 3, 3, 2, 2,
        2, 2, 2, 1, 2, 1, 1, 2, 1, 2, 2, 2
    };

    if (state >= 0x24 || state == 0x13)
        return false;
    *flags = state_flags[state];
    return true;
}

bool v204_format_number(uint32_t value, uint8_t digits, bool blank_leading,
                        uint8_t *out)
{
    uint32_t divisor = 1;

    if (digits == 0 || digits > 8)
        return false;

    for (uint8_t i = 0; i < digits; ++i) {
        uint8_t digit = (uint8_t)((value / divisor) % 10u);
        if (blank_leading && i != 0 && value < divisor)
            digit = 16;
        out[digits - 1u - i] = digit == 16 ? 0 : v204_digit_segments[digit];
        divisor *= 10u;
    }
    return true;
}

bool v204_render_three_digit(uint8_t value, bool blank_leading,
                             uint8_t display[6])
{
    if (!v204_format_number(value, 3, blank_leading, display))
        return false;
    display[5] = 0x10;
    return true;
}

bool v204_render_five_digit(uint32_t value, bool blank_leading,
                            uint8_t display[6])
{
    if (!v204_format_number(value, 5, blank_leading, display))
        return false;
    display[5] = 0x40;
    return true;
}

bool v204_render_two_pairs(uint32_t left, uint32_t right, bool indicator,
                           uint8_t display[6])
{
    if (!v204_format_number(left, 2, false, display) ||
        !v204_format_number(right, 2, false, display + 3))
        return false;
    display[2] = indicator ? 0x48 : 0;
    return true;
}

void v204_render_all_segments(uint8_t display[6])
{
    for (uint8_t i = 0; i < 5; ++i)
        display[i] = 0x7f;
    display[5] = 0x50;
}

uint8_t v204_display_next_digit(uint8_t current_digit, bool *refresh_frame)
{
    uint8_t next = (uint8_t)(current_digit + 1u) % 6u;
    *refresh_frame = next == 0;
    return next;
}

bool v204_display_refresh_due(uint32_t now, uint32_t *last_refresh)
{
    uint32_t elapsed = now - *last_refresh;
    if (now < *last_refresh)
        elapsed = now + 0x05000000u - *last_refresh;
    if ((elapsed >> 2) <= 0x7cu)
        return false;
    *last_refresh = now;
    return true;
}
