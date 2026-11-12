#ifndef SR08_MEASUREMENT_SLOT_H
#define SR08_MEASUREMENT_SLOT_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

enum {
    SR08_MEASUREMENT_SLOT_UPDATE_MESSAGE_ID = 0x0c18,
    SR08_MEASUREMENT_SLOT_UPDATE_DESTINATION_TASK = 8,
};

/* Six-byte measurement entry populated by custs1_att_info_rsp_handler. */
struct sr08_measurement_slot {
    uint16_t accumulated_value;
    uint16_t source_value;
    uint8_t source_count;
    uint8_t reserved;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_slot, accumulated_value) == 0,
               "measurement accumulated value offset must remain zero");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_slot, source_value) == 2,
               "measurement source value offset must remain two");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_slot, source_count) == 4,
               "measurement source count offset must remain four");
SR08_STATIC_ASSERT(sizeof(struct sr08_measurement_slot) == 6, "measurement slot must remain six bytes");

#endif
