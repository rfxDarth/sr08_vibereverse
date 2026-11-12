/* Log the scheduling message, allocate and initialize a four-byte timer record, then update timer
 * slot 11 with its configured delay.
 */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"
#include "firmware/reconstructed/include/sr08_format.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"
#include "firmware/reconstructed/include/sr08_rom_services.h"
extern void update_indexed_delay_entry_if_changed(uint32_t, uint32_t);

struct scheduled_callback_message {
    uint8_t type;
    uint8_t reserved;
    uint16_t marker;
};

enum {
    SCHEDULED_CALLBACK_MESSAGE_ID = 0x2600,
    TIMER_PROFILE_ID = 0x26,
    HID_TIMER_SLOT_INDEX = 11,
    HID_TIMER_CALLBACK_MARKER = 0xffff,
    HID_TIMER_DELAY_TICKS = 5000,
};

SR08_STATIC_ASSERT(offsetof(struct scheduled_callback_message, marker) == 2,
               "scheduled callback marker must remain at offset two");
SR08_STATIC_ASSERT(sizeof(struct scheduled_callback_message) == 4, "scheduled callback message must remain four bytes");
extern const uint8_t uart_format_string_and_decimal[]; /* "%s,%d\n" */

void schedule_callback_in_slot_eleven(void) {
    struct scheduled_callback_message *message;
    arch_printf(uart_format_string_and_decimal, "vtimer_enable_hid_timer_handler", 0x77);
    message = ke_msg_alloc(SCHEDULED_CALLBACK_MESSAGE_ID, prf_get_task_from_id(TIMER_PROFILE_ID),
                           V204_APPLICATION_TASK_ID, sizeof(*message));
    message->marker = HID_TIMER_CALLBACK_MARKER;
    message->type = 0;
    ke_msg_send(message);
    update_indexed_delay_entry_if_changed(HID_TIMER_SLOT_INDEX, HID_TIMER_DELAY_TICKS);
}
