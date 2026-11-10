/* Search the circular record queue and insert with limit 0x14. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_ring_buffer.h"

enum { RECORD_QUEUE_INSERT_LIMIT = 20 };

void search_queue_and_insert_limit_twenty(const void *record)

{
    search_circular_record_queue_insert_missing_at_2f2c(record, RECORD_QUEUE_INSERT_LIMIT);
}
