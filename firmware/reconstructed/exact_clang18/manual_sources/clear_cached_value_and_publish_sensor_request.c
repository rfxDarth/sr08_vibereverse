/* Recovered behavior:
 * Clear the cached byte, refresh the indexed cache entry, publish the compact sensor request, then
 * clear the sensor state byte at offset 100.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_cache_state.h"

extern uint8_t *get_or_allocate_cached_message_buffer_for_index(uint32_t index);
extern void refresh_cache_then_clear_indexed_word(uint32_t);
extern void build_and_publish_compact_sensor_request_record(uint32_t);

__attribute__((used, section(".text.clear_cached_value_and_publish_sensor_request"))) void
clear_cached_value_and_publish_sensor_request(uint32_t cache_index) {
    *get_or_allocate_cached_message_buffer_for_index(cache_index) = 0;
    refresh_cache_then_clear_indexed_word(cache_index);
    build_and_publish_compact_sensor_request_record(cache_index);
    uint32_t cache_byte_offset = offsetof(struct sr08_cache_state, cache_state_byte_64);
    register volatile struct sr08_cache_state *state __asm__("r1");
    __asm__ volatile("ldr r1, [pc, #4]" : "=r"(state) : [offset] "r"(cache_byte_offset));
    state->cache_state_byte_64 = 0;
}
