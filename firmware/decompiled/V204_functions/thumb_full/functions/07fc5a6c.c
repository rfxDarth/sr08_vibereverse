/* Return the base measurement value plus an in-range slot index. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_measurement_range.h"

extern uint32_t find_key_bounded_table_return_preceding_at_b080(uint32_t key);

__attribute__((used, section(".text.FUN_07fc5a6c")))
uint16_t lookup_measurement_value_by_index(uint32_t index)
{
    const struct sr08_measurement_range *range =
        (const struct sr08_measurement_range *)(uintptr_t)
        find_key_bounded_table_return_preceding_at_b080(0xfd);
    if (index >= range->entry_count)
        return 0;

    return (uint16_t)(range->range_start + index);
}

