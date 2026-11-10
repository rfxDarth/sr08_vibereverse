/* Store the scaled measurement as an integer number of thousands. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_device_state.h"

extern uint32_t request_sensor_sample_then_scale_result(void);

__attribute__((used, section(".text.store_measurement_value_divided_by_1000"))) void
store_measurement_value_divided_by_1000(void) {
    uint32_t value = request_sensor_sample_then_scale_result();
    value = __aeabi_uidiv(value, 1000);
    volatile struct sr08_device_state *device_state;
    __asm__ volatile("ldr %[state], [pc, #884]" : [state] "=r"(device_state));
    device_state->scaled_measurement_value = value;
}
