/* Store the scaled measurement as an integer number of thousands. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

extern uint32_t get_ble_base_time_ms(void);

__attribute__((used, section(".text.store_measurement_value_divided_by_1000"))) void
store_measurement_value_divided_by_1000(void) {
    uint32_t value = get_ble_base_time_ms();
    value = __aeabi_uidiv(value, 1000);
    merged_globals_5650.scaled_measurement_value = value;
}
