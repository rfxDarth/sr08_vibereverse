/* Reset cached fields, refresh the four calibration register bytes, then configure mode. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
extern void clear_state_counter_at_offset_four(void);
extern void clear_state_word_at_offset_1c(void);
extern uint32_t retry_radio_command_until_status_0x27(void);
extern void configure_command_record(uint32_t mode);
__attribute__((used, section(".text.clear_cached_sensor_fields_refresh_calibration_at_8f48"))) void
clear_cached_sensor_fields_refresh_calibration_at_8f48(uint32_t mode, uint8_t calibration_setting) {
    volatile uint8_t *state = (volatile uint8_t *)&device_control_state;
    state[0x12] = calibration_setting;
    state[0x18] = 0;
    state[0x17] = 0;
    *(volatile uint16_t *)(state + 0x14) = 0;
    clear_state_counter_at_offset_four();
    *(volatile uint16_t *)(state + 0x1e) = 0;
    clear_state_word_at_offset_1c();
    retry_radio_command_until_status_0x27();
    if (ensure_radio_profile_then_exchange_word(71) <= 63) {
        ensure_radio_profile_then_scan_paired_bytes((const struct sr08_radio_command_pair *)0x07fcfafc);
        uint8_t (*read_calibration_byte)(uint32_t) = (uint8_t (*)(uint32_t))0x07fc8585;
        struct sr08_radio_command_pair *pairs = (struct sr08_radio_command_pair *)0x07fd03c8;
        pairs[1].second = read_calibration_byte(69);
        pairs[2].second = read_calibration_byte(70);
        pairs[3].second = read_calibration_byte(71);
        pairs[4].second = read_calibration_byte(72);
        ensure_radio_profile_then_scan_paired_bytes(pairs);
    }
    configure_command_record(mode);
}
