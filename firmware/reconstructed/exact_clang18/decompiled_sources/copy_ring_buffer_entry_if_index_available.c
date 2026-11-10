/* Copy an indexed queue record only while it is inside the available range. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_ring_buffer.h"

__attribute__((used, section(".text.copy_ring_buffer_entry_if_index_available"))) void
copy_ring_buffer_entry_if_index_available(struct sr08_ring_buffer *queue, uint32_t index, void *destination) {
    register uint32_t capacity_mask __asm__("r4") = queue->capacity - 1;
    uint32_t available = (queue->head - queue->tail) & capacity_mask;
    if (index < available) {
        uint32_t tail = queue->tail;
        register uint32_t tail_adjusted_index __asm__("r1") = index;
        /* Add the index to the tail and reuse r4's mask for the wrapped offset. */
        __asm__ volatile("adds %1, %2, %1\n\tands %0, %1"
                         : "+r"(capacity_mask), "+r"(tail_adjusted_index)
                         : "r"(tail)
                         : "cc");
        uint32_t slot_offset = capacity_mask;

        uint32_t element_size = queue->element_size;
        uintptr_t storage_base = queue->storage_base;
        slot_offset *= element_size;
        const void *source = (const void *)(storage_base + slot_offset);
        __aeabi_memcpy(destination, source, element_size);
    }
}
