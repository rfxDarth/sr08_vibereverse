#ifndef SR08_SHARED_CONTEXT_H
#define SR08_SHARED_CONTEXT_H

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

/* Known byte offsets from the shared context base; its complete layout is unknown. */
enum sr08_shared_context_offset {
    SR08_SHARED_CONTEXT_SECONDARY_STEP_COUNT_OFFSET = 0x2c,
    SR08_SHARED_CONTEXT_TOTAL_STEP_COUNT_OFFSET = 0x38,
    SR08_SHARED_CONTEXT_TERTIARY_STEP_COUNT_OFFSET = 0x3c,
    SR08_SHARED_CONTEXT_DISPLAY_CHARACTER_OFFSET = 0x95,
};

/* Typed view of the shared context at 0x07fd557c (see ../data/V204_ram_symbols.json).
 * Fields are added as converted routines identify them; reserved ranges are unknown. */
struct sr08_shared_context {
    uint8_t connection_state;        /* 0x00: 1 while connected (logged as "c=%d") */
    uint8_t state_01;                /* 0x01: cleared on disconnection */
    uint8_t last_event_argument;     /* 0x02: first byte of the last 0x24 event record */
    uint8_t reserved_03_to_10[0x0e];
    uint8_t mode_11;                 /* 0x11: hogpd_enable_req_handler acts when this is 2; cleared on disconnection */
    uint8_t state_12;                /* 0x12: cleared on disconnection */
    uint8_t reserved_13;
    union {
        uint8_t display_control_flags; /* 0x14: bit 0 blocks state three, bit 1 state four */
        /* 0x14: requested sensor modes; bits 6-14 select the highest set bit, 0x1d mode 1, 0x22 mode 2
         * (derive_active_sensor_range_flags_notify_at_37d0). */
        uint32_t sensor_mode_requests;
    };
    uint8_t reserved_18_to_43[0x2c];
    uint32_t context_value_44;       /* 0x44: low 16 bits logged in the reset status record */
    uint8_t reserved_48_to_93[0x4c];
    uint8_t display_transition_flag; /* 0x94 */
    uint8_t display_character;       /* 0x95 */
    uint8_t reserved_96_to_97[2];
    /* 0x98: written when a SUOTA image is activated (marker 0xaaaa). */
    struct {
        uint16_t marker;
        uint32_t value;
    } suota_activation;
    uint8_t reserved_a0_to_c3[0x24];
    uint8_t state_c4;                /* 0xc4: cleared on disconnection */
};

SR08_STATIC_ASSERT(offsetof(struct sr08_shared_context, mode_11) == 0x11, "mode_11 must remain at offset 0x11");
SR08_STATIC_ASSERT(offsetof(struct sr08_shared_context, state_c4) == 0xc4, "state_c4 must remain at offset 0xc4");
SR08_STATIC_ASSERT(offsetof(struct sr08_shared_context, context_value_44) == 0x44, "context_value_44 must remain at offset 0x44");
SR08_STATIC_ASSERT(offsetof(struct sr08_shared_context, suota_activation) == 0x98,
                   "suota_activation must remain at offset 0x98");

extern struct sr08_shared_context sr08_shared_context;

#endif
