/* Run the timed state callbacks while the radio activity state (word 0x4c of
 * the device state, merged_globals_5650) is non-zero. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_state.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

#define device_state ((struct sr08_device_state *)(void *)&merged_globals_5650)

extern void dispatch_timed_state_callbacks(void);

void process_radio_state_if_active(void)
{
    if (device_state->radio_activity_state != 0)
        dispatch_timed_state_callbacks();
}
