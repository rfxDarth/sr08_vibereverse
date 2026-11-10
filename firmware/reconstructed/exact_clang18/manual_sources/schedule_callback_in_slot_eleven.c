/* Recovered behavior:
 * Log the scheduling message, allocate and initialize a four-byte timer record, then update timer
 * slot 11 with its configured delay.
 */
#include <stddef.h>
#include <stdint.h>
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
};

_Static_assert(offsetof(struct scheduled_callback_message, marker) == 2,
               "scheduled callback marker must remain at offset two");
_Static_assert(sizeof(struct scheduled_callback_message) == 4, "scheduled callback message must remain four bytes");
__attribute__((noinline, used, section(".text.schedule_callback_in_slot_eleven"))) void
schedule_callback_in_slot_eleven(void) {
    const uint8_t *format_buffer;
    const char *format_string;
    __asm__ volatile("ldr %[buffer], [pc, #52]\n"
                     ".set .Lvtimer_enable_format, .+56\n"
                     "adr %[format], .Lvtimer_enable_format /* vtimer_enable at 0x07fcca04 */"
                     : [buffer] "=r"(format_buffer), [format] "=r"(format_string)
                     :
                     : "memory");
    format_and_send_uart_message(format_buffer, format_string, 0x77);
    uint32_t timer_task = prf_get_task_from_id(TIMER_PROFILE_ID);
    struct scheduled_callback_message *message = ke_msg_alloc(
        SCHEDULED_CALLBACK_MESSAGE_ID, timer_task, V204_APPLICATION_TASK_ID, sizeof(struct scheduled_callback_message));
    uint16_t callback_marker;
    __asm__ volatile("ldr %[marker], [pc, #56]" : [marker] "=r"(callback_marker) : : "memory");
    message->marker = callback_marker;
    message->type = 0;
    ke_msg_send(message);
    uint32_t delay_ticks;
    __asm__ volatile("ldr %[delay], [pc, #48]" : [delay] "=r"(delay_ticks) : "r"(HID_TIMER_SLOT_INDEX) : "memory");
    update_indexed_delay_entry_if_changed(HID_TIMER_SLOT_INDEX, delay_ticks);
}
