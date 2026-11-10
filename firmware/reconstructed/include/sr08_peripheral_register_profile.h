#ifndef SR08_PERIPHERAL_REGISTER_PROFILE_H
#define SR08_PERIPHERAL_REGISTER_PROFILE_H

#include <stddef.h>
#include <stdint.h>

/*
 * Sixteen-byte input record consumed by program_peripheral_registers_from_descriptor.
 * Names describe the observed destination register or transformation; the
 * meanings of the two selector bytes remain unknown.
 */
struct sr08_peripheral_register_profile {
    uint16_t value_for_register_14;
    uint16_t value_for_register_18;
    uint16_t value_for_register_1c;
    uint16_t value_for_register_20;
    uint8_t selector_at_08;
    uint8_t option_at_09;
    uint8_t reserved_at_0a;
    uint8_t special_mode_at_0b;
    uint16_t upper_bits_for_register_04;
    uint8_t value_minus_one_for_register_3c;
    uint8_t value_minus_one_for_register_38;
};

_Static_assert(sizeof(struct sr08_peripheral_register_profile) == 0x10, "peripheral profile must remain 16 bytes");
_Static_assert(offsetof(struct sr08_peripheral_register_profile, selector_at_08) == 0x08,
               "profile selector must remain at offset 8");
_Static_assert(offsetof(struct sr08_peripheral_register_profile, option_at_09) == 0x09,
               "profile option must remain at offset 9");
_Static_assert(offsetof(struct sr08_peripheral_register_profile, special_mode_at_0b) == 0x0b,
               "profile mode field must remain at offset 11");
_Static_assert(offsetof(struct sr08_peripheral_register_profile, upper_bits_for_register_04) == 0x0c,
               "profile register 0x04 value must remain at offset 12");
_Static_assert(offsetof(struct sr08_peripheral_register_profile, value_minus_one_for_register_3c) == 0x0e,
               "profile register 0x3c value must remain at offset 14");
_Static_assert(offsetof(struct sr08_peripheral_register_profile, value_minus_one_for_register_38) == 0x0f,
               "profile register 0x38 value must remain at offset 15");

#endif
