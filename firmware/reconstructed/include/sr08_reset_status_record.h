#ifndef SR08_RESET_STATUS_RECORD_H
#define SR08_RESET_STATUS_RECORD_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stdint.h>

/* Vendor record at 0x07fd7ff0, near the top of retention RAM, written before a
 * deliberate reset (serialize_status_and_global_values_with_word). */
struct reset_status_record {
    volatile uint8_t status_code; /* 59 when the caller passes status 1, else 0xab */
    volatile uint8_t suota_activation_value_low;
    volatile uint8_t context_value_44_low;
    volatile uint8_t context_value_44_high;
    volatile uint8_t value[4];    /* little-endian copy of the caller's word */
};

SR08_STATIC_ASSERT(sizeof(struct reset_status_record) == 8, "the reset status record is eight bytes");

extern struct reset_status_record reset_status_record;
/* Vendor boot-mode marker in the last RAM halfword (0x07fd7ffe). */
extern int16_t boot_mode_marker;

void serialize_status_and_global_values_with_word(uint32_t value, uint32_t status);

#endif
