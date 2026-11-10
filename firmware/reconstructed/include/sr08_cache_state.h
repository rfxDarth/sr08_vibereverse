#ifndef SR08_CACHE_STATE_H
#define SR08_CACHE_STATE_H

#include <stddef.h>
#include <stdint.h>

struct sr08_cache_state {
    uint8_t reserved_00_to_63[0x64];
    uint8_t cache_state_byte_64;
};

_Static_assert(offsetof(struct sr08_cache_state, cache_state_byte_64) == 0x64,
               "cache state byte must remain at offset 0x64");

#endif
