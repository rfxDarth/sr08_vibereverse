#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sensor_frame_batch_state.h"

extern void process_sensor_frame_entry_dd68(uint32_t left, uint32_t right, uint32_t setting_a, uint32_t setting_b,
                                            int32_t x, int32_t y, int32_t z);

/* Volatile signed samples preserve the worker argument reads. Initialize the
 * byte-sized index before the context guard, matching the original scheduling.
 * The index wraps at 256, as in V204; count retains its full 32-bit comparison.
 */
__attribute__((used, section(".text.dispatch_batch_item_three_sign_extended_at_ee4c"))) uint32_t
dispatch_batch_item_three_sign_extended_at_ee4c(const uint32_t *left, const uint32_t *right, uint32_t setting_a,
                                                uint32_t setting_b, uint32_t count, const volatile int16_t *x,
                                                const volatile int16_t *y, const volatile int16_t *z) {
    uint8_t i = 0;
    if (sensor_frame_batch_state.context == 0)
        return 0;
    for (; i < count; ++i)
        process_sensor_frame_entry_dd68(left[i], right[i], setting_a, setting_b, x[i], y[i], z[i]);
    return 1;
}
