#ifndef SR08_EVENT_RECORD_QUEUE_H
#define SR08_EVENT_RECORD_QUEUE_H

#include "firmware/reconstructed/include/sr08_ring_buffer.h"
#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

/* Vendor state at 0x07fd1f1c. Its ring descriptor at +0x34 queues the
 * 20-byte records submitted by the sensor/display event path; a second,
 * eight-entry ring of the same records follows at +0x48, and the coordinate
 * and heading records go to the ring at +0x5c. */
struct event_record_queue_state {
    uint8_t reserved_00_to_33[0x34];
    struct sr08_ring_buffer ring;
    struct sr08_ring_buffer secondary_ring;
    struct sr08_ring_buffer coordinate_ring;
};

SR08_STATIC_ASSERT(offsetof(struct event_record_queue_state, ring) == 0x34, "record ring must remain at offset 0x34");
SR08_STATIC_ASSERT(offsetof(struct event_record_queue_state, secondary_ring) == 0x48,
                   "secondary record ring must remain at offset 0x48");
SR08_STATIC_ASSERT(offsetof(struct event_record_queue_state, coordinate_ring) == 0x5c,
                   "coordinate record ring must remain at offset 0x5c");

enum { EVENT_RECORD_SIZE = 20, EVENT_RECORD_COUNT = 16, SECONDARY_EVENT_RECORD_COUNT = 8 };

/* Ring storage at 0x07fd0610 and 0x07fd0750. */
extern uint8_t event_record_storage[EVENT_RECORD_COUNT][EVENT_RECORD_SIZE];
extern uint8_t secondary_event_record_storage[SECONDARY_EVENT_RECORD_COUNT][EVENT_RECORD_SIZE];

extern struct event_record_queue_state event_record_queue_state;

#endif
