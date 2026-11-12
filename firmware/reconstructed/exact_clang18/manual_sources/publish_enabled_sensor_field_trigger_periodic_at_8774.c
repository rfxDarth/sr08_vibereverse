/* Send the sensor configuration fields enabled in the field mask of the
 * sensor field state (0x07fd1ffc) as device command pairs, then wait for the
 * periodic service interval. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_commands.h"

#include "firmware/reconstructed/include/sr08_sensor_field_state.h"

extern void wait_shared_timer_delta_exceed_requested_at_4458(uint32_t interval);

enum {
    FIELD_ENABLE_A = 0x01,
    FIELD_ENABLE_B = 0x02,
    FIELD_ENABLE_C = 0x04,
    FIELD_ENABLE_D = 0x08,
    PERIODIC_INTERVAL = 10,
};

void publish_enabled_sensor_field_trigger_periodic_at_8774(void)
{
    if (sensor_field_state.config.enabled & FIELD_ENABLE_A) {
        struct sr08_sensor_field_config *config = &sensor_field_state.config;

        send_device_command_pair(39, config->value_2a);
        send_device_command_pair(41, config->value_2c);
    }
    if (sensor_field_state.config.enabled & FIELD_ENABLE_B) {
        struct sr08_sensor_field_config *config = &sensor_field_state.config;

        send_device_command_pair(45, config->value_25);
        send_device_command_pair(47, config->value_26);
    }
    if (sensor_field_state.config.enabled & FIELD_ENABLE_C)
        send_device_command_pair(44, sensor_field_state.config.value_27);
    if (sensor_field_state.config.enabled & FIELD_ENABLE_D) {
        send_device_command_pair(28, sensor_field_state.config.value_2e);
        send_device_command_pair(29, sensor_field_state.config.value_2e);
        send_device_command_pair(30, sensor_field_state.config.value_2e);
        send_device_command_pair(31, sensor_field_state.config.value_2e);
    }
    wait_shared_timer_delta_exceed_requested_at_4458(PERIODIC_INTERVAL);
}
