/* Record the connection state ("c=%d"). On disconnection (1 -> 0), clear the
 * connection-related mode flags and state, leave display state 22 alone, and
 * reset the connection-parameter settings (interval 500 / 0xffff, latency
 * 0xffff). */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_settings.h"
#include "firmware/reconstructed/include/sr08_device_state.h"
#include "firmware/reconstructed/include/sr08_display_state_switches.h"
#include "firmware/reconstructed/include/sr08_format.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_mode_transition.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

void reset_related_capture_sensor_state_control_at_4fc8(uint8_t connected)
{
    uint8_t previous = sr08_shared_context.connection_state;
    struct sr08_device_state *state = (struct sr08_device_state *)&merged_globals_5650;

    if (connected == 1 && previous == 0) {
    } else if (connected == 0 && previous == 1) {
        update_mode_flags_and_transitions(0x200b0000);
        if (merged_globals_5650.reserved_0c[0] != 22)
            switch_display_state_and_run_hooks(0);
        sr08_shared_context.state_12 = 0;
        sr08_shared_context.state_01 = 0;
        state->active_mode_setting = 0;
        sr08_shared_context.state_c4 = 0;
        sr08_shared_context.mode_11 = 0;
        device_settings.slave_latency = 0xffff;
        device_settings.conn_intv_max = 0xffff;
        device_settings.conn_intv_min = 500;
    }
    sr08_shared_context.connection_state = connected;
    arch_printf((const uint8_t *)"c=%d\n", connected);
}
