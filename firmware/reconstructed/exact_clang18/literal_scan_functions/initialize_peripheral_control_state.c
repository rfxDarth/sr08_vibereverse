/* Recovered behavior:
 * Set peripheral control word fields, enable bits zero through two, and set the shared enabled
 * byte.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#define PERIPHERAL_ENABLED_BYTE ((uint8_t *)0x07fd5650u)

void initialize_peripheral_control_state(void)

{
    volatile uint16_t *control_word;

    control_word = SR08_SENSOR_CONTROL_REGISTER;
    SR08_SENSOR_CONTROL_REGISTER[SR08_SENSOR_CONFIGURATION_WORD_INDEX] = SR08_SENSOR_INITIAL_CONFIGURATION_VALUE;
    *control_word = *control_word | 3;
    *control_word = *control_word | 4;
    *PERIPHERAL_ENABLED_BYTE = 1;
}
