/* Deduplicate the event record queue: an identical record already queued at the oldest position stays; an
 * identical later record is removed by shifting its successors down; then the record is submitted.
 * Plain ac6 object together with initialize_configuration_record_defaults (V204 keeps their literals
 * out of the LTO module's literal sharing). The first loop reads queue->element_size inside the loop so
 * Reassociate orders the multiply as size * index, as V204 does. */
#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_event_record_queue.h"

extern void advance_ring_s_queue_and_submit_entry(const void *record);

/* Keep an identical oldest record in place. An identical later record is
 * removed by shifting its successors, then submitted at the queue's tail.
 * The queue helper also handles a record absent from the queue.
 */
__attribute__((used,section(".text.search_circular_record_queue_and_compact_if_needed")))
void search_circular_record_queue_and_compact_if_needed(const void *record)
{
    struct sr08_ring_buffer *queue = &event_record_queue_state.ring;
    uint32_t head = queue->head;
    uint32_t index = queue->tail;
    uint32_t mask = queue->capacity - 1;
    uint32_t size = queue->element_size;
    uint8_t *base = (uint8_t *)queue->storage_base;
    uint32_t traversed = 0;
    uint32_t tail = index;
    while (index != head) {
        if (memcmp(base + index * queue->element_size, record, EVENT_RECORD_SIZE) == 0) break;
        index = (index + 1) & mask;
        ++traversed;
    }
    if (index != head) {
        if (index == tail) return;
        if (((head - tail) & mask) > traversed) {
            uint32_t last = (head - 1) & mask;
            uint32_t destination = (tail + traversed) & mask;
            while (destination != last) {
                uint32_t capacity = queue->capacity;
                uint32_t element_size = queue->element_size;
                uint8_t *storage = (uint8_t *)queue->storage_base;
                uint8_t *output = storage + destination * element_size;
                destination = (destination + 1) & (capacity - 1);
                __aeabi_memcpy(output, storage + destination * element_size, element_size);
            }
            queue->head = last;
        }
    }
    advance_ring_s_queue_and_submit_entry(record);
}
