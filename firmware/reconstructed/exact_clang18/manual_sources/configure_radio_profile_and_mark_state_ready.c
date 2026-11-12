/* Recovered behavior:
 * Select a radio control value from the mode argument, ensure the radio profile, configure radio
 * state, and set its ready byte.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

extern void configure_radio_state_and_send_command_6a(void);

/* V204's command-pair table at 0x07fd0444 (initialised RAM); entry 2's value byte
 * (offset 5) holds the profile flags. */
#define RADIO_PROFILE_COMMAND_PAIRS ((struct sr08_radio_profile_control *)0x07fd0444u)

void configure_radio_profile_and_mark_state_ready(uint32_t mode_selector)
{
    RADIO_PROFILE_COMMAND_PAIRS->profile_flags = ~(mode_selector ? 0x7f : 0x7c);
    ensure_radio_profile_then_scan_paired_bytes((const struct sr08_radio_command_pair *)RADIO_PROFILE_COMMAND_PAIRS);
    configure_radio_state_and_send_command_6a();
    device_control_state.configuration_ready = 1;
}
