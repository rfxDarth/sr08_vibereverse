#ifndef SR08_INDEXED_RECORD_TABLE_H
#define SR08_INDEXED_RECORD_TABLE_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stdint.h>

enum { SR08_INDEXED_RECORD_BLOCK_SIZE = 122 };

struct sr08_indexed_record_block {
    uint8_t value;
    uint8_t reserved_tail[SR08_INDEXED_RECORD_BLOCK_SIZE - 1];
};

SR08_STATIC_ASSERT(sizeof(struct sr08_indexed_record_block) == SR08_INDEXED_RECORD_BLOCK_SIZE,
               "indexed record blocks must remain 122 bytes");

#endif
