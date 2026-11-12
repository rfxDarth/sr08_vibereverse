#ifndef SR08_DISPATCH_RECORD_H
#define SR08_DISPATCH_RECORD_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

/* Record table consumed by the callback dispatchers: 32 records, 24 bytes each. */
struct sr08_dispatch_record {
    uint8_t reserved_00_to_15[22];
    uint8_t type;
    uint8_t reserved_17;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_dispatch_record, type) == 22, "dispatch record type must remain at offset 22");
SR08_STATIC_ASSERT(sizeof(struct sr08_dispatch_record) == 24, "dispatch records must remain 24 bytes");

#endif
