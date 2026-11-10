/* Recovered behavior:
 * Check the peripheral status, conditionally initialize it, set the pending flag, and schedule ROM
 * service 0x413.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"
#define SERVICE_MESSAGE_ID 0x00000413u
enum { PERIPHERAL_STATUS_BIT_2_MASK = 0x0004 };

void conditionally_initialize_peripheral_and_schedule_service(void)

{
    if ((*SR08_PERIPHERAL_STATUS_REGISTER_50000014 & PERIPHERAL_STATUS_BIT_2_MASK) != 0) {
        initialize_peripheral_state_and_interrupts();
    }
    set_pending_flag_if_status_bit_7_clear();
    ke_msg_send_basic(SERVICE_MESSAGE_ID, V204_APPLICATION_TASK_ID, 0);
}
