/* Register this Thumb handler and save the returned slot index in state. */
#include <stddef.h>
#include <stdint.h>

extern uint32_t store_item_in_first_free_registration_slot(uint32_t, uint32_t);

struct sr08_handler_registration_state_prefix {
    uint8_t reserved_00_to_0a[11];
    uint8_t handler_slot_index;
};

_Static_assert(offsetof(struct sr08_handler_registration_state_prefix, handler_slot_index) == 11,
               "registered handler slot index must remain at byte offset eleven");

__attribute__((used, section(".text.register_thumb_handler_and_store_slot_index"))) void
register_thumb_handler_and_store_slot_index(void) {
    uint32_t slot_index = store_item_in_first_free_registration_slot(0x0bb8u, 0x07fc20d5u);
    volatile struct sr08_handler_registration_state_prefix *registration_state;
    __asm__ volatile("ldr %[state], [pc, #900]" : [state] "=r"(registration_state));
    registration_state->handler_slot_index = (uint8_t)slot_index;
}
