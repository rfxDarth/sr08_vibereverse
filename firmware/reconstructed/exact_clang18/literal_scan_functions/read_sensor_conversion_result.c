/* Recovered behavior:
 * Start a peripheral conversion, wait for completion, return its result, and restore the prior
 * control settings.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"

enum {
    DISPLAY_SENSOR_CONTROL_MODE_BITS_MASK = 0x001e,
    DISPLAY_SENSOR_CONTROL_CLEAR_MODE_BITS_MASK = 0xffe1,
    DISPLAY_SENSOR_CONTROL_COMPLETION_CLEAR_MASK = 0xfff5,
    DISPLAY_SENSOR_CONTROL_COMPLETION_VALUE = 0x0014,
    DISPLAY_SENSOR_CONTROL_DISABLE_MASK = 0xfffe,
    SENSOR_CONVERSION_CONFIGURATION_VALUE = 0x0400,
    SENSOR_CONVERSION_START_VALUE = 5,
    SENSOR_CONVERSION_BUSY_MASK = 0x0004,
};

uint16_t read_sensor_conversion_result(void)

{
    uint16_t saved_display_control;
    uint16_t conversion_result;
    volatile uint16_t *display_control;
    volatile uint16_t *sensor_control;

    display_control = SR08_DISPLAY_SENSOR_CONTROL_REGISTER_50000022;
    saved_display_control = *SR08_DISPLAY_SENSOR_CONTROL_REGISTER_50000022;
    *SR08_DISPLAY_SENSOR_CONTROL_REGISTER_50000022 = *SR08_DISPLAY_SENSOR_CONTROL_REGISTER_50000022 | 1;
    *display_control = *display_control & DISPLAY_SENSOR_CONTROL_CLEAR_MODE_BITS_MASK;
    sensor_control = SR08_SENSOR_CONTROL_REGISTER;
    SR08_SENSOR_CONTROL_REGISTER[SR08_SENSOR_CONFIGURATION_WORD_INDEX] = SENSOR_CONVERSION_CONFIGURATION_VALUE;
    *sensor_control = SENSOR_CONVERSION_START_VALUE;
    do {
    } while ((*sensor_control & SENSOR_CONVERSION_BUSY_MASK) != 0);
    conversion_result = sensor_control[SR08_SENSOR_CONVERSION_RESULT_WORD_INDEX];
    *display_control =
        *display_control & DISPLAY_SENSOR_CONTROL_COMPLETION_CLEAR_MASK | DISPLAY_SENSOR_CONTROL_COMPLETION_VALUE;
    *display_control = *display_control & DISPLAY_SENSOR_CONTROL_DISABLE_MASK;
    *display_control = (*display_control & DISPLAY_SENSOR_CONTROL_CLEAR_MODE_BITS_MASK) |
                       (saved_display_control & DISPLAY_SENSOR_CONTROL_MODE_BITS_MASK);
    return conversion_result;
}
