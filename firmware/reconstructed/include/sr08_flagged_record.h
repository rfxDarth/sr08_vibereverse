#ifndef SR08_FLAGGED_RECORD_H
#define SR08_FLAGGED_RECORD_H

#include <stddef.h>
#include <stdint.h>

/* Prefix needed to read the flags field returned for record key 0xfc. */
struct sr08_flagged_record {
    uint8_t reserved_prefix[10];
    uint16_t flags;
};

_Static_assert(offsetof(struct sr08_flagged_record, flags) == 10, "record flags must remain at byte offset ten");

/* Return bit zero of the selected record's flags, or zero when it is absent. */
uint8_t read_record_flag_bit_zero(void);

#endif
