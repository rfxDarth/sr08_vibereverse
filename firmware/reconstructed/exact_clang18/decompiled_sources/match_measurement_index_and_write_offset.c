/* Match an input index against the current measurement range. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_measurement_range.h"
#include "firmware/reconstructed/include/sr08_record_lookup.h"

uint32_t match_measurement_index_and_write_offset(uint32_t candidate_index, int8_t *relative_index) {
    const struct sr08_measurement_range *range = find_keyed_record_value(SR08_MEASUREMENT_RECORD_LOOKUP_KEY);
    uint16_t range_start = range->range_start;
    uint32_t result = 0x80;

    /* Equivalent C emits cmp candidate, range_start followed by bcc. V204 uses
     * cmp range_start, candidate followed by bhi; keep that encoding pinned. */
    __asm__ goto volatile("cmp %[range_start], %[candidate]\n\t"
                          "bhi %l[range_fail]"
                          :
                          : [range_start] "l"(range_start), [candidate] "l"(candidate_index)
                          : "cc"
                          : range_fail);
    if (candidate_index < (uint32_t)range->entry_count + range_start) {
        *relative_index = (int8_t)candidate_index - (int8_t)range_start;
        result = 0;
    }
range_fail:
    return result;
}
