/* Return bit zero of field ten in the selected record, or zero if absent. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_flagged_record.h"
#include "firmware/reconstructed/include/sr08_record_lookup.h"

uint8_t read_record_flag_bit_zero(void) {
    const struct sr08_flagged_record *record = find_keyed_record_value(SR08_ATTRIBUTE_RECORD_LOOKUP_KEY);
    if (record == 0)
        return 0;
    return (uint8_t)(record->flags & 1u);
}
