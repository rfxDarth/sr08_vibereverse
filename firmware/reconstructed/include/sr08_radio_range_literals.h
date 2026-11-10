#ifndef SR08_RADIO_RANGE_LITERALS_H
#define SR08_RADIO_RANGE_LITERALS_H

#include <stddef.h>
#include <stdint.h>

struct sr08_radio_range_literal_fields {
    uint8_t instruction_prefix[2];
    volatile uint8_t *device_control_state_bytes;
    uint32_t default_range_value;
    int32_t minimum_range_value;
    uint32_t maximum_range_value;
    volatile uint8_t *cycle_and_schedule_state_bytes;
} __attribute__((packed));

union sr08_radio_range_literal_pool {
    uint8_t bytes[22];
    struct sr08_radio_range_literal_fields view;
} __attribute__((packed));

_Static_assert(offsetof(struct sr08_radio_range_literal_fields, device_control_state_bytes) == 2,
               "radio device-state pointer must remain at offset two");
_Static_assert(offsetof(struct sr08_radio_range_literal_fields, default_range_value) == 6,
               "radio range default must remain at offset six");
_Static_assert(offsetof(struct sr08_radio_range_literal_fields, minimum_range_value) == 10,
               "radio range minimum must remain at offset ten");
_Static_assert(offsetof(struct sr08_radio_range_literal_fields, maximum_range_value) == 14,
               "radio range maximum must remain at offset fourteen");
_Static_assert(offsetof(struct sr08_radio_range_literal_fields, cycle_and_schedule_state_bytes) == 18,
               "radio cycle-state pointer must remain at offset eighteen");
_Static_assert(sizeof(union sr08_radio_range_literal_pool) == 22,
               "radio range literal pool must remain twenty-two bytes");

#endif
