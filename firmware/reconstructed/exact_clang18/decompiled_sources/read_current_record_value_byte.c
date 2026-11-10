/* Return byte six from the current record-value object, when one exists. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_record_lookup.h"
#include "firmware/reconstructed/include/sr08_record_value.h"
#include "firmware/reconstructed/include/sr08_releasable_object.h"

uint8_t read_current_record_value_byte(void) {
    const struct sr08_releasable_object *record = find_keyed_record_value(SR08_MEASUREMENT_RECORD_LOOKUP_KEY);
    if (record == 0 || record->handle == 0)
        return 0;

    const struct sr08_record_value *value = (const struct sr08_record_value *)record->handle;
    return value->current_value;
}
