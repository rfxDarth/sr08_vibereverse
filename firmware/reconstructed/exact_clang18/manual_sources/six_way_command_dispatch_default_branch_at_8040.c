/* Six-way radio command dispatch (vendor code). Actions 0, 1 and 4 run the
 * command-record and radio-profile setup; actions 3 and 5 load one of two
 * indicator field configurations and publish it. Actions 2 and above 5 do
 * nothing.
 *
 * V204 builds this switch as a word jump table, which armclang 6.16 only
 * emits with -arm-synthesize-thumb-1-tbb=false. The build links it in the
 * "ac6ltowordtables" LTO module (see arm_compilers.py). Case 5 is written
 * before case 4 so that the default branch shares case 4's return, as in
 * V204. Case 3's stores to 0x02 and 0x0c follow V204's store order.
 */
#include <stdint.h>

/* Indicator configuration at cycle_control_state + 0x4c. field_mask selects
 * which fields dispatch_enabled_indicator_fields_for_device_status() sends:
 * bit 0 value_04 (low byte), bit 1 byte 0x06, bit 2 byte 0x07, bit 3 value_08. */
struct indicator_field_config {
    uint8_t field_mask;
    uint8_t reserved_01;
    uint16_t value_02;
    uint32_t value_04;
    uint8_t value_08;
    uint8_t reserved_09_to_0b[3];
    uint16_t value_0c;
};

struct cycle_control_command_view {
    uint8_t reserved_00_to_1f[0x20];
    uint32_t command_mode;
    uint8_t reserved_24_to_4b[0x28];
    struct indicator_field_config indicator;
};

struct radio_action_flags_view {
    uint8_t reserved_00_to_13[0x14];
    uint8_t field_publish_active;
    uint8_t command_record_active;
    uint8_t reserved_16;
    uint8_t radio_profile_active;
    uint8_t field_config_active;
};

extern struct cycle_control_command_view cycle_control_state;
extern volatile struct radio_action_flags_view device_control_state;

extern void configure_command_record(uint32_t mode);
extern void configure_radio_state_from_profile(void);
extern void configure_radio_profile_and_mark_state_ready(uint32_t mode_selector);
extern void clear_radio_flag_and_configure_state(void);
extern void dispatch_enabled_indicator_fields_for_device_status(void);

void six_way_command_dispatch_default_branch_at_8040(uint32_t action)
{
    struct indicator_field_config *config = &cycle_control_state.indicator;

    switch (action) {
    case 0:
        configure_command_record(cycle_control_state.command_mode);
        device_control_state.radio_profile_active = 1;
        device_control_state.command_record_active = 1;
        break;
    case 1:
        configure_radio_state_from_profile();
        device_control_state.radio_profile_active = 0;
        break;
    case 3:
        config->field_mask = 15;
        config->value_08 = 5;
        config->value_04 = 64;
        config->value_02 = 0;
        config->value_0c = 6400;
        clear_radio_flag_and_configure_state();
        dispatch_enabled_indicator_fields_for_device_status();
        device_control_state.field_config_active = 1;
        device_control_state.field_publish_active = 1;
        break;
    case 5:
        config->field_mask = 2;
        *(uint8_t *)&config->value_0c = 2;
        *(uint8_t *)&config->value_02 = 0;
        clear_radio_flag_and_configure_state();
        dispatch_enabled_indicator_fields_for_device_status();
        device_control_state.field_config_active = 1;
        device_control_state.field_publish_active = 1;
        break;
    case 4:
        device_control_state.field_publish_active = 0;
        configure_radio_profile_and_mark_state_ready(0);
        device_control_state.field_config_active = 0;
        break;
    }
}
