/* Find a sensor record by low byte and return its paired halfword. */
#include "firmware/reconstructed/include/sr08_sensor_table_lookups.h"

enum {
    SENSOR_TABLE_POINTER_LITERAL_OFFSET = 188,
    SENSOR_TABLE_KEY_OFFSET = 20,
    MATCHED_VALUE_BACKSTEP = 22,
};

SR08_DEFINE_SENSOR_TABLE_PAIR_LOOKUP(find_sensor_record_entry_by_low_byte_at_b0a8,
                                     find_sensor_record_by_low_byte_and_return_halfword,
                                     SENSOR_TABLE_POINTER_LITERAL_OFFSET, SENSOR_TABLE_KEY_OFFSET,
                                     MATCHED_VALUE_BACKSTEP)
