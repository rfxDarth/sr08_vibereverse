/* Return a cached value or allocate and cache the table entry on first use. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_message.h"

__attribute__((used, section(".text.get_or_allocate_cached_message_buffer_for_index"))) uint8_t *
get_or_allocate_cached_message_buffer_for_index(uint32_t index) {
    uint32_t slot_byte_offset;
    register uint8_t *volatile *cache_slots __asm__("r3");
    uint8_t *cached_value;

    /* Each index selects a four-byte cached pointer in the fixed table. */
    __asm__ volatile("lsls %[offset], r0, #2\n\t"
                     "ldr r3, [pc, #28]\n\t"
                     "ldr %[value], [r3, %[offset]]"
                     : [offset] "=r"(slot_byte_offset), "=r"(cache_slots), [value] "=r"(cached_value)
                     : "r"(index)
                     : "cc", "memory");
    if (cached_value == 0) {
        uint8_t *volatile *cache_slot;
        uint32_t message_id;
        uint32_t destination;
        uint32_t source;
        uint32_t payload_size;

        __asm__ volatile("adds %[slot], %[table], %[offset]"
                         : [slot] "=r"(cache_slot)
                         : [table] "r"(cache_slots), [offset] "r"(slot_byte_offset)
                         : "cc");
        __asm__ volatile("lsls %[destination], r0, #8\n\t"
                         "adds %[destination], #10\n\t"
                         "ldr %[message_id], [pc, #20]\n\t"
                         "movs %[source], #4\n\t"
                         "movs %[payload_size], #18"
                         : [message_id] "=r"(message_id), [destination] "=r"(destination), [source] "=r"(source),
                           [payload_size] "=r"(payload_size)
                         : "r"(index)
                         : "cc");
        cached_value = ke_msg_alloc(message_id, destination, source, payload_size);
        *cache_slot = cached_value;
    }
    return cached_value;
}
