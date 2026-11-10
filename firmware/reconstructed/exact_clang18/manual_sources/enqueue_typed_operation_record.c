/* Build and dispatch the 20-byte record used by this operation. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_record_dispatch.h"
#include "firmware/reconstructed/include/sr08_queue_record.h"

extern void advance_ring_s_queue_and_submit_entry(void *);

__attribute__((used, section(".text.enqueue_typed_operation_record"))) void
enqueue_typed_operation_record(uint8_t input) {
    union sr08_queue_record record_buffer;

    __aeabi_memclr(record_buffer.typed_operation.reserved, sizeof(record_buffer.typed_operation.reserved));
    record_buffer.typed_operation.type = SR08_TYPED_OPERATION_RECORD_TYPE;
    record_buffer.typed_operation.value = input;
    advance_ring_s_queue_and_submit_entry(&record_buffer);
}
