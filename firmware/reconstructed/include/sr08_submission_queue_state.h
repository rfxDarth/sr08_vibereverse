#ifndef SR08_SUBMISSION_QUEUE_STATE_H
#define SR08_SUBMISSION_QUEUE_STATE_H

#include <stddef.h>
#include <stdint.h>

/* Queue state used by the sensor/display event path and record helpers. */
struct sr08_submission_queue_state {
    uint8_t reserved_00_to_33[0x34];
    uint32_t index_mask;
    uint32_t head;
    uint32_t count;
    uint32_t entry_size;
    uintptr_t entries;
};

_Static_assert(offsetof(struct sr08_submission_queue_state, index_mask) == 0x34,
               "queue mask must remain at offset 0x34");
_Static_assert(offsetof(struct sr08_submission_queue_state, head) == 0x38, "queue head must remain at offset 0x38");
_Static_assert(offsetof(struct sr08_submission_queue_state, count) == 0x3c, "queue count must remain at offset 0x3c");
_Static_assert(offsetof(struct sr08_submission_queue_state, entry_size) == 0x40,
               "queue entry size must remain at offset 0x40");
_Static_assert(offsetof(struct sr08_submission_queue_state, entries) == 0x44,
               "queue entries pointer must remain at offset 0x44");
_Static_assert(sizeof(uintptr_t) == 4, "the SR08 queue entry pointer must be 32 bits");

#endif
