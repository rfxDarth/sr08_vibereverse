#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_event_record_queue.h"
void copy_ring_buffer_entry_if_index_available(struct sr08_ring_buffer *queue, uint32_t index, void *destination)
{
    uint32_t tail = queue->tail;
    uint32_t mask = queue->capacity - 1;
    if (((queue->head - tail) & mask) > index)
        __aeabi_memcpy(destination, (const uint8_t *)queue->storage_base + ((tail + index) & mask) * queue->element_size, queue->element_size);
}
