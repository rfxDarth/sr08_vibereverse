#include "firmware/reconstructed/include/sr08_ring_buffer.h"

/* Copy a record into the head slot and advance the head while space remains.
 * Field offsets are declared by sr08_ring_buffer. */
extern void func_0x07f1e0ac(void *destination, const void *source, uint32_t size);

__attribute__((used, section(".text.FUN_07fc2ea8")))
void enqueue_ring_record_if_space(
    struct sr08_ring_buffer *queue, const void *source_record)
{
    register struct sr08_ring_buffer *saved_queue __asm__("r4") = queue;
    register uint32_t head __asm__("r0") = saved_queue->head;
    register uint32_t occupied_distance __asm__("r2") =
        saved_queue->tail + ~head;
    register uint32_t capacity_mask __asm__("r3") =
        saved_queue->capacity - 1;

    __asm__ goto volatile (
        "tst r3, r2\n\t"
        "beq %l[queue_full]"
        : : "r" (occupied_distance), "r" (capacity_mask) : "cc" : queue_full);

    uint32_t element_size = saved_queue->element_size;
    uintptr_t destination = saved_queue->storage_base + head * element_size;
    func_0x07f1e0ac((void *)destination, source_record, element_size);

    saved_queue->head = (saved_queue->head + 1) & (saved_queue->capacity - 1);

queue_full:
    return;
}

