/* Return byte six from the current record-value object, when one exists. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_releasable_object.h"

extern uint32_t find_key_bounded_table_return_preceding_at_b080(uint32_t key);

uint8_t read_current_record_value_byte(void)
{
    const struct sr08_releasable_object *record =
        (const struct sr08_releasable_object *)(uintptr_t)
        find_key_bounded_table_return_preceding_at_b080(0xfd);
    uint8_t result = 0;

    if (record != 0) {
        const uint8_t *value = (const uint8_t *)(uintptr_t)record->handle;
        if (value != 0)
            result = value[6];
    }
    return result;
}

