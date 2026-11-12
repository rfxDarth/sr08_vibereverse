#ifndef SR08_MEASUREMENT_RECORD_H
#define SR08_MEASUREMENT_RECORD_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

void custs1_exe_operation(void);

/* Six-byte record initialized by create_empty_measurement_record. */
struct sr08_measurement_record {
    uint8_t type;
    uint8_t byte_at_1;
    uint16_t halfword_at_2;
    uint16_t accumulated_value;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_record, byte_at_1) == 1,
               "measurement-record byte must remain at offset one");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_record, halfword_at_2) == 2,
               "measurement record halfword offset must remain two");
SR08_STATIC_ASSERT(offsetof(struct sr08_measurement_record, accumulated_value) == 4,
               "measurement accumulated-value offset must remain four");
SR08_STATIC_ASSERT(sizeof(struct sr08_measurement_record) == 6, "measurement record must remain six bytes");

#endif
