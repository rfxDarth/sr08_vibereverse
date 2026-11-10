/* Search the circular record queue and insert with limit one. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_ring_buffer.h"

void search_queue_and_insert_limit_one(const void *record)

{
    search_circular_record_queue_insert_missing_at_2f2c(record, 1);
}
