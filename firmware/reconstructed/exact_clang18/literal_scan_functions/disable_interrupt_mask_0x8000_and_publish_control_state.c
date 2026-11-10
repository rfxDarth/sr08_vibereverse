/* Recovered behavior:
 * Write mask 0x8000 to the interrupt clear-enable register, clear control bit zero, then publish
 * state values 1 and 2.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_output_state.h"

void disable_interrupt_mask_0x8000_and_publish_control_state(void)

{
    *SR08_NVIC_CLEAR_ENABLE_REGISTER_1 = SR08_BIT_15_MASK;
    __asm__ volatile("dsb sy" ::: "memory");
    __asm__ volatile("isb sy" ::: "memory");
    *SR08_PERIPHERAL_CONFIGURATION_REGISTER = *SR08_PERIPHERAL_CONFIGURATION_REGISTER & SR08_16BIT_CLEAR_BIT_0_MASK;
    update_state_bits_and_publish_empty_status(1, 2);
}
