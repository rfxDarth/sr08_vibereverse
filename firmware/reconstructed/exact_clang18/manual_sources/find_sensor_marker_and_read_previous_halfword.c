/* Find the sensor marker and return its preceding halfword. */
#include "firmware/reconstructed/include/sr08_sensor_table_lookups.h"

enum {
    SENSOR_TABLE_POINTER_LITERAL_OFFSET = 148,
    SENSOR_TABLE_KEY_OFFSET = 22,
    MATCHED_VALUE_BACKSTEP = 26,
};

SR08_DEFINE_SENSOR_TABLE_PAIR_LOOKUP(find_sensor_marker_entry_and_read_previous_value_at_b0d0,
                                     find_sensor_marker_and_read_previous_halfword, SENSOR_TABLE_POINTER_LITERAL_OFFSET,
                                     SENSOR_TABLE_KEY_OFFSET, MATCHED_VALUE_BACKSTEP)
