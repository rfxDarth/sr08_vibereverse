/* Start application timer `timer_index` for `delay` ticks. When the BLE
 * core is not active (clock-enable bit 7 clear, deep-sleep status bit 15
 * set, or wake-up still pending), wake it and send the request to the
 * application task as a message instead. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"

enum {
    APPLICATION_TIMER_MESSAGE_ID = 0x401,
    APPLICATION_TASK_ID = 4,
    BLE_CLOCK_ENABLED_BIT = 1u << 7,
    BLE_DEEP_SLEEP_STATUS_BIT = 1u << 15,
    BLE_WAKEUP_PENDING_BIT = 1u << 0,
};

struct sr08_application_timer_request {
    uint8_t timer_index;
    uint8_t reserved_01_to_03[3];
    uint32_t delay;
};

extern volatile uint16_t ble_activity_status_flags;
extern void ke_timer_set(uint32_t timer_id, uint32_t task_id, uint32_t delay);

void create_timer(uint8_t timer_index, uint32_t delay) {
    struct sr08_application_timer_request *request;
    if ((*SR08_DISPLAY_SENSOR_CONTROL_REGISTER_50000008 & BLE_CLOCK_ENABLED_BIT) &&
        !(*SR08_SHARED_FLAGS_REGISTER & BLE_DEEP_SLEEP_STATUS_BIT) &&
        !(ble_activity_status_flags & BLE_WAKEUP_PENDING_BIT)) {
        ke_timer_set(APPLICATION_TIMER_MESSAGE_ID + timer_index + 2, APPLICATION_TASK_ID, delay);
        return;
    }
    set_pending_flag_if_status_bit_7_clear();
    request = ke_msg_alloc(APPLICATION_TIMER_MESSAGE_ID, APPLICATION_TASK_ID, APPLICATION_TASK_ID, sizeof(*request));
    request->delay = delay;
    request->timer_index = timer_index;
    ke_msg_send(request);
}
