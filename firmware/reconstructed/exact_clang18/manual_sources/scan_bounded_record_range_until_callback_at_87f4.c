/* Report whether the time-event ring holds at least seven events and all of
 * them are 1: 1 when so, 0 when fewer are queued, -1 at the first other event. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_time_event_queue.h"

void copy_ring_buffer_entry_if_index_available(struct sr08_ring_buffer *queue, uint32_t index, void *destination);

int8_t scan_bounded_record_range_until_callback_at_87f4(void)
{
    uint8_t event = 0;
    struct sr08_ring_buffer *ring = &time_event_queue_state.ring;
    uint32_t count = (ring->head - ring->tail) & (ring->capacity - 1);
    if (count < 7)
        return 0;
    for (uint32_t index = 0;; index++) {
        if (index == count)
            return 1;
        copy_ring_buffer_entry_if_index_available(ring, index, &event);
        if (event != 1)
            return -1;
    }
}
