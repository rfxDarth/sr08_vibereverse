/* Recovered behavior:
 * Write the value one to peripheral status register 0x50001508.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"

void write_one_to_peripheral_status_register(void)

{
    *SR08_PERIPHERAL_STATUS_REGISTER_50001508 = 1;
}
