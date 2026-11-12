/* Recovered behavior:
 * Wait for a nonempty I2C receive FIFO or a 200-count BLE-clock timeout.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_status_wait_helpers.h"
#define ALL_STATUS_BITS_MASK 0x0000ffffu

void wait_i2c_rx_fifo_or_timeout(void)

{
    poll_status_until_match_or_ble_timeout(SR08_STATUS_REGISTER_50001378, ALL_STATUS_BITS_MASK, 0,
                                                              200);
}
