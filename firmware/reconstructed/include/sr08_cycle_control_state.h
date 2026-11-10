#ifndef SR08_CYCLE_CONTROL_STATE_H
#define SR08_CYCLE_CONTROL_STATE_H

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
    uint8_t reserved_24_to_33[0x10];
    uint32_t cycle_counter;
};

_Static_assert(offsetof(struct sr08_cycle_control_state, clock_gate_timestamp_04) == 0x04,
               "clock gate timestamp must remain at offset 4");
_Static_assert(offsetof(struct sr08_cycle_control_state, clock_gate_timestamp_08) == 0x08,
               "clock gate timestamp must remain at offset 8");
_Static_assert(offsetof(struct sr08_cycle_control_state, display_coordinate_timestamp) == 0x0c,
               "display-coordinate timestamp must remain at offset 12");
_Static_assert(offsetof(struct sr08_cycle_control_state, clock_gate_timestamp_10) == 0x10,
               "clock gate timestamp must remain at offset 16");
_Static_assert(offsetof(struct sr08_cycle_control_state, clock_gate_timestamp_14) == 0x14,
               "clock gate timestamp must remain at offset 20");
_Static_assert(offsetof(struct sr08_cycle_control_state, active_control_mode) == 0x20,
               "active control mode must remain at offset 0x20");
_Static_assert(offsetof(struct sr08_cycle_control_state, cycle_counter) == 0x34,
               "cycle counter must remain at offset 0x34");

#endif
