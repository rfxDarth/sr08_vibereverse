/* Copy the oldest queued record without advancing the tail. */
#include "firmware/reconstructed/include/sr08_ring_buffer.h"
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
uint32_t peek_ring_buffer_entry(const struct sr08_ring_buffer *queue, void *output)
{
    uint32_t available = queue->head - queue->tail;
    uint32_t slot = queue->tail;
    uint32_t mask = queue->capacity - 1;
    uint32_t status = 0;
    if ((mask & available) == 0) {
        status = ~status;
    } else {
        uint32_t length = queue->element_size;
        uintptr_t base = queue->storage_base;
        slot = base + length * slot;
        __aeabi_memcpy(output, (const void *)(uintptr_t)slot, length);
    }
    return status;
}
