#ifndef SR08_CALENDAR_TIME_H
#define SR08_CALENDAR_TIME_H

#include <stddef.h>
#include <stdint.h>

/* Output written by convert_timestamp_to_calendar_fields. */
struct sr08_calendar_time {
    uint32_t second;
    uint32_t minute;
    uint32_t hour;
    uint32_t day_of_month;
    uint32_t month_zero_based;
    uint32_t year;
    uint32_t weekday;
    uint32_t day_of_month_copy;
};

_Static_assert(offsetof(struct sr08_calendar_time, second) == 0, "calendar second must remain at output offset 0");
_Static_assert(offsetof(struct sr08_calendar_time, day_of_month) == 12, "calendar day must remain at output offset 12");
_Static_assert(offsetof(struct sr08_calendar_time, month_zero_based) == 16,
               "zero-based month must remain at output offset 16");
_Static_assert(offsetof(struct sr08_calendar_time, weekday) == 24, "weekday must remain at output offset 24");
_Static_assert(sizeof(struct sr08_calendar_time) == 32, "calendar output record must remain eight words");

void convert_timestamp_to_calendar_fields(uint32_t timestamp_seconds, struct sr08_calendar_time *output);

#endif
