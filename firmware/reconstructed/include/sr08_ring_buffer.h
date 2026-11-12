#ifndef SR08_RING_BUFFER_H
#define SR08_RING_BUFFER_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

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

SR08_STATIC_ASSERT(offsetof(struct sr08_ring_buffer, head) == 0, "ring head offset must remain zero");
SR08_STATIC_ASSERT(offsetof(struct sr08_ring_buffer, tail) == 4, "ring tail offset must remain four");
SR08_STATIC_ASSERT(offsetof(struct sr08_ring_buffer, capacity) == 8, "ring capacity offset must remain eight");
SR08_STATIC_ASSERT(offsetof(struct sr08_ring_buffer, element_size) == 12, "ring element-size offset must remain twelve");
SR08_STATIC_ASSERT(offsetof(struct sr08_ring_buffer, storage_base) == 16, "ring storage offset must remain sixteen");

uint32_t peek_ring_buffer_entry(const struct sr08_ring_buffer *queue, void *output);

void advance_queue_tail_if_nonempty(struct sr08_ring_buffer *queue);
void enqueue_ring_record_overwriting_oldest(struct sr08_ring_buffer *queue, const void *source_record);
void enqueue_ring_record_if_space(struct sr08_ring_buffer *queue, const void *source_record);
void search_circular_record_queue_insert_missing_at_2f2c(const void *record, uint32_t record_size_bytes);

#endif
