#ifndef SR08_MODE_STATE_H
#define SR08_MODE_STATE_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

struct sr08_mode_state {
    uint8_t reserved_prefix[2];
    uint8_t active_mode;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_mode_state, active_mode) == 2, "active mode byte must remain at offset two");

#endif
