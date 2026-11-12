/* Log the reset, stop the sensor, stage the SUOTA activation marker, store
 * the requested boot mode and reset the device. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_clock_literal_pool.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_reset_status_record.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

extern struct sr08_clock_timekeeping_state clock_timekeeping_state;
void start_or_stop_sensor_calibration(uint32_t mode);
void stage_and_program_flash_region_3c000(void);
void platform_reset(uint32_t error);

void build_mode_status_record_select_corresponding_at_43a4(uint32_t mode)
{
    serialize_status_and_global_values_with_word(clock_timekeeping_state.current_timestamp, 1);
    start_or_stop_sensor_calibration(0);
    sr08_shared_context.suota_activation.marker = 0xaaaa;
    sr08_shared_context.suota_activation.value = merged_globals_56d0.suota_activation_value;
    int16_t marker = 0;
    if (mode == 2)
        marker = 0x1212;
    if (mode == 1)
        marker = (int16_t)0x98ba;
    stage_and_program_flash_region_3c000();
    boot_mode_marker = marker;
    platform_reset(0);
}
