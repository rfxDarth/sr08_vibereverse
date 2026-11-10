/* Copy an indexed queue record only while it is inside the available range. */
#include "firmware/reconstructed/include/sr08_ring_buffer.h"

extern void func_0x07f1e0ac(void *destination, const void *source,
                            uint32_t byte_count);

__attribute__((used, section(".text.FUN_07fc2fa4")))
void copy_ring_buffer_entry_if_index_available(
    struct sr08_ring_buffer *queue, uint32_t index, void *destination)
{
  uint32_t capacity_mask = queue->capacity - 1;
  uint32_t available = (queue->head - queue->tail) & capacity_mask;
  if (index < available) {
    register uint32_t slot __asm__("r4") = capacity_mask;
    register uint32_t tail __asm__("r3") = queue->tail;
    register uint32_t wrapped_index __asm__("r1") = index;
    __asm__ volatile ("" : "+r" (slot), "+r" (tail), "+r" (wrapped_index));

    /* Keep the wrapped index in r4, as in the original Thumb sequence. */
    __asm__ volatile ("adds %0, %2, %0\n\tands %1, %0"
                      : "+r" (wrapped_index), "+r" (slot)
                      : "r" (tail) : "cc");

    uint32_t element_size = queue->element_size;
    uintptr_t storage_base = queue->storage_base;
    slot *= element_size;
    const void *source = (const void *)(storage_base + slot);
    func_0x07f1e0ac(destination, source, element_size);
  }
}
