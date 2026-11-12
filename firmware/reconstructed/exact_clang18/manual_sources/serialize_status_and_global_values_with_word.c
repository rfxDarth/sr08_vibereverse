/* Record why the firmware is about to reset: a status code, two context
 * values and the caller's word. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_reset_status_record.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"

void serialize_status_and_global_values_with_word(uint32_t value, uint32_t status)
{
    uint8_t status_code = status == 1 ? 59 : 0xab;
    /* V204 reads both context values before the first store. */
    uint32_t context_value = *(volatile uint32_t *)&sr08_shared_context.context_value_44;
    uint32_t activation_value = *(volatile uint32_t *)&merged_globals_56d0.suota_activation_value;
    reset_status_record.status_code = status_code;
    reset_status_record.suota_activation_value_low = (uint8_t)activation_value;
    reset_status_record.context_value_44_low = (uint8_t)context_value;
    reset_status_record.context_value_44_high = (uint8_t)(context_value >> 8);
    reset_status_record.value[0] = (uint8_t)value;
    reset_status_record.value[1] = (uint8_t)(value >> 8);
    reset_status_record.value[2] = (uint8_t)(value >> 16);
    reset_status_record.value[3] = (uint8_t)(value >> 24);
}
