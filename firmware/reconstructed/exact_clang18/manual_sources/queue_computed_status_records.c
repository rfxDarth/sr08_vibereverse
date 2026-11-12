/* Queue the two status records: 0x03 (time, total steps, the two values
 * derived from the steps and the stride settings, and context value 0x44
 * when it is at least 9001) and 0x13 (time and the counters at +0x3c, +0x40
 * and +0x48). Multi-byte fields are little-endian. */
#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_clock_literal_pool.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

extern struct sr08_clock_timekeeping_state clock_timekeeping_state;
extern void search_queue_and_insert_limit_one(const void *record);

#define context_byte(offset) (((uint8_t *)&sr08_shared_context)[offset])
#define context_half(offset) (*(uint16_t *)(void *)((uint8_t *)&sr08_shared_context + (offset)))
#define context_word(offset) (*(uint32_t *)(void *)((uint8_t *)&sr08_shared_context + (offset)))

enum {
    STEP_RECORD = 0x03,
    COUNTER_RECORD = 0x13,
    MIN_CONTEXT_VALUE = 9001,
};

struct __attribute__((packed)) status_record {
    uint8_t type;
    uint32_t time;
    uint32_t values[3];
    uint32_t context_value : 24;
};

void queue_computed_status_records(void)
{
    struct status_record record;
    uint32_t steps, stride_steps, value;

    record.type = STEP_RECORD;
    steps = context_word(SR08_SHARED_CONTEXT_TOTAL_STEP_COUNT_OFFSET);
    record.values[0] = steps;
    record.time = clock_timekeeping_state.current_timestamp;
    value = sr08_shared_context.context_value_44;
    record.context_value = value < MIN_CONTEXT_VALUE ? 0 : value;
    stride_steps = context_half(0x36) * steps;
    record.values[2] = 14 * (context_byte(0x8a) * stride_steps) / 1600000;
    record.values[1] = ((stride_steps * 2) >> 5) / 5;
    search_queue_and_insert_limit_one(&record);

    memset((uint8_t *)&record + 17, 0, 3);
    record.type = COUNTER_RECORD;
    record.time = clock_timekeeping_state.current_timestamp;
    record.values[0] = context_word(SR08_SHARED_CONTEXT_TERTIARY_STEP_COUNT_OFFSET);
    record.values[1] = context_word(0x40);
    record.values[2] = context_word(0x48);
    search_queue_and_insert_limit_one(&record);
}
