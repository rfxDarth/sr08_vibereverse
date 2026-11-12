/* Recovered behavior:
 * Wait until status mask 0x02 is set or eight timer units elapse.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_status_wait_helpers.h"

enum {
    STATUS_MASK = 0x02,
    WAIT_FOR_SET = 0,
    MINIMUM_ELAPSED_TICKS = 8,
};

void wait_for_status_mask_0x02_set_minimum_8(void)

{
    poll_status_until_match_or_ble_timeout(SR08_STATUS_REGISTER_50001370, STATUS_MASK, WAIT_FOR_SET,
                                                       MINIMUM_ELAPSED_TICKS);
}
