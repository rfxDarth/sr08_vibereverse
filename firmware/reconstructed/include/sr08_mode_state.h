#ifndef SR08_MODE_STATE_H
#define SR08_MODE_STATE_H

#include <stddef.h>
#include <stdint.h>

struct sr08_mode_state {
    uint8_t reserved_prefix[2];
    uint8_t active_mode;
};

_Static_assert(offsetof(struct sr08_mode_state, active_mode) == 2, "active mode byte must remain at offset two");

#endif
