/* Advance the queue tail modulo capacity when the queue is nonempty. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_ring_buffer.h"

__attribute__((used, section(".text.advance_queue_tail_if_nonempty"))) void
advance_queue_tail_if_nonempty(struct sr08_ring_buffer *queue) {
    uint32_t head_index = queue->head;
    uint32_t tail_index = queue->tail;
    uint32_t capacity_mask = queue->capacity - 1;

    if (((head_index - tail_index) & capacity_mask) != 0)
        queue->tail = (tail_index + 1) & capacity_mask;
}
