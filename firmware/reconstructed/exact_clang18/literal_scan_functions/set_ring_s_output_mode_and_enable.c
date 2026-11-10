/* Recovered behavior:
 * Clear output-control bit zero, apply the shifted mode through mask 0xfe7f, then set bit zero.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_output_state.h"
#define RING_OUTPUT_CONTROL_PRESERVE_MASK 0x0000fe7fu

void set_ring_s_output_mode_and_enable(uint32_t mode_value)

{
    volatile uint16_t *output_control;

    output_control = SR08_RING_OUTPUT_CONTROL_REGISTER;
    *SR08_RING_OUTPUT_CONTROL_REGISTER &= SR08_16BIT_CLEAR_BIT_0_MASK;
    *output_control = mode_value << 7 | (uint16_t)RING_OUTPUT_CONTROL_PRESERVE_MASK & *output_control;
    *output_control = *output_control | 1;
}
