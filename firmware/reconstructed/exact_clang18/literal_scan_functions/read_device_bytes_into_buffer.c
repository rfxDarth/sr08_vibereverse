/* Recovered behavior:
 * Check the radio profile, issue the command, and copy the requested response bytes into the
 * caller's buffer.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_status.h"

void read_device_bytes_into_buffer(uint32_t command, uint8_t *destination, uint32_t byte_count)

{
    SR08_ENSURE_RADIO_PROFILE_READY();
    fill_hardware_fifo_optionally_report_state_at_89b0(command, destination, byte_count);
}
