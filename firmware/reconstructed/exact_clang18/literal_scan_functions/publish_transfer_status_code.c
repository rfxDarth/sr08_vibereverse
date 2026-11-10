/* Recovered behavior:
 * Allocate and submit a type-0xfc05 record containing the one-byte transfer status code.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_ota_messages.h"

void publish_transfer_status_code(uint8_t status_code)

{
    uint32_t sequence;
    struct sr08_ota_transfer_status *record;

    SR08_ALLOC_OTA_TRANSFER_RECORD(SR08_OTA_TRANSFER_STATUS_MESSAGE_ID, sequence, record);
    record->status_code = status_code;
    ke_msg_send(record);
}
