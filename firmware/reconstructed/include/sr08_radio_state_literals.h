#ifndef SR08_RADIO_STATE_LITERALS_H
#define SR08_RADIO_STATE_LITERALS_H

#include <stddef.h>
#include <stdint.h>

struct sr08_radio_state_literal_fields {
    uint8_t instruction_prefix[2];
    volatile uint8_t *device_control_state_bytes;
    uint32_t radio_update_parameter_8330;
    uint32_t radio_update_parameter_8334;
    volatile uint8_t *radio_profile_state_bytes;
} __attribute__((packed));

union sr08_radio_state_literal_pool {
    uint8_t bytes[18];
    struct sr08_radio_state_literal_fields view;
} __attribute__((packed));

_Static_assert(offsetof(struct sr08_radio_state_literal_fields, device_control_state_bytes) == 2,
               "radio device-control pointer must remain at offset two");
_Static_assert(offsetof(struct sr08_radio_state_literal_fields, radio_update_parameter_8330) == 6,
               "radio update parameter must remain at offset six");
_Static_assert(offsetof(struct sr08_radio_state_literal_fields, radio_update_parameter_8334) == 10,
               "radio update parameter must remain at offset ten");
_Static_assert(offsetof(struct sr08_radio_state_literal_fields, radio_profile_state_bytes) == 14,
               "radio profile-state pointer must remain at offset fourteen");
_Static_assert(sizeof(union sr08_radio_state_literal_pool) == 18,
               "radio state literal pool must remain eighteen bytes");

#endif
