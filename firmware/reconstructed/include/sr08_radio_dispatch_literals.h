#ifndef SR08_RADIO_DISPATCH_LITERALS_H
#define SR08_RADIO_DISPATCH_LITERALS_H

#include <stddef.h>
#include <stdint.h>

struct sr08_radio_dispatch_literal_fields {
    uint8_t instruction_prefix[2];
    volatile uint8_t *radio_action_state_bytes;
    void (*send_device_command_pair)(uint32_t command, uint32_t value);
} __attribute__((packed));

union sr08_radio_dispatch_literal_pool {
    uint8_t bytes[10];
    struct sr08_radio_dispatch_literal_fields view;
} __attribute__((packed));

_Static_assert(offsetof(struct sr08_radio_dispatch_literal_fields, radio_action_state_bytes) == 2,
               "radio action-state pointer must remain at offset two");
_Static_assert(offsetof(struct sr08_radio_dispatch_literal_fields, send_device_command_pair) == 6,
               "radio command callback must remain at offset six");
_Static_assert(sizeof(union sr08_radio_dispatch_literal_pool) == 10,
               "radio dispatch literal pool must remain ten bytes");

#endif
