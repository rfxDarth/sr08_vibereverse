#ifndef SR08_PER_SLOT_STATE_RECORD_H
#define SR08_PER_SLOT_STATE_RECORD_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

enum { SR08_PER_SLOT_STATE_RECORD_TYPE = 0x0e02 };

struct sr08_per_slot_state_record {
    uint8_t reserved_prefix[0x28];
    uint8_t state_value;
    uint8_t submitted;
    uint8_t reserved_tail[2];
};

SR08_STATIC_ASSERT(offsetof(struct sr08_per_slot_state_record, state_value) == 0x28,
               "per-slot state value must remain at offset 0x28");
SR08_STATIC_ASSERT(offsetof(struct sr08_per_slot_state_record, submitted) == 0x29,
               "per-slot submitted flag must remain at offset 0x29");
SR08_STATIC_ASSERT(sizeof(struct sr08_per_slot_state_record) == 0x2c, "per-slot state record must remain 44 bytes");

#endif
