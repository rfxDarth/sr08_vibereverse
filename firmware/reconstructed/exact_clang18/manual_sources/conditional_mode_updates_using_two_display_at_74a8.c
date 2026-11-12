/* Report the active mode as an event packet and/or a queued 0x24 event record. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

void emit_event_packet_when_active_mode_changes(uint8_t mode);
void build_event_header_and_fourteen_byte_scratch_area(uint8_t a, uint8_t b, uint8_t c, uint8_t d, uint8_t e);

void conditional_mode_updates_using_two_display_at_74a8(uint32_t flags)
{
    if (flags & 0x1d)
        emit_event_packet_when_active_mode_changes(device_control_state.active_mode);
    if (flags & 0x02)
        build_event_header_and_fourteen_byte_scratch_area(device_control_state.active_mode, 0, 0, 0, 0);
}
