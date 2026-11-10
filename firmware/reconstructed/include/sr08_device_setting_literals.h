#ifndef SR08_DEVICE_SETTING_LITERALS_H
#define SR08_DEVICE_SETTING_LITERALS_H

#include <stddef.h>
#include <stdint.h>

struct sr08_device_setting_literal_fields {
    uint8_t instruction_prefix[2];
    volatile uint8_t *state_bytes;
} __attribute__((packed));

union sr08_device_setting_literal_pool {
    uint8_t bytes[6];
    struct sr08_device_setting_literal_fields view;
} __attribute__((packed));

_Static_assert(offsetof(struct sr08_device_setting_literal_fields, state_bytes) == 2,
               "device-setting state pointer must remain at offset two");
_Static_assert(sizeof(union sr08_device_setting_literal_pool) == 6,
               "device-setting literal pool must remain six bytes");

#endif
