/* Recovered behavior:
 * Allocate a 44-byte per-slot record, store its state byte at offset 0x28, set the flag at 0x29,
 * and submit it.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_per_slot_state_record.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"

enum {
    SLOT_EVENT_ID_SHIFT = 8,
    SLOT_EVENT_ID_SUFFIX = 10,
    SLOT_RECORD_TYPE_LITERAL_DISPLACEMENT = 24,
};

__attribute__((used, section(".text.publish_per_slot_state_byte"))) void
publish_per_slot_state_byte(uint32_t slot_index, uint8_t state_value)

{
    uint32_t slot_record_id = (slot_index << SLOT_EVENT_ID_SHIFT) + SLOT_EVENT_ID_SUFFIX;
    uint32_t record_type;
    /* This fixed PC-relative load reads v204_per_slot_state_record_type. */
    __asm__ volatile("ldr %[record_type], [pc, #%c[record_type_literal]]"
                     : [record_type] "=r"(record_type)
                     : "r"(slot_record_id), [record_type_literal] "i"(SLOT_RECORD_TYPE_LITERAL_DISPLACEMENT)
                     : "memory");

    struct sr08_per_slot_state_record *record =
        ke_msg_alloc(record_type, slot_record_id, V204_APPLICATION_TASK_ID, sizeof(struct sr08_per_slot_state_record));
    record->state_value = state_value;
    record->submitted = 1;
    ke_msg_send(record);
}
