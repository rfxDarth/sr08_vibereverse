/*
 * Update the requested sensor modes in the shared context. The argument packs
 * a 16-bit set mask in its low half and a 16-bit clear mask in its high half;
 * setting modes records the current timestamp. While the mode byte is 0x1e
 * all requests are dropped instead.
 *
 * When no request remains, the shutdown notifications selected by bits 0
 * and 1 of the old requests are sent. Whenever the requests change, sensor
 * calibration is restarted and the active sensor range recomputed.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_clock_literal_pool.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_mode_transition.h"
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

extern struct sr08_clock_timekeeping_state clock_timekeeping_state;
void emit_event_packet_when_active_mode_changes(uint8_t mode);
void initialize_and_dispatch_three_byte_request(uint8_t first, uint8_t second, uint8_t third);
void start_or_stop_sensor_calibration(uint32_t mode);
uint32_t derive_active_sensor_range_flags_notify_at_37d0(void);

/* 0x07fd5650 + 0x0c: the current mode byte. */
#define current_mode (((uint8_t *)(void *)&merged_globals_5650)[0x0c])
/* Shared context + 0x20: timestamp of the last mode request. */
#define mode_request_timestamp (*(uint32_t *)(void *)((uint8_t *)&sr08_shared_context + 0x20))

enum {
    MODE_DROP_REQUESTS = 0x1e,
    REQUEST_MODE_A = 0x01,
    REQUEST_MODE_B = 0x02,
    NOTIFY_MODE_A_STOPPED = 39,
    NOTIFY_MODE_B_STOPPED = 40,
};

void update_mode_flags_and_transitions(uint32_t flags)
{
    uint32_t old = sr08_shared_context.sensor_mode_requests;

    if (current_mode == MODE_DROP_REQUESTS) {
        sr08_shared_context.sensor_mode_requests = 0;
    } else {
        uint32_t requests = old;

        if (flags & 0xffff) {
            mode_request_timestamp = clock_timekeeping_state.current_timestamp;
            requests = old | flags;
            sr08_shared_context.sensor_mode_requests = requests;
        }
        if (flags >> 16) {
            requests &= ~(flags >> 16);
            sr08_shared_context.sensor_mode_requests = requests;
        }
        if (requests != 0)
            goto changed;
    }
    if (old & REQUEST_MODE_A) {
        emit_event_packet_when_active_mode_changes(device_control_state.active_mode);
        initialize_and_dispatch_three_byte_request(NOTIFY_MODE_A_STOPPED, 0, 0);
    }
    if (old & REQUEST_MODE_B)
        initialize_and_dispatch_three_byte_request(NOTIFY_MODE_B_STOPPED, 0, 0);
changed:
    if (old != sr08_shared_context.sensor_mode_requests) {
        start_or_stop_sensor_calibration(0);
        derive_active_sensor_range_flags_notify_at_37d0();
    }
}
