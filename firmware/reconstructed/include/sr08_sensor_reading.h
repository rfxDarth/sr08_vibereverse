#ifndef SR08_SENSOR_READING_H
#define SR08_SENSOR_READING_H

#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

/* Vendor four-value sensor reading, as received (time_event_queue_state) and
 * as last accepted (device_control_state); copied and cleared as a whole by
 * save_valid_measurement_range_clear_stale_at_8500. */
struct sr08_sensor_reading {
    uint16_t status;  /* 0xffff, or 0 together with value_2 == 0, is no reading; 0 or 510 invalidates it */
    uint16_t value_1;
    int16_t value_2;  /* valid from -16384 to 25000 (sensor ID 0x27) */
    uint16_t value_3;
};

SR08_STATIC_ASSERT(sizeof(struct sr08_sensor_reading) == 8, "sensor reading is four halfwords");

#endif
