/* Recovered behavior:
 * Update the interrupt-control registers, wait for the NMI status flag, report its context, and
 * resume.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_exception_report.h"

#define NMI_CONTROL_PRESERVED_BITS 0x7ffcu
#define NMI_CONTROL_ENABLE_BIT 0x8000u
enum { PERIPHERAL_STATUS_BIT_3_MASK = 0x0008 };

void handle_nmi_and_report_context(const uint32_t *exception_context) {
    *SR08_NMI_CONTROL_REGISTER |= 4;
    *SR08_NMI_CONTROL_REGISTER |= 2;
    *SR08_DISPLAY_SENSOR_CONTROL_REGISTER_50000008 |= 0x40;
    *SR08_NVIC_PENDING_CLEAR_REGISTER = 1;
    *SR08_NMI_CONTROL_REGISTER &= (uint16_t)~2u;
    do {
    } while ((*SR08_PERIPHERAL_STATUS_REGISTER_50000014 & PERIPHERAL_STATUS_BIT_3_MASK) == 0);

    print_exception_context_to_uart(SR08_EXCEPTION_NMI, exception_context);
    *SR08_SYSTEM_CONTROL_REGISTER_50000012 =
        (*SR08_SYSTEM_CONTROL_REGISTER_50000012 & (uint16_t)NMI_CONTROL_PRESERVED_BITS) | NMI_CONTROL_ENABLE_BIT;
}
