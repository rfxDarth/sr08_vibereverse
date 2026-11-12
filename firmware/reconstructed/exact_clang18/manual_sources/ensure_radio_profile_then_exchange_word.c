/* Recovered behavior:
 * Apply the radio register profile unless status contains mask 0x44, then perform a one-word radio
 * exchange and return its response byte.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
#include "firmware/reconstructed/include/sr08_radio_status.h"

extern uint8_t exchange_one_radio_word(uint32_t command_value);

uint8_t ensure_radio_profile_then_exchange_word(uint32_t radio_word)
{
    SR08_ENSURE_RADIO_PROFILE_READY();
    return exchange_one_radio_word(radio_word);
}
