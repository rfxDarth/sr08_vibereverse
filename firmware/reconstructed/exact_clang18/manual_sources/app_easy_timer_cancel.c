/* Cancel the timer in one-based slot `slot_number` if it holds a live
 * callback: stop the kernel timer, park the slot on the no-op callback, and
 * notify the application task with message 0x402. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"

enum {
    APPLICATION_TIMER_SLOT_COUNT = 10,
    APPLICATION_TIMER_CANCEL_MESSAGE_ID = 0x402,
};

typedef void (*sr08_application_timer_callback)(void);

struct sr08_application_timer_cancel {
    uint8_t slot_number;
    uint8_t reserved_01_to_07[7];
};

extern void timer_canceled_handler(void);
extern void ke_timer_clear(uint32_t timer_id, uint32_t task_id);

#define TIMER_HANDLE_IS_VALID(handle) ((handle) > 0 && (handle) <= APPLICATION_TIMER_SLOT_COUNT)
#define TIMER_HANDLE_TO_INDEX(handle) ((handle) - 1)
#define TIMER_HANDLE_TO_MESSAGE_ID(handle) ((handle) - 1 + APPLICATION_TIMER_CANCEL_MESSAGE_ID + 2)

void app_easy_timer_cancel(uint8_t slot_number) {
    struct sr08_application_timer_cancel *message;
    if (TIMER_HANDLE_IS_VALID(slot_number)) {
        if (merged_globals_57b8.timer_callbacks[TIMER_HANDLE_TO_INDEX(slot_number)] != 0 &&
            merged_globals_57b8.timer_callbacks[TIMER_HANDLE_TO_INDEX(slot_number)] != timer_canceled_handler) {
            ke_timer_clear(TIMER_HANDLE_TO_MESSAGE_ID(slot_number), V204_APPLICATION_TASK_ID);
            merged_globals_57b8.timer_callbacks[TIMER_HANDLE_TO_INDEX(slot_number)] = timer_canceled_handler;
            message = ke_msg_alloc(APPLICATION_TIMER_CANCEL_MESSAGE_ID, V204_APPLICATION_TASK_ID,
                                   V204_APPLICATION_TASK_ID, sizeof(*message));
            message->slot_number = slot_number;
            ke_msg_send(message);
        }
    }
}
