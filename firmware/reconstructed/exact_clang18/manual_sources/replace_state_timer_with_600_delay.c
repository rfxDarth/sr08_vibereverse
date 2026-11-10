/* Replace the timer slot stored at state offset nine using delay value 600. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_state.h"

extern void replace_occupied_slot_newly_allocated_initialized_at_3410(uint32_t);
extern uint32_t store_item_in_first_free_registration_slot(uint32_t, uint32_t);

__attribute__((used, section(".text.replace_state_timer_with_600_delay"))) void
replace_state_timer_with_600_delay(void) {
    volatile struct sr08_device_state *device_state;
    __asm__ volatile("ldr %[device_state], [pc, #924]" : [device_state] "=r"(device_state));
    replace_occupied_slot_newly_allocated_initialized_at_3410(device_state->timer_slot_index);
    uint32_t callback;
    uint32_t timeout_value;
    __asm__ volatile("movs %[timeout], #75\n"
                     "lsls %[timeout], %[timeout], #3\n"
                     "ldr %[callback], [pc, #8]"
                     : [timeout] "=r"(timeout_value), [callback] "=r"(callback));
    uint8_t timer_slot = store_item_in_first_free_registration_slot(timeout_value, callback);
    device_state->timer_slot_index = timer_slot;
}
