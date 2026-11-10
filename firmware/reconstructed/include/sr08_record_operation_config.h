#ifndef SR08_RECORD_OPERATION_CONFIG_H
#define SR08_RECORD_OPERATION_CONFIG_H

#include <stddef.h>
#include <stdint.h>

/* The pending-record handler reads the subsystem's active word at offset 4. */
struct sr08_record_operation_config_prefix {
    uint32_t reserved_word_00;
    uint32_t active;
};

_Static_assert(offsetof(struct sr08_record_operation_config_prefix, active) == 4,
               "record-operation active word must remain at offset four");

#endif
