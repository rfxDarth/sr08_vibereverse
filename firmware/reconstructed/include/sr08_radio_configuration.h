#ifndef SR08_RADIO_CONFIGURATION_H
#define SR08_RADIO_CONFIGURATION_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>
#include "sr08_radio_commands.h"
#include "firmware/reconstructed/include/sr08_sensor_reading.h"

struct sr08_radio_profile_control {
    uint8_t reserved_00_to_04[5];
    uint8_t profile_flags;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_radio_profile_control, profile_flags) == 0x05,
               "radio profile flags must remain at offset 0x05");

struct sr08_radio_configuration_state {
    uint8_t reserved_00_to_06[7];
    /* Vendor: when negative, the motion magnitude uses x and y only
     * (optionally_calculate_three_axis_magnitude_dispatching_at_3d6c). */
    int8_t magnitude_axes;
    uint8_t reserved_08_to_10[9];
    uint8_t configuration_ready;
    uint8_t reserved_12;
    uint8_t last_probe_status;
    uint8_t reserved_14_to_18[5];
    uint8_t sensor_state_19;  /* Vendor: the measurement is valid only while this is 1 ... */
    uint8_t sensor_state_1a;  /* ... and this is not 1. */
    uint8_t scan_initialization_status;
    uint8_t reserved_1c_to_1f[4];
    /* Cleared by hogpd_cleanup. The low/high bytes independently enable
     * the mouse/touch report sequences in advance_registration_data_transfers;
     * this is not simply a connected/disconnected flag. */
    uint16_t hid_link_state;
    uint8_t reserved_22_to_29[8];
    uint8_t active_mode; /* Vendor: mode reported in event packets. */
    uint8_t reserved_2b_to_35[0x0b];
    /* Vendor: state 1 runs the start check and 2 the save check on the next
     * sample (process_sensor_sample_and_maybe_save_record); time_event is the
     * one-byte event queued to time_event_queue_state every sample. V204
     * addresses time_event as record_check + 1. */
    struct {
        uint8_t state;
        uint8_t time_event;
    } record_check;
    uint8_t reserved_38_to_41[0x0a];
    struct sr08_sensor_reading sensor_reading; /* Vendor: the last accepted sensor reading. */
};

SR08_STATIC_ASSERT(offsetof(struct sr08_radio_configuration_state, magnitude_axes) == 0x07,
                   "magnitude axes must remain at offset 0x07");
SR08_STATIC_ASSERT(offsetof(struct sr08_radio_configuration_state, configuration_ready) == 0x11,
               "radio configuration-ready flag must remain at offset 0x11");
SR08_STATIC_ASSERT(offsetof(struct sr08_radio_configuration_state, last_probe_status) == 0x13,
               "last radio probe status must remain at offset 0x13");
SR08_STATIC_ASSERT(offsetof(struct sr08_radio_configuration_state, scan_initialization_status) == 0x1b,
               "radio scan initialization status must remain at offset 0x1b");
SR08_STATIC_ASSERT(offsetof(struct sr08_radio_configuration_state, hid_link_state) == 0x20,
                   "HID link state must remain at offset 0x20");
SR08_STATIC_ASSERT(offsetof(struct sr08_radio_configuration_state, sensor_state_19) == 0x19,
                   "sensor state must remain at offset 0x19");
SR08_STATIC_ASSERT(offsetof(struct sr08_radio_configuration_state, sensor_reading) == 0x42,
                   "sensor reading must remain at offset 0x42");
SR08_STATIC_ASSERT(offsetof(struct sr08_radio_configuration_state, active_mode) == 0x2a,
                   "active mode must remain at offset 0x2a");
SR08_STATIC_ASSERT(offsetof(struct sr08_radio_configuration_state, record_check) == 0x36,
                   "record check state must remain at offset 0x36");

void ensure_radio_profile_then_scan_paired_bytes(const struct sr08_radio_command_pair *paired_bytes);

/* Preserve the radio exchange's response byte in r0 for the caller. */
uint8_t ensure_radio_profile_then_exchange_word(uint32_t radio_word);

extern volatile struct sr08_radio_configuration_state device_control_state;

#endif
