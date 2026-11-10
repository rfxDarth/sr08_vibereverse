/* Update the device settings record and run its conditional mode callback. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_setting_state.h"
#include "firmware/reconstructed/include/sr08_device_state.h"

extern uint32_t request_sensor_sample_then_scale_result(void);
extern void replace_state_timer_with_600_delay(void);

__attribute__((used, section(".text.update_device_settings_and_timeout_if_value_low"))) void
update_device_settings_and_timeout_if_value_low(uint32_t value, uint16_t setting, uint16_t mode) {
    volatile struct sr08_device_setting_state *state;
    volatile struct sr08_device_state *shared_state;

    request_sensor_sample_then_scale_result();
    /* Preserve the mode update's original encoding, then restart the periodic-record interval. */
    __asm__ volatile("ldr %[state], [pc, #964]" : [state] "=r"(shared_state));
    shared_state->active_mode_setting = mode;
    shared_state->last_periodic_record_timestamp = 0;
    __asm__ volatile("ldr %[state], [pc, #24]" : [state] "=r"(state));
    state->setting = setting;
    state->current_value = (uint16_t)value;
    if (value < state->minimum_value)
        state->minimum_value = (uint16_t)value;
    if (value < 0x50)
        replace_state_timer_with_600_delay();
}
