#ifndef SR08_DEVICE_SETTING_STATE_H
#define SR08_DEVICE_SETTING_STATE_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

struct sr08_device_setting_state {
    uint8_t reserved_prefix[10];
    uint16_t minimum_value;
    uint16_t current_value;
    uint16_t setting;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_device_setting_state, minimum_value) == 10,
               "minimum value must remain at byte ten");
SR08_STATIC_ASSERT(offsetof(struct sr08_device_setting_state, current_value) == 12,
               "current value must remain at byte twelve");
SR08_STATIC_ASSERT(offsetof(struct sr08_device_setting_state, setting) == 14, "setting must remain at byte fourteen");

#endif
