#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_code_lookup.h"

enum {
    DISPLAY_CODE_SCAN_START_OFFSET = -20,
    DISPLAY_CODE_SCAN_END_OFFSET = 0,
    DISPLAY_CODE_PAIR_STRIDE = sizeof(struct sr08_display_code_lookup_pair),
    DISPLAY_CODE_MODE_LOOKUP_BIAS =
        offsetof(struct sr08_display_code_lookup_table, pairs[0].mode) - DISPLAY_CODE_SCAN_START_OFFSET,
    DISPLAY_CODE_VALUE_LOOKUP_BIAS = offsetof(struct sr08_display_code_lookup_table, pairs[0].value) -
                                     DISPLAY_CODE_SCAN_START_OFFSET - DISPLAY_CODE_PAIR_STRIDE,
    DISPLAY_CODE_NOT_FOUND = 4,
};

/* The pointer names the containing shared-state block: the first mode/code
 * pair is at bytes 102/103, while the loop offset begins at -20. The biases
 * below account for that pointer origin and the post-match offset advance.
 */
__attribute__((used, section(".text.search_display_code_table_from_minus20_to_zero"))) uint8_t
search_display_code_table_from_minus20_to_zero(uint32_t mode) {
    const uint8_t *display_code_table;
    __asm__ volatile("ldr %[table], [pc, #28]" : [table] "=r"(display_code_table));

    int32_t entry_offset = DISPLAY_CODE_SCAN_START_OFFSET;
    while (entry_offset != DISPLAY_CODE_SCAN_END_OFFSET) {
        uint8_t candidate_mode = display_code_table[entry_offset + DISPLAY_CODE_MODE_LOOKUP_BIAS];
        entry_offset += DISPLAY_CODE_PAIR_STRIDE;
        if (candidate_mode == mode)
            return display_code_table[entry_offset + DISPLAY_CODE_VALUE_LOOKUP_BIAS];
    }
    return DISPLAY_CODE_NOT_FOUND;
}
