/* Kernel handler: while the destination task is in state one, forward the
 * incoming sample as message 0xc14 to task (sample->index << 8) + 8 and
 * return the task to state zero. A sample flagged as a status report
 * carries only the looked-up value and status 0x80; otherwise the payload
 * bytes follow the value and length. */
#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

enum {
    SENSOR_RECORD_MESSAGE_ID = 0xc14,
    SENSOR_RECORD_TASK_OFFSET = 8,
    SENSOR_RECORD_TASK_ACTIVE = 1,
    SENSOR_RECORD_STATUS_ONLY = 0x80,
};

struct sr08_incoming_sensor_sample {
    uint8_t destination_index;
    uint8_t reserved_01;
    uint8_t measurement_index;
    uint8_t reserved_03;
    uint16_t payload_length;
    uint8_t status_only;
    uint8_t payload[];
};

struct sr08_sensor_record_message {
    uint16_t value;
    uint16_t payload_length;
    uint8_t status;
    uint8_t payload[];
};

SR08_STATIC_ASSERT(offsetof(struct sr08_incoming_sensor_sample, payload) == 7, "sample payload at offset seven");
SR08_STATIC_ASSERT(offsetof(struct sr08_sensor_record_message, payload) == 5, "record payload at offset five");

/* SDK kernel signatures: task and message ids are 16-bit, which is what
 * makes callers zero-extend the computed destination task. */
typedef uint16_t ke_msg_id_t;
typedef uint16_t ke_task_id_t;
extern void *ke_msg_alloc(ke_msg_id_t id, ke_task_id_t destination, ke_task_id_t source, uint16_t length);
extern void ke_msg_send(void const *message);
extern uint8_t ke_state_get(ke_task_id_t task);
extern void ke_state_set(ke_task_id_t task, uint8_t state);
extern uint16_t custs1_get_att_handle(uint32_t index);

int custs1_value_req_rsp_handler(ke_msg_id_t message_id,
                                                       const struct sr08_incoming_sensor_sample *sample,
                                                       ke_task_id_t task_id, ke_task_id_t source_id) {
    struct sr08_sensor_record_message *record;
    (void)message_id;
    (void)source_id;
    if (ke_state_get(task_id) != SENSOR_RECORD_TASK_ACTIVE)
        return 0;
    if (sample->status_only) {
        record = ke_msg_alloc(SENSOR_RECORD_MESSAGE_ID,
                              (sample->destination_index << 8) + SENSOR_RECORD_TASK_OFFSET, task_id,
                              sizeof(*record));
        record->value = custs1_get_att_handle(sample->measurement_index);
        record->status = SENSOR_RECORD_STATUS_ONLY;
    } else {
        record = ke_msg_alloc(SENSOR_RECORD_MESSAGE_ID,
                              (sample->destination_index << 8) + SENSOR_RECORD_TASK_OFFSET, task_id,
                              sample->payload_length + 6);
        record->value = custs1_get_att_handle(sample->measurement_index);
        record->status = 0;
        record->payload_length = sample->payload_length;
        memcpy(record->payload, sample->payload, sample->payload_length);
    }
    ke_msg_send(record);
    ke_state_set(task_id, 0);
    return 0;
}
