#ifndef SR08_DEVICE_STATE_H
#define SR08_DEVICE_STATE_H

#include <stddef.h>
#include <stdint.h>

struct sr08_device_state {
    uint8_t reserved_00_to_08[9];
    uint8_t timer_slot_index;
    uint8_t reserved_0a_to_10[7];
    uint8_t sensor_variant;
    uint8_t reserved_12_to_41[0x30];
    uint16_t active_mode_setting;
    uint8_t reserved_44_to_47[4];
    uint32_t peripheral_service_state;
    uint32_t radio_activity_state;
    uint8_t reserved_50_to_6f[0x20];
    /* System tick recorded after the periodic measurement record is emitted. */
    uint32_t last_periodic_record_timestamp;
    uint32_t scaled_measurement_value;
};

_Static_assert(offsetof(struct sr08_device_state, timer_slot_index) == 0x09,
               "timer slot index must remain at offset 0x09");
_Static_assert(offsetof(struct sr08_device_state, sensor_variant) == 0x11, "sensor variant must remain at offset 0x11");
_Static_assert(offsetof(struct sr08_device_state, active_mode_setting) == 0x42,
               "active mode setting must remain at offset 0x42");
_Static_assert(offsetof(struct sr08_device_state, peripheral_service_state) == 0x48,
               "peripheral service state must remain at offset 0x48");
_Static_assert(offsetof(struct sr08_device_state, radio_activity_state) == 0x4c,
               "radio activity state must remain at offset 0x4c");
_Static_assert(offsetof(struct sr08_device_state, last_periodic_record_timestamp) == 0x70,
               "last periodic-record timestamp must remain at offset 0x70");
_Static_assert(offsetof(struct sr08_device_state, scaled_measurement_value) == 0x74,
               "scaled measurement value must remain at offset 0x74");

#endif
