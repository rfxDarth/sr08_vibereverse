/* V204's gated BLE parameter-update request, with its wrapping timestamp. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_settings.h"
#include "firmware/reconstructed/include/sr08_device_state.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
extern uint32_t get_ble_base_time_ms(void);
extern uint16_t read_state_word_at_10_with_record_flag_clamp(void);
extern void allocate_initialize_record_first_use_release_at_3254(uint8_t conidx, uint16_t minimum, uint16_t maximum);
extern void replace_state_timer_with_600_delay(void);
__attribute__((used, section(".text.gate_periodic_record_creation_sensor_mode_at_2dc4"))) void
gate_periodic_record_creation_sensor_mode_at_2dc4(void) {
    uint32_t now = get_ble_base_time_ms();
    volatile struct sr08_device_settings *settings = &device_settings;
    volatile struct sr08_device_state *state = (volatile struct sr08_device_state *)&merged_globals_5650;
    if (settings->conn_intv_max <= 79 && settings->slave_latency == 0 &&
            (state->active_mode_setting >> 2) > 124)
        goto finish;
    uint32_t previous = state->last_periodic_record_timestamp;
    uint32_t adjusted_now = now;
    if (now < previous)
        adjusted_now = now + 0x05000000u;
    uint32_t elapsed = adjusted_now - previous;
    if (elapsed >= 6001) {
        uint8_t conidx = ((volatile uint8_t *)state)[8];
        uint16_t interval = read_state_word_at_10_with_record_flag_clamp();
        allocate_initialize_record_first_use_release_at_3254(conidx, interval, interval);
        state->last_periodic_record_timestamp = now;
    }
finish:
    replace_state_timer_with_600_delay();
}
