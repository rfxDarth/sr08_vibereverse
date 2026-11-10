/* Recovered behavior:
 * Clear the state byte at offset 0x1b and apply the selected radio profile.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

__attribute__((used, section(".text.clear_radio_flag_and_configure_state"))) void
clear_radio_flag_and_configure_state(void) {
    volatile struct sr08_radio_configuration_state *configuration_state;
    __asm__ volatile("ldr %[configuration_state], [pc, #804]" : [configuration_state] "=r"(configuration_state));
    configuration_state->scan_initialization_status = 0;
    const struct sr08_radio_command_pair *paired_bytes;
    __asm__ volatile("ldr %[paired_bytes], [pc, #4]" : [paired_bytes] "=r"(paired_bytes));
    ensure_radio_profile_then_scan_paired_bytes(paired_bytes);
}
