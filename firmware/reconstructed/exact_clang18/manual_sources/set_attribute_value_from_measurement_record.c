/* Write this record's value to the attribute selected by its relative handle. */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_attmdb.h"
#include "firmware/reconstructed/include/sr08_measurement_range.h"
#include "firmware/reconstructed/include/sr08_record_lookup.h"

struct sr08_attribute_value_record {
    uint16_t reserved;
    uint16_t record_offset;
    uint16_t value_length;
    uint8_t value[];
};

_Static_assert(offsetof(struct sr08_attribute_value_record, record_offset) == 2,
               "attribute record offset must remain at byte two");
_Static_assert(offsetof(struct sr08_attribute_value_record, value_length) == 4,
               "attribute value length must remain at byte four");
_Static_assert(offsetof(struct sr08_attribute_value_record, value) == 6, "attribute value must remain at byte six");

__attribute__((used, section(".text.set_attribute_value_from_measurement_record"))) uint32_t
set_attribute_value_from_measurement_record(uint32_t reserved_context,
                                            struct sr08_attribute_value_record *attribute_record) {
    (void)reserved_context;
    const volatile struct sr08_measurement_range *measurement_range =
        find_keyed_record_value(SR08_MEASUREMENT_RECORD_LOOKUP_KEY);
    uint32_t attribute_handle = (uint16_t)(measurement_range->range_start + attribute_record->record_offset);

    attmdb_att_set_value(attribute_handle, attribute_record->value_length, 0, attribute_record->value);
    return 0;
}
