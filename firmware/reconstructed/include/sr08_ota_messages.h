#ifndef SR08_OTA_MESSAGES_H
#define SR08_OTA_MESSAGES_H

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_message.h"
#include "firmware/reconstructed/include/sr08_rom_services.h"

enum {
    SR08_OTA_PROFILE_ID = 0xfc,
    SR08_OTA_TRANSFER_PROGRESS_MESSAGE_ID = 0xfc04,
    SR08_OTA_TRANSFER_STATUS_MESSAGE_ID = 0xfc05,
    SR08_OTA_TRANSFER_RECORD_PAYLOAD_SIZE = 4,
};

/* Status payload layout consumed by the transfer-status event. */
struct sr08_ota_transfer_status {
    uint8_t reserved_prefix[2];
    uint8_t status_code;
    uint8_t reserved_suffix;
};

_Static_assert(offsetof(struct sr08_ota_transfer_status, status_code) == 2,
               "OTA transfer status must remain at payload offset two");
_Static_assert(sizeof(struct sr08_ota_transfer_status) == SR08_OTA_TRANSFER_RECORD_PAYLOAD_SIZE,
               "OTA transfer status payload must remain four bytes");

/* Allocate a transfer message from the OTA profile for the application task. */
#define SR08_ALLOC_OTA_TRANSFER_RECORD(message_id, sequence_output, record_output)                                     \
    do {                                                                                                               \
        (sequence_output) = prf_get_task_from_id(SR08_OTA_PROFILE_ID);                                                 \
        (record_output) = ke_msg_alloc((message_id), (sequence_output), V204_APPLICATION_TASK_ID,                      \
                                       SR08_OTA_TRANSFER_RECORD_PAYLOAD_SIZE);                                         \
    } while (0)

#endif
