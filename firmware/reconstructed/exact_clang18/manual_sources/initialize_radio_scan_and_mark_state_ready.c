/* Recovered behavior:
 * Clear the radio state byte at offset 27, scan the paired-byte data after ensuring the radio
 * profile, send command 0x6a, and set state byte 17.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

extern void configure_radio_state_and_send_command_6a(void);

__attribute__((used, section(".text.initialize_radio_scan_and_mark_state_ready"))) void
initialize_radio_scan_and_mark_state_ready(void) {
    volatile struct sr08_radio_configuration_state *configuration_state;
    __asm__ volatile("ldr %[configuration_state], [pc, #556]" : [configuration_state] "=r"(configuration_state));
    configuration_state->scan_initialization_status = 0;
    const struct sr08_radio_command_pair *paired_bytes;
    __asm__ volatile("ldr %[paired_bytes], [pc, #12]" : [paired_bytes] "=r"(paired_bytes));
    ensure_radio_profile_then_scan_paired_bytes(paired_bytes);
    configure_radio_state_and_send_command_6a();
    configuration_state->configuration_ready = 1;
}
