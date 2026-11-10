#ifndef SR08_MEASUREMENT_RECORD_H
#define SR08_MEASUREMENT_RECORD_H

#include <stddef.h>
#include <stdint.h>

void append_or_finalize_measurement_record_chunk(void);

/* Six-byte record initialized by create_empty_measurement_record. */
struct sr08_measurement_record {
    uint8_t type;
    uint8_t byte_at_1;
    uint16_t halfword_at_2;
    uint16_t accumulated_value;
};

_Static_assert(offsetof(struct sr08_measurement_record, byte_at_1) == 1,
               "measurement-record byte must remain at offset one");
_Static_assert(offsetof(struct sr08_measurement_record, halfword_at_2) == 2,
               "measurement record halfword offset must remain two");
_Static_assert(offsetof(struct sr08_measurement_record, accumulated_value) == 4,
               "measurement accumulated-value offset must remain four");
_Static_assert(sizeof(struct sr08_measurement_record) == 6, "measurement record must remain six bytes");

#endif
