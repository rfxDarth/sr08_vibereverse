/* Return bit zero of field ten in the selected record, or zero if absent. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_flagged_record.h"

extern uint32_t find_key_bounded_table_return_preceding_at_b080(uint32_t key);

uint16_t read_record_flag_bit_zero(void)
{
    const struct sr08_flagged_record *record =
        (const struct sr08_flagged_record *)(uintptr_t)
        find_key_bounded_table_return_preceding_at_b080(0xfc);
    if (record == 0)
        return 0;
    return record->flags & 1;
}

