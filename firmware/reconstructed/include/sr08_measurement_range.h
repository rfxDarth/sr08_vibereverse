#ifndef SR08_MEASUREMENT_RANGE_H
#define SR08_MEASUREMENT_RANGE_H

#include <stddef.h>
#include <stdint.h>

/* Shared range prefix used by measurement lookup and index matching. */
struct sr08_measurement_range {
    uint8_t reserved_prefix[4];
    uint16_t range_start;
    uint8_t entry_count;
};

_Static_assert(offsetof(struct sr08_measurement_range, range_start) == 4,
               "measurement range start offset must remain four");
_Static_assert(offsetof(struct sr08_measurement_range, entry_count) == 6,
               "measurement range count offset must remain six");

#endif
