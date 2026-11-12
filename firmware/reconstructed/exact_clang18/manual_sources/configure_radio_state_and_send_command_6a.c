/* Clear the radio state flags, then configure the sensor: with the radio
 * profile at +0x19 set, select mode 2, scan the profile's paired bytes,
 * write the packed value at +0x42 and the 3000/1500 and 1333/1000 field
 * updates followed by the second pair table; otherwise select mode 0 with
 * the first pair table only. Finally send command 0x6a with value two. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_settings.h"
#include "firmware/reconstructed/include/sr08_radio_commands.h"
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

extern void write_two_bytes_from_packed_value(uint32_t packed_value);
extern void send_four_adjacent_field_updates_via_callback(uint8_t base, uint16_t first, uint16_t second);

#define radio_state ((uint8_t *)&device_control_state)
#define settings ((uint8_t *)&device_settings)

enum {
    SENSOR_MODE = 0x3b,
    PROFILE_PAIRS = 0x1c,
    EXTENDED_PAIRS = 0x10,
};

void configure_radio_state_and_send_command_6a(void)
{
    radio_state[0x1b] = 0;
    radio_state[0x1d] = 0;
    if (radio_state[0x19] != 0) {
        settings[SENSOR_MODE] = 2;
        ensure_radio_profile_then_scan_paired_bytes((const struct sr08_radio_command_pair *)(settings + PROFILE_PAIRS));
        write_two_bytes_from_packed_value(*(uint16_t *)(radio_state + 0x42));
        send_four_adjacent_field_updates_via_callback(1, 3000, 1500);
        send_four_adjacent_field_updates_via_callback(0, 1333, 1000);
        ensure_radio_profile_then_scan_paired_bytes((const struct sr08_radio_command_pair *)(settings + EXTENDED_PAIRS));
    } else {
        settings[SENSOR_MODE] = 0;
        ensure_radio_profile_then_scan_paired_bytes((const struct sr08_radio_command_pair *)(settings + PROFILE_PAIRS));
        send_four_adjacent_field_updates_via_callback(1, 3000, 1500);
        send_four_adjacent_field_updates_via_callback(0, 1333, 1000);
    }
    send_device_command_pair(0x6a, 2);
}
