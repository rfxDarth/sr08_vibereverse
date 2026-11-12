/* Switch display state when the selected state word equals 100. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"

extern void switch_display_state_and_run_hooks(uint32_t);

enum {
    REQUIRED_STATE_WORD_VALUE = 100,
    DISPLAY_STATE_ON_MATCH = 0x1b,
};

__attribute__((used, section(".text.switch_to_display_state_1b_when_word_44_is_100"))) void
switch_to_display_state_1b_when_word_44_is_100(void) {
    volatile struct sr08_merged_globals_56d0 *state = &merged_globals_56d0;
    if (state->suota_activation_value == REQUIRED_STATE_WORD_VALUE)
        switch_display_state_and_run_hooks(DISPLAY_STATE_ON_MATCH);
}
