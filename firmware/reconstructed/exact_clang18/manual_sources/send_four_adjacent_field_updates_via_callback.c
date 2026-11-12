/* Write four adjacent device registers below base: base - 99 and base - 91
 * get first >> 5 and second >> 5, base - 96 and base - 88 get zero.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_commands.h"

void send_four_adjacent_field_updates_via_callback(uint8_t base, uint16_t first, uint16_t second)
{
    send_device_command_pair((uint8_t)(base - 99), (uint8_t)(first >> 5));
    send_device_command_pair((uint8_t)(base - 96), 0);
    send_device_command_pair((uint8_t)(base - 91), (uint8_t)(second >> 5));
    send_device_command_pair((uint8_t)(base - 88), 0);
}
