#ifndef SR08_INDEXED_SENSOR_STATE_H
#define SR08_INDEXED_SENSOR_STATE_H

#include <stddef.h>
#include <stdint.h>

enum { SR08_INDEXED_SENSOR_STATE_INDEX_STRIDE = 14 };

/* One view begins at shared_state + index * 14. The fields are columns in a
 * shared state block, so adjacent views overlap; this type names their byte
 * offsets and is used only for field access, never for array traversal.
 */
struct sr08_indexed_sensor_state_view {
    uint8_t reserved_00_to_57[0x58];
    uint16_t measurement_status;
    uint8_t slot_index;
    uint8_t measurement_available;
};

_Static_assert(offsetof(struct sr08_indexed_sensor_state_view, measurement_status) == 0x58,
               "indexed measurement status must remain at offset 0x58");
_Static_assert(offsetof(struct sr08_indexed_sensor_state_view, slot_index) == 0x5a,
               "indexed slot number must remain at offset 0x5a");
_Static_assert(offsetof(struct sr08_indexed_sensor_state_view, measurement_available) == 0x5b,
               "measurement availability must remain at offset 0x5b");
_Static_assert(sizeof(struct sr08_indexed_sensor_state_view) == 0x5c,
               "indexed sensor-state view must extend through byte 0x5b");

#endif
