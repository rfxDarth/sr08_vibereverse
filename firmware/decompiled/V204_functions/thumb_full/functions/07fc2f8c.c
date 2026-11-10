/* Advance the queue tail modulo capacity when the queue is nonempty. */
#include "firmware/reconstructed/include/sr08_ring_buffer.h"

__attribute__((used, section(".text.FUN_07fc2f8c")))
void advance_queue_tail_if_nonempty(struct sr08_ring_buffer *queue)
{
    uint32_t head = queue->head;
    uint32_t tail = queue->tail;
    uint32_t mask = queue->capacity - 1;

    if (((head - tail) & mask) != 0)
        queue->tail = (tail + 1) & mask;
}
