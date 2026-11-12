/* Alice: send the enabled device-status fields in their OEM order.
 * Each send may update the shared flags, so reload them after every command.
 * Separate integer annotations prevent pointer hoisting and preserve the
 * original base+76 plus immediate-field addressing without assembly.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_cycle_control_state.h"
#include "firmware/reconstructed/include/sr08_radio_commands.h"

enum { STATUS_FLAGS_OFFSET = 0x4c, FINAL_VALUE_OFFSET = 0x54 };

__attribute__((used, section(".text.dispatch_enabled_indicator_fields_for_device_status"))) void
dispatch_enabled_indicator_fields_for_device_status(void) {
    volatile uint8_t *state = (volatile uint8_t *)&cycle_control_state;
    uint32_t flags = state[STATUS_FLAGS_OFFSET];

    if (flags & 1u) {
        send_device_command_pair(40, (state + __builtin_annotation(STATUS_FLAGS_OFFSET, "command40"))[4]);
        flags = state[STATUS_FLAGS_OFFSET];
    }
    if (flags & 2u) {
        send_device_command_pair(46, (state + __builtin_annotation(STATUS_FLAGS_OFFSET, "command46"))[6]);
        flags = state[STATUS_FLAGS_OFFSET];
    }
    if (flags & 4u) {
        send_device_command_pair(47, (state + __builtin_annotation(STATUS_FLAGS_OFFSET, "command47"))[7]);
        flags = state[STATUS_FLAGS_OFFSET];
    }
    if (flags & 8u) {
        send_device_command_pair(30, state[FINAL_VALUE_OFFSET]);
        send_device_command_pair(31, state[FINAL_VALUE_OFFSET]);
    }
}
