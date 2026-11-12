/* Recovered behavior:
 * Wait for status mask 0x04 to become set, with a 32-tick timeout.
 */
#include "firmware/reconstructed/include/sr08_status_wait_helpers.h"
#include "firmware/reconstructed/include/sr08_device_registers.h"

enum {
    STATUS_MASK = 0x04,
    WAIT_FOR_SET = 0,
    MINIMUM_ELAPSED_TICKS = 32,
};

__attribute__((used, section(".text.wait_for_status_mask_0x04_set_minimum_32"))) void
wait_for_status_mask_0x04_set_minimum_32(void) {
    uint32_t status_address = SR08_STATUS_REGISTER_50001370;
    poll_status_until_match_or_ble_timeout(status_address, STATUS_MASK, WAIT_FOR_SET,
                                                       MINIMUM_ELAPSED_TICKS);
}
