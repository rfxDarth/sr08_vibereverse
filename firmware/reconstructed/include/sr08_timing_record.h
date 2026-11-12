#ifndef SR08_TIMING_RECORD_H
#define SR08_TIMING_RECORD_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

struct sr08_timing_record {
    uint16_t type;
    uint16_t reserved;
    uint32_t timing_value;
    uint32_t scaled_second_word;
    uint32_t data_word;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_timing_record, type) == 0, "timing-record type offset must remain zero");
SR08_STATIC_ASSERT(offsetof(struct sr08_timing_record, timing_value) == 4, "timing-record value offset must remain four");
SR08_STATIC_ASSERT(offsetof(struct sr08_timing_record, scaled_second_word) == 8,
               "scaled timing-record value offset must remain eight");
SR08_STATIC_ASSERT(offsetof(struct sr08_timing_record, data_word) == 12, "timing-record data offset must remain twelve");
SR08_STATIC_ASSERT(sizeof(struct sr08_timing_record) == 16, "timing-record size must remain sixteen");

/* Indexed timing-record table at 0x07fd5464 (see ../data/V204_ram_symbols.json). */
extern struct sr08_timing_record sr08_timing_records[];

#endif
