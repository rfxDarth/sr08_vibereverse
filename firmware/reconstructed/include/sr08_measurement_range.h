#ifndef SR08_MEASUREMENT_RANGE_H
#define SR08_MEASUREMENT_RANGE_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

/* Shared range prefix used by measurement lookup and index matching. */
struct sr08_measurement_range {
    uint8_t reserved_prefix[4];
    uint16_t range_start;
    uint8_t entry_count;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_range, range_start) == 4,
               "measurement range start offset must remain four");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_range, entry_count) == 6,
               "measurement range count offset must remain six");

#endif
