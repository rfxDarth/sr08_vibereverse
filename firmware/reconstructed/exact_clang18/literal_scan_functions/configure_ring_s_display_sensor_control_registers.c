/* Recovered behavior:
 * Update the ring display/sensor control registers and initialize their shared configuration.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"

enum {
    PERIPHERAL_CONTROL_MODE_CLEAR_MASK = 0xffe0ffff,
    PERIPHERAL_CONTROL_MODE_VALUE = 0x00020000,
    PERIPHERAL_CONTROL_LOW_FLAGS_CLEAR_MASK = 0xfffffff8,
    DISPLAY_SENSOR_CONTROL_BIT_1_CLEAR_MASK = 0xfffd,
    DISPLAY_SENSOR_CONTROL_BIT_0 = 1,
    DISPLAY_SENSOR_CONTROL_BIT_3 = 8,
};

void configure_ring_s_display_sensor_control_registers(void)

{
    volatile uint16_t *display_sensor_control;

    display_sensor_control = SR08_DISPLAY_SENSOR_CONTROL_REGISTER_50000008;
    SR08_PERIPHERAL_CONTROL_WORD_40000074 =
        (SR08_PERIPHERAL_CONTROL_WORD_40000074 & PERIPHERAL_CONTROL_MODE_CLEAR_MASK) | PERIPHERAL_CONTROL_MODE_VALUE;
    SR08_PERIPHERAL_CONTROL_WORD_40000000 &= PERIPHERAL_CONTROL_LOW_FLAGS_CLEAR_MASK;
    *display_sensor_control =
        *display_sensor_control & DISPLAY_SENSOR_CONTROL_BIT_1_CLEAR_MASK | DISPLAY_SENSOR_CONTROL_BIT_0;
    *display_sensor_control = *display_sensor_control | DISPLAY_SENSOR_CONTROL_BIT_3;
    initialize_ring_display_and_sensor_registers();
}
