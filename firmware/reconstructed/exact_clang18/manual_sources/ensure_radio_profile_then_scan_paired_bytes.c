/* Recovered behavior:
 * Apply the radio register profile unless status contains mask 0x44, then send each command pair of
 * the table until its terminator.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
#include "firmware/reconstructed/include/sr08_radio_status.h"

void ensure_radio_profile_then_scan_paired_bytes(const struct sr08_radio_command_pair *paired_bytes)
{
    SR08_ENSURE_RADIO_PROFILE_READY();
    scan_pair_table_until_terminator(paired_bytes);
}
