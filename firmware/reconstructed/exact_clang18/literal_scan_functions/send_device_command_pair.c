/* Recovered behavior:
 * Check the radio profile, then transmit the two supplied command bytes through the packed-input
 * helper.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_status.h"
#include "firmware/reconstructed/include/sr08_radio_commands.h"

void send_device_command_pair(uint32_t command, uint32_t value)

{
    SR08_ENSURE_RADIO_PROFILE_READY();
    process_two_packed_input_bytes_update_at_8ad8(command, value);
}
