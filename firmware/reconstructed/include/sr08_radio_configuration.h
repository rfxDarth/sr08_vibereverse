#ifndef SR08_RADIO_CONFIGURATION_H
#define SR08_RADIO_CONFIGURATION_H

#include <stddef.h>
#include <stdint.h>
#include "sr08_radio_commands.h"

struct sr08_radio_profile_control {
    uint8_t reserved_00_to_04[5];
    uint8_t profile_flags;
};

_Static_assert(offsetof(struct sr08_radio_profile_control, profile_flags) == 0x05,
               "radio profile flags must remain at offset 0x05");

struct sr08_radio_configuration_state {
    uint8_t reserved_00_to_10[0x11];
    uint8_t configuration_ready;
    uint8_t reserved_12;
    uint8_t last_probe_status;
    uint8_t reserved_14_to_1a[7];
    uint8_t scan_initialization_status;
};

_Static_assert(offsetof(struct sr08_radio_configuration_state, configuration_ready) == 0x11,
               "radio configuration-ready flag must remain at offset 0x11");
_Static_assert(offsetof(struct sr08_radio_configuration_state, last_probe_status) == 0x13,
               "last radio probe status must remain at offset 0x13");
_Static_assert(offsetof(struct sr08_radio_configuration_state, scan_initialization_status) == 0x1b,
               "radio scan initialization status must remain at offset 0x1b");

void ensure_radio_profile_then_scan_paired_bytes(const struct sr08_radio_command_pair *paired_bytes);

/* Preserve the radio exchange's response byte in r0 for the caller. */
uint8_t ensure_radio_profile_then_exchange_word(uint32_t radio_word);

#endif
