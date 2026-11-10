/* Recovered behavior:
 * Poll the 16-bit status register at 0x50001378 until any bit is set or 200 timer units elapse.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_status_wait_helpers.h"
#define ALL_STATUS_BITS_MASK 0x0000ffffu

uint32_t wait_for_any_status_bit_or_elapsed_200(uint32_t status_snapshot __attribute__((unused)))

{
    return wait_requested_status_mask_minimum_elapsed_at_8a78(SR08_STATUS_REGISTER_50001378, ALL_STATUS_BITS_MASK, 0,
                                                              200);
}
