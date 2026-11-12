/* Recovered behavior:
 * Clear the radio state byte at offset 27, scan the paired-byte data after ensuring the radio
 * profile, send command 0x6a, and set state byte 17.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

extern void configure_radio_state_and_send_command_6a(void);

/* V204's radio command table at 0x07fcfb4e. */
#define RADIO_SCAN_COMMAND_PAIRS ((const struct sr08_radio_command_pair *)0x07fcfb4eu)

void initialize_radio_scan_and_mark_state_ready(void)
{
    device_control_state.scan_initialization_status = 0;
    ensure_radio_profile_then_scan_paired_bytes(RADIO_SCAN_COMMAND_PAIRS);
    configure_radio_state_and_send_command_6a();
    device_control_state.configuration_ready = 1;
}
