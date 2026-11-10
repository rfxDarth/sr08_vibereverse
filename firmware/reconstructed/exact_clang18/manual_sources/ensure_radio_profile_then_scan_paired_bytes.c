/* Recovered behavior:
 * Apply the radio register profile unless the observed status contains required mask 0x44, then
 * scan the supplied byte pairs.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_commands.h"
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

extern void restore_radio_profile_before_command(void);

__attribute__((used, section(".text.ensure_radio_profile_then_scan_paired_bytes"))) void
ensure_radio_profile_then_scan_paired_bytes(const struct sr08_radio_command_pair *paired_bytes) {
    volatile uint16_t *radio_status;
    __asm__ volatile("ldr %[radio_status], [pc, #488]" : [radio_status] "=r"(radio_status));
    uint16_t observed_status = *radio_status;
    uint32_t required_status_mask;
    __asm__ volatile("ldr %[required_status_mask], [pc, #488]" : [required_status_mask] "=r"(required_status_mask));
    if ((required_status_mask & observed_status) != 0x44)
        restore_radio_profile_before_command();
    scan_pair_table_until_terminator(paired_bytes);
}
