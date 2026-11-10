/* Recovered behavior:
 * Configure radio state using the referenced profile.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
#define RADIO_STATE_PROFILE ((const struct sr08_radio_command_pair *)(uintptr_t)0x07fcfaf2u)

void configure_radio_state_from_profile(void)

{
    ensure_radio_profile_then_scan_paired_bytes(RADIO_STATE_PROFILE);
}
