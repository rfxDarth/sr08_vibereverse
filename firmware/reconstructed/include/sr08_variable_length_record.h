#ifndef SR08_VARIABLE_LENGTH_RECORD_H
#define SR08_VARIABLE_LENGTH_RECORD_H

#include <stddef.h>
#include <stdint.h>

/* Linked variable-length records used by measurement lookup and update paths. */
struct sr08_variable_length_record {
    struct sr08_variable_length_record *next_record;
    uint8_t record_id;
    uint8_t value_length;
    uint8_t values[];
};

_Static_assert(offsetof(struct sr08_variable_length_record, next_record) == 0,
               "variable-record next pointer must remain at offset zero");
_Static_assert(offsetof(struct sr08_variable_length_record, record_id) == 4,
               "variable-record ID must remain at offset four");
_Static_assert(offsetof(struct sr08_variable_length_record, value_length) == 5,
               "variable-record length must remain at offset five");
_Static_assert(offsetof(struct sr08_variable_length_record, values) == 6,
               "variable-record payload must begin at offset six");

#endif
