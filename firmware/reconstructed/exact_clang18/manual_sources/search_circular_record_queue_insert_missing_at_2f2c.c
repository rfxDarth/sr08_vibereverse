#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_event_record_queue.h"
void search_circular_record_queue_insert_missing_at_2f2c(const void *record, uint32_t record_size_bytes)
{
    struct sr08_ring_buffer *queue = &event_record_queue_state.ring;
    uint32_t head = queue->head;
    uint32_t index = queue->tail;
    uint32_t mask = queue->capacity - 1;
    while (index != head) {
        uint8_t *entry = (uint8_t *)queue->storage_base + index * queue->element_size;
        if (memcmp(entry, record, record_size_bytes) == 0) {
            __aeabi_memcpy(entry, record, queue->element_size);
            break;
        }
        index = (index + 1) & mask;
    }
    if (index == queue->head)
        enqueue_ring_record_if_space(queue, record);
}
