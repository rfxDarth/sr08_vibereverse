/* For the 16-byte timing record selected by the index, update its delay and
 * derived value only when the delay differs.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_timing_record.h"

extern uint32_t get_ble_base_time_ms(void);

uint32_t update_indexed_delay_entry_if_changed(uint32_t entry_index, uint32_t timing_value) {
    struct sr08_timing_record *record = &sr08_timing_records[entry_index];
    if (record->timing_value != timing_value) {
        record->timing_value = timing_value;
        record->scaled_second_word = get_ble_base_time_ms();
    }
    return entry_index;
}
