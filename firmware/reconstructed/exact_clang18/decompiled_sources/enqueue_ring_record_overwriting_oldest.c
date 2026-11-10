/* Drop the oldest record if the queue is full, then enqueue the new record. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_ring_buffer.h"

__attribute__((used, section(".text.enqueue_ring_record_overwriting_oldest"))) void
enqueue_ring_record_overwriting_oldest(struct sr08_ring_buffer *queue, const void *source_record) {
    /* The one-empty-slot queue is full when tail - head - 1 wraps to zero
     * under the capacity mask. */
    uint32_t available_slots = queue->tail + ~queue->head;
    uint32_t capacity_mask = queue->capacity - 1;

    if ((available_slots & capacity_mask) == 0)
        advance_queue_tail_if_nonempty(queue);

    enqueue_ring_record_if_space(queue, source_record);
}
