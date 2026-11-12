/* Vendor accelerometer probe: after the I2C setup, read the who-am-I register (0x0f) and register 0x70. A part
 * answering 0x11 gets its first register table, a 10 ms settle, and the variant: 3 when register 0x70 reads 0x28,
 * else 2 (which also needs the 30/5 register write). The second register table is applied last. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_state.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_radio_commands.h"

#define device_state ((struct sr08_device_state *)(void *)&merged_globals_5650)

extern void i2c_eeprom_initialize(void);
extern uint8_t exchange_one_radio_word(uint32_t command_value);
extern void wait_shared_timer_delta_exceed_requested_at_4458(uint32_t interval);
extern const struct sr08_radio_command_pair sensor_probe_setup_pairs[];
extern const struct sr08_radio_command_pair v204_data_07fcfacc[];

void handle_matched_device_state_send_corresponding_at_1da8(void)
{
    i2c_eeprom_initialize();
    uint8_t who_am_i = exchange_one_radio_word(0x0f);
    uint8_t variant_id = exchange_one_radio_word(0x70);
    if (who_am_i != 0x11)
        return;
    scan_pair_table_until_terminator(sensor_probe_setup_pairs);
    wait_shared_timer_delta_exceed_requested_at_4458(10);
    if (variant_id == 0x28) {
        device_state->sensor_variant = 3;
        /* Keep one store per branch (compiler-only fence; no ARM instruction). */
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
    } else {
        device_state->sensor_variant = 2;
        process_two_packed_input_bytes_update_at_8ad8(30, 5);
    }
    scan_pair_table_until_terminator(v204_data_07fcfacc);
}
