#ifndef SR08_CALENDAR_CONSTANTS_H
#define SR08_CALENDAR_CONSTANTS_H

#include <stddef.h>
#include <stdint.h>

enum sr08_common_year_month_days {
    SR08_DAYS_JANUARY = 31,
    SR08_DAYS_FEBRUARY_COMMON_YEAR = 28,
    SR08_DAYS_MARCH = 31,
    SR08_DAYS_APRIL = 30,
    SR08_DAYS_MAY = 31,
    SR08_DAYS_JUNE = 30,
    SR08_DAYS_JULY = 31,
    SR08_DAYS_AUGUST = 31,
    SR08_DAYS_SEPTEMBER = 30,
    SR08_DAYS_OCTOBER = 31,
    SR08_DAYS_NOVEMBER = 30,
    SR08_DAYS_DECEMBER = 31,
};

struct sr08_calendar_conversion_constants_view {
    uint32_t seconds_per_day;
    uint32_t seconds_per_common_year;
    uint32_t year_division_adjustment;
    int32_t negative_days_per_common_year;
    int32_t negative_seconds_per_day;
    int32_t calendar_year_adjustment;
    uint8_t common_year_month_lengths[12];
    int32_t negative_seconds_per_hour;
} __attribute__((packed));

union sr08_calendar_conversion_constants {
    uint8_t bytes[40];
    struct sr08_calendar_conversion_constants_view view;
} __attribute__((packed));

_Static_assert(offsetof(struct sr08_calendar_conversion_constants_view, common_year_month_lengths) == 24,
               "common-year month lengths must remain at offset 24");
_Static_assert(offsetof(struct sr08_calendar_conversion_constants_view, negative_seconds_per_hour) == 36,
               "seconds-per-hour adjustment must remain at offset 36");
_Static_assert(sizeof(struct sr08_calendar_conversion_constants_view) == 40,
               "calendar conversion constants must remain 40 bytes");
_Static_assert(sizeof(union sr08_calendar_conversion_constants) == 40,
               "calendar constants view must preserve its original section size");

#endif
