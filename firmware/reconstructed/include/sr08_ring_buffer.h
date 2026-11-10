#ifndef SR08_RING_BUFFER_H
#define SR08_RING_BUFFER_H

#include <stdint.h>
#include <stddef.h>

/* Five-word ring descriptor: head is the next write slot; tail is the oldest slot. */
struct sr08_ring_buffer {
    uint32_t head;
    uint32_t tail;
    uint32_t capacity;
    uint32_t element_size;
    uintptr_t storage_base;
};

_Static_assert(offsetof(struct sr08_ring_buffer, head) == 0, "ring head offset must remain zero");
_Static_assert(offsetof(struct sr08_ring_buffer, tail) == 4, "ring tail offset must remain four");
_Static_assert(offsetof(struct sr08_ring_buffer, capacity) == 8, "ring capacity offset must remain eight");
_Static_assert(offsetof(struct sr08_ring_buffer, element_size) == 12, "ring element-size offset must remain twelve");
_Static_assert(offsetof(struct sr08_ring_buffer, storage_base) == 16, "ring storage offset must remain sixteen");

void advance_queue_tail_if_nonempty(struct sr08_ring_buffer *queue);
void enqueue_ring_record_if_space(struct sr08_ring_buffer *queue, const void *source_record);
void search_circular_record_queue_insert_missing_at_2f2c(const void *record, uint32_t record_size_bytes);

#endif
