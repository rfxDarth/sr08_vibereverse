#ifndef SR08_TIMING_RECORD_H
#define SR08_TIMING_RECORD_H

#include <stddef.h>
#include <stdint.h>

struct sr08_timing_record {
    uint16_t type;
    uint16_t reserved;
    uint32_t timing_value;
    uint32_t scaled_second_word;
    uint32_t data_word;
};

_Static_assert(offsetof(struct sr08_timing_record, type) == 0, "timing-record type offset must remain zero");
_Static_assert(offsetof(struct sr08_timing_record, timing_value) == 4, "timing-record value offset must remain four");
_Static_assert(offsetof(struct sr08_timing_record, scaled_second_word) == 8,
               "scaled timing-record value offset must remain eight");
_Static_assert(offsetof(struct sr08_timing_record, data_word) == 12, "timing-record data offset must remain twelve");
_Static_assert(sizeof(struct sr08_timing_record) == 16, "timing-record size must remain sixteen");

#endif
