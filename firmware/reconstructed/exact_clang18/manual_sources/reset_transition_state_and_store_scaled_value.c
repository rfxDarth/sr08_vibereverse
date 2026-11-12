/* Reset transition bytes and publish the scaled sensor result. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
extern uint32_t get_ble_base_time_ms(void);
__attribute__((used, section(".text.reset_transition_state_and_store_scaled_value"))) void
reset_transition_state_and_store_scaled_value(void) {
    uint32_t value = get_ble_base_time_ms();
    volatile uint8_t *state = (volatile uint8_t *)&merged_globals_5650;
    state[0x30] = 0;
    state[0x2c] = 0xff;
    volatile uint32_t *results = (volatile uint32_t *)&merged_globals_56d0;
    results[0x3c / 4] = value;
}
