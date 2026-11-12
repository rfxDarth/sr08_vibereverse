#ifndef SR08_CYCLE_CONTROL_STATE_H
#define SR08_CYCLE_CONTROL_STATE_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

struct sr08_cycle_control_state {
    uint8_t reserved_00_to_03[4];
    /* Clock routine compares the current time against this value at a
     * 240-unit interval. */
    uint32_t clock_gate_timestamp_04;
    /* Updated by the clock routine's conditional 64-unit scheduling path. */
    uint32_t clock_gate_timestamp_08;
    /* Last time the clock routine refreshed display coordinates (130 units). */
    uint32_t display_coordinate_timestamp;
    /* Time references used by the 120- and 51-unit clock transition gates. */
    uint32_t clock_gate_timestamp_10;
    uint32_t clock_gate_timestamp_14;
    uint8_t reserved_18_to_1f[8];
    uint32_t active_control_mode;
    /* +0x24: phase shared by the HID mouse/touch sequence pumps;
     * +0x28: mouse-phase repeat counter (advance_registration_data_transfers). */
    uint8_t reserved_24_to_33[0x10];
    uint32_t cycle_counter;
    /* Vendor: the current measurement value; 0x7fff marks it invalid
     * (apply_range_mode_validity_checks_preserving_at_8878). */
    int32_t measurement_value;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_cycle_control_state, clock_gate_timestamp_04) == 0x04,
               "clock gate timestamp must remain at offset 4");
SR08_STATIC_ASSERT(offsetof(struct sr08_cycle_control_state, clock_gate_timestamp_08) == 0x08,
               "clock gate timestamp must remain at offset 8");
SR08_STATIC_ASSERT(offsetof(struct sr08_cycle_control_state, display_coordinate_timestamp) == 0x0c,
               "display-coordinate timestamp must remain at offset 12");
SR08_STATIC_ASSERT(offsetof(struct sr08_cycle_control_state, clock_gate_timestamp_10) == 0x10,
               "clock gate timestamp must remain at offset 16");
SR08_STATIC_ASSERT(offsetof(struct sr08_cycle_control_state, clock_gate_timestamp_14) == 0x14,
               "clock gate timestamp must remain at offset 20");
SR08_STATIC_ASSERT(offsetof(struct sr08_cycle_control_state, active_control_mode) == 0x20,
               "active control mode must remain at offset 0x20");
SR08_STATIC_ASSERT(offsetof(struct sr08_cycle_control_state, cycle_counter) == 0x34,
               "cycle counter must remain at offset 0x34");
SR08_STATIC_ASSERT(offsetof(struct sr08_cycle_control_state, measurement_value) == 0x38,
                   "measurement value must remain at offset 0x38");

extern struct sr08_cycle_control_state cycle_control_state;

#endif
