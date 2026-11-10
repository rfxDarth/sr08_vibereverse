/* Write the high and low bytes of a packed 12-bit value through the shared writer. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_commands.h"

enum {
    RADIO_COMMAND_WRITE_PACKED_HIGH_BYTE = 0x63,
    RADIO_COMMAND_WRITE_PACKED_LOW_BYTE = 0x62,
    PACKED_VALUE_MASK = 0x0fff,
    PACKED_BYTE_MASK = 0x00ff,
    PACKED_HIGH_BYTE_SHIFT = 8,
};

void write_two_bytes_from_packed_value(uint32_t packed_value)

{
    send_device_command_pair(RADIO_COMMAND_WRITE_PACKED_HIGH_BYTE,
                             (packed_value & PACKED_VALUE_MASK) >> PACKED_HIGH_BYTE_SHIFT);
    send_device_command_pair(RADIO_COMMAND_WRITE_PACKED_LOW_BYTE, packed_value & PACKED_BYTE_MASK);
}
