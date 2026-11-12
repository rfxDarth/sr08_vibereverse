/* Request mode transitions 1 << 27 and 1 << 26 when sensor registers 0x2a and
 * 0x2b show the state that the requested mode expects. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_mode_transition.h"
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

void gate_mode_activation_on_sensor_flags(uint32_t mode)
{
    uint8_t status_2a = ensure_radio_profile_then_exchange_word(0x2a);
    uint8_t status_2b = ensure_radio_profile_then_exchange_word(0x2b);
    if (mode == 1) {
        if ((status_2a & 1) || !(status_2b & 0x40))
            return;
    } else if (mode != 2 || !(status_2a & 1) || (status_2b & 0x40)) {
        return;
    }
    update_mode_flags_and_transitions(1u << 27);
    update_mode_flags_and_transitions(1u << 26);
}
