/* Recovered behavior:
 * Convert a timestamp into second, minute, hour, day, zero-based month, year, weekday, and
 * day-of-year fields with Gregorian leap-year corrections.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_calendar_constants.h"
#include "firmware/reconstructed/include/sr08_calendar_time.h"

#define SECONDS_PER_MINUTE 60u
#define SECONDS_PER_HOUR 3600u
#define SECONDS_PER_DAY 86400u
#define SECONDS_PER_COMMON_YEAR (365u * SECONDS_PER_DAY)
#define DAYS_PER_COMMON_YEAR 365
#define EPOCH_YEAR 1970u
#define TM_YEAR_BASE 1900u
/* Leap days from year 0 up to the year before the epoch. */
#define LEAP_DAYS(year) ((year) / 4u - (year) / 100u + (year) / 400u)

extern uint32_t is_gregorian_leap_year(uint32_t year);

/* The final output word (day_of_month_copy) holds the 1-based day of the year. */
__attribute__((used, section(".text.convert_timestamp_to_calendar_fields"))) void
convert_timestamp_to_calendar_fields(uint32_t timestamp_seconds, struct sr08_calendar_time *output) {
    static const uint8_t month_days[12] = {
        SR08_DAYS_JANUARY, SR08_DAYS_FEBRUARY_COMMON_YEAR, SR08_DAYS_MARCH, SR08_DAYS_APRIL,
        SR08_DAYS_MAY,     SR08_DAYS_JUNE,                 SR08_DAYS_JULY,  SR08_DAYS_AUGUST,
        SR08_DAYS_SEPTEMBER, SR08_DAYS_OCTOBER,            SR08_DAYS_NOVEMBER, SR08_DAYS_DECEMBER,
    };
    uint32_t days = timestamp_seconds / SECONDS_PER_DAY;
    uint32_t years, year, seconds, month, hour, minute;
    int32_t day;

    output->weekday = (uint16_t)(days + 4) % 7; /* 1970-01-01 was a Thursday. */
    years = timestamp_seconds / SECONDS_PER_COMMON_YEAR;
    year = years + EPOCH_YEAR - 1;
    day = days - DAYS_PER_COMMON_YEAR * years - (LEAP_DAYS(year) - LEAP_DAYS(EPOCH_YEAR - 1));
    seconds = timestamp_seconds - days * SECONDS_PER_DAY;
    if (day < 0)
        day += DAYS_PER_COMMON_YEAR + is_gregorian_leap_year(year);
    else
        /* The annotations emit no code: they stop the optimizer from refolding year + 1 into the epoch constant,
         * splitting length off the subtraction, and replacing the counted-out month with the loop counter,
         * which keeps V204's instruction shapes. */
        year = __builtin_annotation(year, "year") + 1;
    output->year = year - TM_YEAR_BASE;
    output->day_of_month_copy = day + 1;
    for (month = 0; month != 11; month++) {
        int32_t length = month_days[month] + ((month == 1) & (is_gregorian_leap_year(year) != 0));
        int32_t rest = day - __builtin_annotation(length, "len");
        if (rest < 0)
            goto done;
        day = rest;
    }
    month = __builtin_annotation(11u, "months");
done:
    output->day_of_month = day + 1;
    output->month_zero_based = month;
    hour = seconds / SECONDS_PER_HOUR;
    output->hour = hour;
    seconds -= hour * SECONDS_PER_HOUR;
    minute = seconds / SECONDS_PER_MINUTE;
    output->second = seconds - minute * SECONDS_PER_MINUTE;
    output->minute = minute;
}
