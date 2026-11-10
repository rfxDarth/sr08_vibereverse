/* Recovered behavior:
 * Allocate and submit a type-0xfc04 record containing the current 32-bit transfer progress.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_ota_messages.h"

void publish_transfer_progress(uint32_t progress_value)

{
    uint32_t sequence;
    uint32_t *record;

    SR08_ALLOC_OTA_TRANSFER_RECORD(SR08_OTA_TRANSFER_PROGRESS_MESSAGE_ID, sequence, record);
    *record = progress_value;
    ke_msg_send(record);
}
