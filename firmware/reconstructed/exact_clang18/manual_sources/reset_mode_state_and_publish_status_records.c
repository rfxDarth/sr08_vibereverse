/* Reset mode state, clear the associated flag, then run the mode callback. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_context.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
#include "firmware/reconstructed/include/sr08_mode_reset_state.h"

extern void queue_computed_status_records(void);

__attribute__((used, section(".text.reset_mode_state_and_publish_status_records"))) void
reset_mode_state_and_publish_status_records(void) {
    volatile struct sr08_mode_reset_words *mode_words;
    uint32_t zero;

    mode_words = (volatile struct sr08_mode_reset_words *)&sr08_shared_context;
    zero = 0;
    mode_words->reset_word_38 = zero;
    mode_words->reset_word_3c = zero;
    mode_words->reset_word_40 = zero;
    mode_words->reset_word_48 = zero;
    mode_words->reset_word_4c = zero;
    mode_words->reset_word_50 = zero;
    mode_words->reset_word_54 = zero;

    volatile struct sr08_mode_reset_secondary_words *secondary_words;
    secondary_words = (volatile struct sr08_mode_reset_secondary_words *)&merged_globals_5650;
    secondary_words->reset_word_68 = zero;
    volatile struct sr08_mode_reset_flag *flag_state;
    flag_state = (volatile struct sr08_mode_reset_flag *)&device_control_state;
    flag_state->reset_flag_06 = (uint8_t)zero;
    queue_computed_status_records();
}
