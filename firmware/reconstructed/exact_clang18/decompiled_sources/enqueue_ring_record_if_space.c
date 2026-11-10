#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_ring_buffer.h"

/* Copy a record into the head slot and advance the head while space remains.
 * Field offsets are declared by sr08_ring_buffer. */

__attribute__((used, section(".text.enqueue_ring_record_if_space"))) void
enqueue_ring_record_if_space(struct sr08_ring_buffer *queue, const void *source_record) {
    /* In a one-empty-slot queue, (tail - head - 1) & (capacity - 1) is zero
     * when the queue is full. */
    uint32_t head_index = queue->head;
    uint32_t available_slots = queue->tail + ~head_index;
    uint32_t capacity_mask = queue->capacity - 1;

    if ((available_slots & capacity_mask) != 0) {
        uint32_t element_size = queue->element_size;
        uintptr_t destination = queue->storage_base + head_index * element_size;
        __aeabi_memcpy((void *)destination, source_record, element_size);

        /* Advance the next-write slot modulo the power-of-two queue capacity. */
        queue->head = (queue->head + 1) & (queue->capacity - 1);
    }
}
