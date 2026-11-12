/* Radio-state action dispatcher: action indices zero to five configure the
 * command record, rerun the radio profile or scan, or load one of two sensor
 * field configurations and publish it. Other indices do nothing. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

#include "firmware/reconstructed/include/sr08_sensor_field_state.h"

extern void configure_command_record(uint32_t mode);
extern void configure_radio_state_from_profile(void);
extern void initialize_radio_scan_and_mark_state_ready(void);
extern void clear_radio_flag_and_configure_state(void);
extern void configure_radio_profile_and_mark_state_ready(uint32_t mode_selector);
extern void publish_enabled_sensor_field_trigger_periodic_at_8774(void);

void dispatch_radio_state_action_block_at_86b8(uint32_t action) {
    struct sr08_sensor_field_config *config = &sensor_field_state.config;

    switch (action) {
    case 0:
        configure_command_record(2);
        device_control_state.reserved_1c_to_1f[2] = 1;
        device_control_state.reserved_14_to_18[1] = 1;
        break;
    case 1:
        configure_radio_state_from_profile();
        device_control_state.reserved_1c_to_1f[2] = 0;
        break;
    case 2:
        initialize_radio_scan_and_mark_state_ready();
        device_control_state.reserved_1c_to_1f[2] = 0;
        break;
    case 3:
        config->enabled = 15;
        config->value_0e = 5;
        /* Compiler ordering only: no ARM instruction is emitted. Retain
         * V204's zero-before-16 materialization and its original stores.
         */
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
        config->value_0c = 16;
        config->value_04 = 0;
        config->value_0a = 4;
        config->value_08 = 0;
        config->value_02 = 0;
        config->value_10 = 0;
        config->value_14 = 0;
        config->value_18 = 0;
        config->value_1c = 0;
        config->value_1e = 0x9625;
        clear_radio_flag_and_configure_state();
        publish_enabled_sensor_field_trigger_periodic_at_8774();
        device_control_state.reserved_1c_to_1f[3] = 1;
        device_control_state.reserved_14_to_18[0] = 1;
        break;
    case 5:
        config->enabled = 2;
        config->value_1c = 2;
        *(uint8_t *)&config->value_02 = 0;
        clear_radio_flag_and_configure_state();
        publish_enabled_sensor_field_trigger_periodic_at_8774();
        device_control_state.reserved_1c_to_1f[3] = 1;
        device_control_state.reserved_14_to_18[0] = 1;
        break;
    case 4:
        device_control_state.reserved_14_to_18[0] = 0;
        configure_radio_profile_and_mark_state_ready(1);
        device_control_state.reserved_1c_to_1f[3] = 0;
        break;
    }
}
