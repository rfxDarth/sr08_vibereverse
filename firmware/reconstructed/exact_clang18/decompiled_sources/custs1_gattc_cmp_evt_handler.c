/* Dispatch the record handler when the first record byte is 0x12 or 0x13. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_measurement_record.h"

enum {
    MEASUREMENT_RECORD_TYPE_FAMILY_MASK = 0xfe,
    MEASUREMENT_RECORD_TYPE_APPEND_FAMILY = 0x12,
};

uint32_t custs1_gattc_cmp_evt_handler(uint32_t event_context, const struct sr08_measurement_record *record) {
    (void)event_context;

    if ((record->type & MEASUREMENT_RECORD_TYPE_FAMILY_MASK) == MEASUREMENT_RECORD_TYPE_APPEND_FAMILY) {
        custs1_exe_operation();
    }

    return 0;
}
