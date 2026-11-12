/* Queue a 0x24 event record carrying five argument bytes. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_event_record_queue.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

void search_queue_and_insert_limit_one(const void *record);

void build_event_header_and_fourteen_byte_scratch_area(uint8_t a, uint8_t b, uint8_t c, uint8_t d, uint8_t e)
{
    uint8_t record[EVENT_RECORD_SIZE];
    sr08_shared_context.last_event_argument = a;
    __aeabi_memclr(&record[6], sizeof(record) - 6);
    record[0] = 0x24;
    record[1] = a;
    record[2] = b;
    record[3] = c;
    record[4] = d;
    record[5] = e;
    search_queue_and_insert_limit_one(record);
}
