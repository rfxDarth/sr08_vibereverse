#ifndef SR08_TIME_EVENT_QUEUE_H
#define SR08_TIME_EVENT_QUEUE_H

#include "firmware/reconstructed/include/sr08_ring_buffer.h"
#include "firmware/reconstructed/include/sr08_sensor_reading.h"
#include "firmware/reconstructed/include/sr08_static_assert.h"

#include <stddef.h>
#include <stdint.h>

/* Vendor state at 0x07fd1f8c; its ring descriptor at +0x28 queues one-byte
 * time events. */
struct time_event_queue_state {
    uint8_t reserved_00_to_27[0x28];
    struct sr08_ring_buffer ring;
    /* Vendor: 1 when sensor_reading holds a fresh four-value reading
     * (save_valid_measurement_range_clear_stale_at_8500). */
    uint32_t sensor_reading_status;
    struct sr08_sensor_reading sensor_reading;
};

SR08_STATIC_ASSERT(offsetof(struct time_event_queue_state, ring) == 0x28, "time event ring must remain at offset 0x28");
SR08_STATIC_ASSERT(offsetof(struct time_event_queue_state, sensor_reading) == 0x40, "sensor reading must remain at offset 0x40");

extern struct time_event_queue_state time_event_queue_state;

#endif
