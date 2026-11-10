#ifndef SR08_RECORD_LOOKUP_H
#define SR08_RECORD_LOOKUP_H

#include <stdint.h>

enum {
    SR08_ATTRIBUTE_RECORD_LOOKUP_KEY = 0xfc,
    SR08_MEASUREMENT_RECORD_LOOKUP_KEY = 0xfd,
};

/* Return the address-like 32-bit field at offset 16 in the matching record. */
extern void *find_keyed_record_value(uint32_t key);

#endif
