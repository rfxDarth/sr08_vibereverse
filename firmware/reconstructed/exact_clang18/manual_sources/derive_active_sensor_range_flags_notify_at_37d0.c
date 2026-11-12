/* Choose the sensor mode from the pending mode requests and apply it with
 * start_or_stop_sensor_calibration: 0 without requests, in display state 30 or
 * while the record flag is set; otherwise the highest requested bit 6-14, or
 * (without those) 2 for requests 0x22, 1 for 0x1d. With only low requests
 * while the 0x26 state byte is set, the requests are dropped. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_flagged_record.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

void start_or_stop_sensor_calibration(uint32_t mode);

uint32_t derive_active_sensor_range_flags_notify_at_37d0(void)
{
    uint32_t requests = sr08_shared_context.sensor_mode_requests;
    uint32_t mode = 0;

    if (requests != 0 && merged_globals_5650.reserved_0c[0] != 30 && read_record_flag_bit_zero() == 0) {
        if ((requests & 0x7fc0) != 0) {
            for (uint32_t bit = 1u << 14;; bit >>= 1) {
                mode = bit;
                if (bit < 64 || (requests & bit) != 0)
                    break;
            }
        } else if (merged_globals_5650.sensor_mode_hold != 0) {
            sr08_shared_context.sensor_mode_requests = 0;
            mode = 0;
        } else {
            mode = (requests & 0x1d) != 0;
            if (requests & 0x22)
                mode = 2;
        }
    }
    start_or_stop_sensor_calibration(mode);
    return mode;
}
