/* Recovered behavior:
 * For the 16-byte table entry selected by the index, update its delay and derived value only when
 * the delay differs.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_timing_record.h"

extern uint32_t request_sensor_sample_then_scale_result(void);

__attribute__((used, section(".text.update_indexed_delay_entry_if_changed"))) uint32_t
update_indexed_delay_entry_if_changed(uint32_t entry_index, uint32_t timing_value) {
    volatile struct sr08_timing_record *record;
    __asm__ volatile("lsls r0, r0, #4\n\t"
                     "ldr r2, [pc, #24]\n\t"
                     "adds %[record], r2, r0"
                     : [record] "=r"(record)
                     : "r"(entry_index)
                     : "r0", "r2", "memory");

    if (record->timing_value != timing_value) {
        __asm__ volatile("adds r0, %[record], #4\n\tstr %[timing], [r0]"
                         :
                         : [record] "r"(record), [timing] "r"(timing_value)
                         : "r0", "memory");
        record->scaled_second_word = request_sensor_sample_then_scale_result();
    }
    return entry_index;
}
