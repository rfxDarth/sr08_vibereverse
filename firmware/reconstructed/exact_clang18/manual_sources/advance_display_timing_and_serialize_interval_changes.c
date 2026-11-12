/* Add elapsed to the shared step counters. While sensor mode request bit 3 is
 * set in modes 1, 2 or 4, also add it to the interval counter at +0x2c and
 * queue a 0x51 record carrying that counter's low four bytes. */
#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

extern void search_queue_and_insert_limit_one(const void *record);
extern void queue_computed_status_records(void);

#define context_byte(offset) (((uint8_t *)&sr08_shared_context)[offset])
#define context_word(offset) (*(uint32_t *)(void *)((uint8_t *)&sr08_shared_context + (offset)))
/* device_control_state + 0x70: pending status record flags. */
#define status_record_flags (*(volatile uint32_t *)(void *)((uint8_t *)&device_control_state + 0x70))

enum {
    INTERVAL_RECORD = 0x51,
    INTERVAL_REQUEST = 0x08,
    INTERVAL_MODES = (1 << 1) | (1 << 2) | (1 << 4),
    STATUS_RECORD_PENDING = 0x02,
};

void advance_display_timing_and_serialize_interval_changes(uint32_t elapsed, uint32_t tertiary)
{
    uint8_t record[20];

    context_word(SR08_SHARED_CONTEXT_TOTAL_STEP_COUNT_OFFSET) += elapsed;
    memset(&record[5], 0, sizeof(record) - 5);
    if ((context_byte(0x14) & INTERVAL_REQUEST) && context_byte(0x10) <= 4
        && ((1u << context_byte(0x10)) & INTERVAL_MODES)) {
        uint32_t interval = context_word(SR08_SHARED_CONTEXT_SECONDARY_STEP_COUNT_OFFSET) + elapsed;

        record[0] = INTERVAL_RECORD;
        record[1] = interval;
        context_word(SR08_SHARED_CONTEXT_SECONDARY_STEP_COUNT_OFFSET) = interval;
        record[4] = interval >> 24;
        record[3] = interval >> 16;
        record[2] = interval >> 8;
        search_queue_and_insert_limit_one(record);
    }
    status_record_flags |= STATUS_RECORD_PENDING;
    if (tertiary)
        context_word(SR08_SHARED_CONTEXT_TERTIARY_STEP_COUNT_OFFSET) += elapsed;
    queue_computed_status_records();
}
