#ifndef SR08_DISPATCH_RECORD_H
#define SR08_DISPATCH_RECORD_H

#include <stddef.h>
#include <stdint.h>

/* Record table consumed by the callback dispatchers: 32 records, 24 bytes each. */
struct sr08_dispatch_record {
    uint8_t reserved_00_to_15[22];
    uint8_t type;
    uint8_t reserved_17;
};

_Static_assert(offsetof(struct sr08_dispatch_record, type) == 22, "dispatch record type must remain at offset 22");
_Static_assert(sizeof(struct sr08_dispatch_record) == 24, "dispatch records must remain 24 bytes");

#endif
