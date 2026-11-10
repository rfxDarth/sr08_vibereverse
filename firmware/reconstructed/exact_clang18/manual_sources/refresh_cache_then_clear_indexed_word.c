/* Refresh the cache by sending the indexed message, then clear the matching
 * 32-bit word in the shared table.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_message.h"

extern uint8_t *get_or_allocate_cached_message_buffer_for_index(uint32_t index);

__attribute__((used, section(".text.refresh_cache_then_clear_indexed_word"))) void
refresh_cache_then_clear_indexed_word(uint32_t index) {
    uint8_t *message = get_or_allocate_cached_message_buffer_for_index(index);
    ke_msg_send(message);

    uint32_t byte_displacement = index << 2;
    volatile uint32_t *table = (volatile uint32_t *)(uintptr_t)0x07fd53e0u;
    /* Keep the base/offset operand order: C lowering emits a different Thumb
     * encoding for this indexed store.
     */
    __asm__ volatile("str %[zero], [%[table], %[byte_displacement]]"
                     :
                     : [byte_displacement] "r"(byte_displacement), [table] "r"(table), [zero] "r"(0)
                     : "memory");
}
