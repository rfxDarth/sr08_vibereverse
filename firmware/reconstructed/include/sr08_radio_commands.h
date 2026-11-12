#ifndef SR08_RADIO_COMMANDS_H
#define SR08_RADIO_COMMANDS_H

#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

struct sr08_radio_command_pair {
    uint8_t first;
    uint8_t second;
};

SR08_STATIC_ASSERT(offsetof(struct sr08_radio_command_pair, second) == 1,
               "radio pair second byte must remain at offset one");
SR08_STATIC_ASSERT(sizeof(struct sr08_radio_command_pair) == 2, "radio command pairs must remain two bytes");

void send_device_command_pair(uint32_t command, uint32_t value);
uint16_t process_two_packed_input_bytes_update_at_8ad8(uint32_t first_value, uint32_t second_value);
void scan_pair_table_until_terminator(const struct sr08_radio_command_pair *pairs);

#endif
