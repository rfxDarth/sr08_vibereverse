/* Drop the oldest record if the queue is full, then enqueue the new record. */
#include "firmware/reconstructed/include/sr08_ring_buffer.h"

__attribute__((used, section(".text.FUN_07fc2ed6")))
void enqueue_ring_record_overwriting_oldest(
    struct sr08_ring_buffer *queue, const void *source_record)
{
    register uint32_t next_tail __asm__("r0") = queue->tail + ~queue->head;
    register uint32_t capacity_mask __asm__("r1") = queue->capacity - 1;

    __asm__ goto volatile (
        "tst r1, r0\n\t"
        "bne %l[queue_has_space]"
        : : "r" (next_tail), "r" (capacity_mask) : "cc" : queue_has_space);
    advance_queue_tail_if_nonempty(queue);

queue_has_space:

    enqueue_ring_record_if_space(queue, source_record);
}

