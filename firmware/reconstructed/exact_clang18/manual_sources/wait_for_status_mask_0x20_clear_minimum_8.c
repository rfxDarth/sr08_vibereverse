/* Recovered behavior:
 * Wait for status mask 0x20 to become clear, with an eight-tick timeout.
 */
#include "firmware/reconstructed/include/sr08_status_wait_helpers.h"
#include "firmware/reconstructed/include/sr08_device_registers.h"

enum {
    STATUS_MASK = 0x20,
    WAIT_FOR_CLEAR = 1,
    MINIMUM_ELAPSED_TICKS = 8,
};

__attribute__((used, section(".text.wait_for_status_mask_0x20_clear_minimum_8"))) void
wait_for_status_mask_0x20_clear_minimum_8(void) {
    uint32_t status_address = SR08_STATUS_REGISTER_50001370;
    poll_status_until_match_or_ble_timeout(status_address, STATUS_MASK, WAIT_FOR_CLEAR,
                                                       MINIMUM_ELAPSED_TICKS);
}
