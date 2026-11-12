#ifndef SR08_REGISTRATION_SLOT_LITERALS_H
#define SR08_REGISTRATION_SLOT_LITERALS_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

struct sr08_registration_slot_literal_fields {
    uint8_t instruction_prefix[2];
    int32_t *registration_slot_values;
    int32_t registration_slot_sentinel;
    uint32_t registration_event_id_base;
} __attribute__((packed));

union sr08_registration_slot_literal_view {
    uint8_t bytes[14];
    struct sr08_registration_slot_literal_fields view;
} __attribute__((packed));

SR08_STATIC_ASSERT(offsetof(struct sr08_registration_slot_literal_fields, registration_slot_values) == 2,
               "registration slot table pointer must remain at offset two");
SR08_STATIC_ASSERT(offsetof(struct sr08_registration_slot_literal_fields, registration_slot_sentinel) == 6,
               "registration slot sentinel must remain at offset six");
SR08_STATIC_ASSERT(offsetof(struct sr08_registration_slot_literal_fields, registration_event_id_base) == 10,
               "registration event ID base must remain at offset ten");
SR08_STATIC_ASSERT(sizeof(union sr08_registration_slot_literal_view) == 14,
               "registration slot literal view must remain fourteen bytes");

#endif
