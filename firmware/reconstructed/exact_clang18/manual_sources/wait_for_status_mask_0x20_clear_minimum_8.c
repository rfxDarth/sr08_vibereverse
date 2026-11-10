/* Recovered behavior:
 * Wait for status mask 0x20 to become clear, with an eight-tick minimum elapsed interval.
 */
#include "firmware/reconstructed/include/sr08_status_wait_helpers.h"

enum {
    STATUS_MASK = 0x20,
    WAIT_FOR_CLEAR = 1,
    MINIMUM_ELAPSED_TICKS = 8,
};

__attribute__((used, section(".text.wait_for_status_mask_0x20_clear_minimum_8"))) void
wait_for_status_mask_0x20_clear_minimum_8(void) {
    register uint32_t status_address __asm__("r0");
    __asm__ volatile("ldr r0, [pc, #28]" : "=r"(status_address));
    wait_requested_status_mask_minimum_elapsed_at_8a78(status_address, STATUS_MASK, WAIT_FOR_CLEAR,
                                                       MINIMUM_ELAPSED_TICKS);
}
