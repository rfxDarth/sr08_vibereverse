/* Recovered behavior:
 * Wait for status mask 0x04 to become set, with a 32-tick minimum elapsed interval.
 */
#include "firmware/reconstructed/include/sr08_status_wait_helpers.h"

enum {
    STATUS_MASK = 0x04,
    WAIT_FOR_SET = 0,
    MINIMUM_ELAPSED_TICKS = 32,
};

__attribute__((used, section(".text.wait_for_status_mask_0x04_set_minimum_32"))) void
wait_for_status_mask_0x04_set_minimum_32(void) {
    register uint32_t status_address __asm__("r0");
    __asm__ volatile("ldr r0, [pc, #44]" : "=r"(status_address));
    wait_requested_status_mask_minimum_elapsed_at_8a78(status_address, STATUS_MASK, WAIT_FOR_SET,
                                                       MINIMUM_ELAPSED_TICKS);
}
