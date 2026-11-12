/* Emit an event packet only when the active mode byte changes. */
#include "firmware/reconstructed/include/sr08_clock_literal_pool.h"
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_context.h"
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_mode_state.h"
#include "firmware/reconstructed/include/sr08_event_packet.h"
extern struct sr08_clock_timekeeping_state clock_timekeeping_state;

extern void search_queue_and_insert_limit_one(void *);

__attribute__((used, section(".text.emit_event_packet_when_active_mode_changes"))) void
emit_event_packet_when_active_mode_changes(uint32_t mode) {
    volatile struct sr08_event_packet packet;
    volatile struct sr08_mode_state *state;

    state = (volatile struct sr08_mode_state *)&sr08_shared_context;
    if (state->active_mode == mode)
        return;
    state->active_mode = (uint8_t)mode;
    __aeabi_memclr((uint8_t *)packet.scratch, sizeof(packet.scratch));
    packet.header = 0x14;
    packet.payload.mode_update.mode = (uint8_t)mode;
    volatile uint32_t *mode_word;
    mode_word = (volatile uint32_t *)&clock_timekeeping_state.current_timestamp;
    uint32_t mode_word_value = *mode_word;
    packet.payload.mode_update.low = (uint8_t)mode_word_value;
    packet.payload.mode_update.high = (uint8_t)(mode_word_value >> 24);
    packet.payload.mode_update.upper = (uint8_t)(mode_word_value >> 16);
    packet.payload.mode_update.middle = (uint8_t)(mode_word_value >> 8);
    search_queue_and_insert_limit_one((void *)&packet);
}
