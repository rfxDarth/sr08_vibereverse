/* Recovered behavior:
 * Run the radio-state handler when the state field at offset 0x4c is active.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_state.h"

extern void dispatch_timed_state_callbacks(void);

__attribute__((used, section(".text.process_radio_state_if_active"))) void process_radio_state_if_active(void) {
    volatile struct sr08_device_state *state;
    /* Load v204_radio_device_state_pointer from its fixed literal at 0x07fc20ec. */
    __asm__ volatile("ldr %[state], [pc, #648]" : [state] "=r"(state));
    /* Radio activity gates the shared timed callback dispatcher. */
    if (state->radio_activity_state != 0)
        dispatch_timed_state_callbacks();
}
