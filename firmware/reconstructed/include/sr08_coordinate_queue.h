#ifndef SR08_COORDINATE_QUEUE_H
#define SR08_COORDINATE_QUEUE_H

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_ring_buffer.h"

struct sr08_coordinate_queue_state {
    uint8_t reserved_00_to_5b[0x5c];
    struct sr08_ring_buffer queue;
};

void enqueue_ring_record_overwriting_oldest(struct sr08_ring_buffer *queue, const void *source_record);

_Static_assert(offsetof(struct sr08_coordinate_queue_state, queue) == 0x5c,
               "coordinate event queue must remain at offset 0x5c");

#endif
