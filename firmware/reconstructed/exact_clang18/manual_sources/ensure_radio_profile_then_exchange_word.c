/* Recovered behavior:
 * Apply the radio register profile unless status contains mask 0x44, then perform a one-word radio
 * exchange and return its response byte.
 */
#include <stdint.h>

#include "firmware/reconstructed/include/sr08_radio_configuration.h"

extern void restore_radio_profile_before_command(void);
extern uint8_t exchange_one_radio_word(uint32_t command_value);

enum {
    RADIO_STATUS_POINTER_LITERAL_DISPLACEMENT = 740,
    RADIO_PROFILE_SKIP_STATUS_MASK = 0x44,
};

__attribute__((used, section(".text.ensure_radio_profile_then_exchange_word"))) uint8_t
ensure_radio_profile_then_exchange_word(uint32_t radio_word) {
    volatile uint16_t *status;
    __asm__ volatile("ldr %[status], [pc, #%c[status_pointer_literal]]"
                     : [status] "=r"(status)
                     : [status_pointer_literal] "i"(RADIO_STATUS_POINTER_LITERAL_DISPLACEMENT));
    uint16_t value = *status;
    uint32_t mask;
    __asm__ volatile("ldr %[mask], [pc, #%c[status_pointer_literal]]"
                     : [mask] "=r"(mask)
                     : [status_pointer_literal] "i"(RADIO_STATUS_POINTER_LITERAL_DISPLACEMENT));
    mask &= value;
    if (mask != RADIO_PROFILE_SKIP_STATUS_MASK)
        restore_radio_profile_before_command();
    return exchange_one_radio_word(radio_word);
}
