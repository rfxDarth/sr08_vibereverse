/* Allocate a six-byte type-1 measurement message from source_task to
 * destination_task, initialize its fields, and publish it. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_measurement_record.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"

enum {
    MEASUREMENT_RECORD_MESSAGE_ID = 0x0e10,
    MEASUREMENT_RECORD_PAYLOAD_SIZE = 6,
    MEASUREMENT_RECORD_TYPE = 1,
};

__attribute__((used, section(".text.create_empty_measurement_record"))) uint32_t create_empty_measurement_record(
    uint32_t unused_abi_argument_1, uint32_t unused_abi_argument_2, uint32_t source_task, uint32_t destination_task) {
    struct sr08_measurement_record *record =
        ke_msg_alloc(MEASUREMENT_RECORD_MESSAGE_ID, destination_task, source_task, MEASUREMENT_RECORD_PAYLOAD_SIZE);
    record->accumulated_value = 0;
    record->halfword_at_2 = 0;
    record->type = MEASUREMENT_RECORD_TYPE;
    ke_msg_send(record);
    return 0;
}
