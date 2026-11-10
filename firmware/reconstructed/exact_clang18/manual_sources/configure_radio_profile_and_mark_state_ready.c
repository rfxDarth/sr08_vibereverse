/* Recovered behavior:
 * Select a radio control value from the mode argument, ensure the radio profile, configure radio
 * state, and set its ready byte.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

extern void configure_radio_state_and_send_command_6a(void);

__attribute__((used, section(".text.configure_radio_profile_and_mark_state_ready"))) void
configure_radio_profile_and_mark_state_ready(uint32_t mode_selector) {
    uint32_t control_value = mode_selector == 0 ? 0x7c : 0x7f;
    uint32_t inverted_control_value = ~control_value;
    volatile struct sr08_radio_profile_control *profile_state;
    __asm__ volatile("ldr %[profile_state], [pc, #20]" : [profile_state] "=r"(profile_state));
    profile_state->profile_flags = (uint8_t)inverted_control_value;
    ensure_radio_profile_then_scan_paired_bytes((const struct sr08_radio_command_pair *)(uintptr_t)profile_state);
    configure_radio_state_and_send_command_6a();
    uint32_t one;
    volatile struct sr08_radio_configuration_state *configuration_state;
    __asm__ volatile("ldr %[state], [pc, #760]\n"
                     "movs %[one], #1"
                     : [state] "=r"(configuration_state), [one] "=r"(one));
    configuration_state->configuration_ready = (uint8_t)one;
}
