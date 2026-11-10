/* Recovered behavior:
 * Create and submit a type-0x1b record containing lookup data for display code 0xfc.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_record.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"

extern uint8_t search_display_code_table_from_minus20_to_zero(uint32_t);

void submit_display_code_status_record(void) {
    struct sr08_display_code_record *record =
        ke_msg_alloc(SR08_DISPLAY_CODE_RECORD_MESSAGE_ID, SR08_DISPLAY_CODE_RECORD_DESTINATION_TASK,
                     V204_APPLICATION_TASK_ID, SR08_DISPLAY_CODE_STATUS_PAYLOAD_SIZE);

    record->type = SR08_DISPLAY_CODE_RECORD_TYPE;
    uint8_t lookup_state = search_display_code_table_from_minus20_to_zero(SR08_DISPLAY_CODE_FC);
    record->flags = 0;
    record->value = SR08_DISPLAY_CODE_RECORD_VALUE;
    record->code = SR08_DISPLAY_CODE_FC;
    record->lookup_state = lookup_state;
    ke_msg_send(record);
}
