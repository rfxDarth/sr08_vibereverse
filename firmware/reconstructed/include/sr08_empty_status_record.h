#ifndef SR08_EMPTY_STATUS_RECORD_H
#define SR08_EMPTY_STATUS_RECORD_H

#include <stddef.h>
#include <stdint.h>

struct sr08_empty_status_record {
    uint8_t primary_is_empty;
    uint8_t reserved_01_to_02[2];
    uint8_t secondary_is_empty;
};

_Static_assert(offsetof(struct sr08_empty_status_record, primary_is_empty) == 0,
               "primary empty-status byte must remain at offset zero");
_Static_assert(offsetof(struct sr08_empty_status_record, secondary_is_empty) == 3,
               "secondary empty-status byte must remain at offset three");

#endif
