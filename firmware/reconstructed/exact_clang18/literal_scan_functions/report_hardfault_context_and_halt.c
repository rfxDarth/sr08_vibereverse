/* Recovered behavior:
 * Report the HardFault status and supplied exception context, set hardware status codes, and halt.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_exception_report.h"

void report_hardfault_context_and_halt(const uint32_t *exception_context)

{
    volatile uint16_t *status_word;

    status_word = SR08_HARDFAULT_STATUS_REGISTER;
    *SR08_HARDFAULT_STATUS_REGISTER = 200;
    print_exception_context_to_uart(SR08_EXCEPTION_HARDFAULT, exception_context);
    *status_word = 200;
    *SR08_HALT_STATUS_REGISTER = 8;
    for (;;) {
    }
}
