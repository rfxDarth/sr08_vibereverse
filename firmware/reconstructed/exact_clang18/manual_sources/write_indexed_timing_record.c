/* Write the tagged timing record for a slot: type tag, the caller's data word
 * and timing value, and a value returned by the sensor scaling helper.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_timing_record.h"

extern uint32_t get_ble_base_time_ms(void);

enum { TIMING_RECORD_TYPE_INDEXED = 0x101 };

int write_indexed_timing_record(int slot_index, uint32_t timing_value, uint32_t data_word) {
    struct sr08_timing_record *record = &sr08_timing_records[slot_index];
    record->type = TIMING_RECORD_TYPE_INDEXED;
    record->data_word = data_word;
    record->timing_value = timing_value;
    record->scaled_second_word = get_ble_base_time_ms();
    return slot_index;
}
