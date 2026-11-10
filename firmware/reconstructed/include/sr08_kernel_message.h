#ifndef SR08_KERNEL_MESSAGE_H
#define SR08_KERNEL_MESSAGE_H

#include <stdint.h>

enum { V204_APPLICATION_TASK_ID = 4 };

/* Allocate payload_size bytes for a message from source_task to destination_task. */
extern void *ke_msg_alloc(uint32_t message_id, uint32_t destination_task, uint32_t source_task, uint32_t payload_size);
extern void ke_msg_send(void *message);
extern void ke_msg_send_basic(uint32_t message_id, uint32_t destination_task, uint32_t source_task);

#endif
