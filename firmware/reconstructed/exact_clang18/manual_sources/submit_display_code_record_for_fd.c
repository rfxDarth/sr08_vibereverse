/* Recovered behavior:
 * Create and submit a type-0x1b record for display code 0xfd with zeroed trailing fields.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_record.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"

extern uint8_t search_display_code_table_from_minus20_to_zero(uint32_t);

__attribute__((used, section(".text.submit_display_code_record_for_fd"))) void submit_display_code_record_for_fd(void) {
    uint32_t allocator_key;
    __asm__ volatile("ldr %[allocator_key], [pc, #248]" : [allocator_key] "=r"(allocator_key));

    struct sr08_extended_display_code_record *record =
        ke_msg_alloc(allocator_key, SR08_DISPLAY_CODE_RECORD_DESTINATION_TASK, V204_APPLICATION_TASK_ID,
                     SR08_DISPLAY_CODE_EXTENDED_PAYLOAD_SIZE);

    record->base.type = SR08_DISPLAY_CODE_RECORD_TYPE;
    uint8_t lookup_state = search_display_code_table_from_minus20_to_zero(SR08_DISPLAY_CODE_FD);
    record->trailing_halfword_at_20 = 0;
    record->trailing_word_at_12 = 0;
    record->trailing_word_at_16 = 0;
    record->base.value = SR08_DISPLAY_CODE_RECORD_VALUE;
    record->base.code = SR08_DISPLAY_CODE_FD;
    record->base.lookup_state = lookup_state;
    ke_msg_send(record);
}
