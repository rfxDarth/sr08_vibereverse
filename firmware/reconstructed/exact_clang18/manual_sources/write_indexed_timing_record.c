/* Write the tagged timing record at slot_index * 16. The record stores the
 * caller's data word and timing value, plus a third value returned by the
 * sensor scaling helper.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_timing_record.h"

extern uint32_t request_sensor_sample_then_scale_result(void);

#define TIMING_RECORD_TABLE ((struct sr08_timing_record *)(uintptr_t)0x07fd5464u)

enum { TIMING_RECORD_TYPE_INDEXED = 0x101 };

__attribute__((used, section(".text.write_indexed_timing_record"))) int
write_indexed_timing_record(int slot_index, uint32_t timing_value, uint32_t data_word) {
    uint32_t slot_byte_offset = (uint32_t)slot_index * sizeof(struct sr08_timing_record);
    struct sr08_timing_record *record = TIMING_RECORD_TABLE;
    /* The 16-bit type tag is stored at table + slot_byte_offset, then the
     * record pointer advances to that same indexed slot. Pin this pair because
     * ordinary C lowering changes its exact Thumb encoding.
     */
    __asm__ volatile("strh %[type], [%[record], %[offset]]\n\t"
                     "adds %[record], %[record], %[offset]"
                     : [record] "+r"(record)
                     : [offset] "r"(slot_byte_offset), [type] "r"(TIMING_RECORD_TYPE_INDEXED)
                     : "memory", "cc");

    record->data_word = data_word;
    record->timing_value = timing_value;
    record->scaled_second_word = request_sensor_sample_then_scale_result();
    return slot_index;
}
