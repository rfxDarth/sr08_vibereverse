/* Return the base measurement value plus an in-range slot index. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_measurement_range.h"
#include "firmware/reconstructed/include/sr08_record_lookup.h"

__attribute__((used, section(".text.custs1_get_att_handle"))) uint16_t
custs1_get_att_handle(uint32_t index) {
    const struct sr08_measurement_range *range = prf_env_get(SR08_MEASUREMENT_RECORD_LOOKUP_KEY);
    if (index >= range->entry_count)
        return 0;

    return (uint16_t)(range->range_start + index);
}
