/* Apply the pending-record operation to each item while the record subsystem
 * is active. Returns zero when inactive and one otherwise. The index is an
 * eight-bit counter, so counts above 255 never complete.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sensor_status_record.h"

extern void update_sensor_signal_state_from_sample(uint32_t);

uint32_t apply_pending_record_operation_to_items_while_active(const uint32_t *items, uint32_t count) {
    uint8_t index = 0;
    if (sensor_status_record.context == 0)
        return 0;
    for (; index < count; index++)
        update_sensor_signal_state_from_sample(items[index]);
    return 1;
}
