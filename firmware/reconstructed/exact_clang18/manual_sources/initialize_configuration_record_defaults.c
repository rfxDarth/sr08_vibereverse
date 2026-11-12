/* Initialise the primary (16 x 20-byte) and secondary (8 x 20-byte) event record rings. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_event_record_queue.h"
static inline void ring_init(struct sr08_ring_buffer *r, void *storage, uint32_t size, uint32_t count)
{
    r->capacity = count;
    r->element_size = size;
    r->storage_base = (uintptr_t)storage;
    r->head = 0;
    r->tail = 0;
}
__attribute__((used, section(".text.initialize_configuration_record_defaults"))) void
initialize_configuration_record_defaults(void)
{
    ring_init(&event_record_queue_state.ring, event_record_storage, EVENT_RECORD_SIZE, EVENT_RECORD_COUNT);
    ring_init(&event_record_queue_state.secondary_ring, secondary_event_record_storage, EVENT_RECORD_SIZE, SECONDARY_EVENT_RECORD_COUNT);
}
