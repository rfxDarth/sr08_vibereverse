/* Send device command (1, 0) up to ten times, waiting between attempts, and
 * read register 0 each time into the configuration state (offset 0x13).
 * Return one when it reads 0x27 (the device identifier), zero otherwise.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_radio_commands.h"
#include "firmware/reconstructed/include/sr08_radio_configuration.h"

extern void wait_shared_timer_delta_exceed_requested_at_4458(uint32_t delay);

uint32_t retry_radio_command_until_status_0x27(void)
{
    uint8_t attempt;

    uint8_t status;
    attempt = 0;
    while (attempt < 10) {
        send_device_command_pair(1, 0);
        wait_shared_timer_delta_exceed_requested_at_4458(5);
        status = ensure_radio_profile_then_exchange_word(0);
        device_control_state.last_probe_status = status;
        if (status == 0x27)
            break;
        attempt++;
    }
    return attempt < 10;
}
