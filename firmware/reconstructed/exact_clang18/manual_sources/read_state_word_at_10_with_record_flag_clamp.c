/* Read the selected state value, applying the record-dependent lower bound. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_setting_state.h"
#include "firmware/reconstructed/include/sr08_flagged_record.h"

enum {
    MINIMUM_STATE_WITHOUT_RECORD = 0x14,
    STATE_THRESHOLD_WITHOUT_RECORD = 0x15,
};

__attribute__((used, section(".text.read_state_word_at_10_with_record_flag_clamp"))) uint16_t
read_state_word_at_10_with_record_flag_clamp(void) {
    uint8_t record_flag = read_record_flag_bit_zero();
    volatile struct sr08_device_setting_state *state;
    /* The PC-relative literal at 0x07fc2e4c is typed in v204_device_setting_literal_pool. */
    __asm__ volatile("ldr %[state], [pc, #152]" : [state] "=r"(state));
    uint16_t state_value = state->minimum_value;
    return record_flag != 0 || state_value >= STATE_THRESHOLD_WITHOUT_RECORD ? state_value
                                                                             : MINIMUM_STATE_WITHOUT_RECORD;
}
