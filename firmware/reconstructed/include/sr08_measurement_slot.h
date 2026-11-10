#ifndef SR08_MEASUREMENT_SLOT_H
#define SR08_MEASUREMENT_SLOT_H

#include <stddef.h>
#include <stdint.h>

enum {
    SR08_MEASUREMENT_SLOT_UPDATE_MESSAGE_ID = 0x0c18,
    SR08_MEASUREMENT_SLOT_UPDATE_DESTINATION_TASK = 8,
};

/* Six-byte measurement entry populated by populate_measurement_record_if_empty. */
struct sr08_measurement_slot {
    uint16_t accumulated_value;
    uint16_t source_value;
    uint8_t source_count;
    uint8_t reserved;
};

_Static_assert(offsetof(struct sr08_measurement_slot, accumulated_value) == 0,
               "measurement accumulated value offset must remain zero");
_Static_assert(offsetof(struct sr08_measurement_slot, source_value) == 2,
               "measurement source value offset must remain two");
_Static_assert(offsetof(struct sr08_measurement_slot, source_count) == 4,
               "measurement source count offset must remain four");
_Static_assert(sizeof(struct sr08_measurement_slot) == 6, "measurement slot must remain six bytes");

#endif
