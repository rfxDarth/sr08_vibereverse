#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_event_record_queue.h"
void advance_ring_s_queue_and_submit_entry(const void *record)
{
    struct sr08_ring_buffer *queue = &event_record_queue_state.ring;
    uint32_t tail_index = queue->tail;
    uint32_t free_slots = tail_index + ~queue->head;
    uint32_t capacity_mask = queue->capacity - 1;
    if ((free_slots & capacity_mask) != 0) {
        uint32_t slot = (tail_index - 1) & capacity_mask;
        __aeabi_memcpy((uint8_t *)queue->storage_base + slot * queue->element_size, record, queue->element_size);
        queue->tail = slot;
    }
}
