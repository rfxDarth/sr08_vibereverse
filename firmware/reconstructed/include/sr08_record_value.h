#ifndef SR08_RECORD_VALUE_H
#define SR08_RECORD_VALUE_H

#include <stddef.h>
#include <stdint.h>

struct sr08_record_value {
    uint8_t reserved_00_to_05[6];
    uint8_t current_value;
};

_Static_assert(offsetof(struct sr08_record_value, current_value) == 6,
               "current record value must remain at offset six");

#endif
