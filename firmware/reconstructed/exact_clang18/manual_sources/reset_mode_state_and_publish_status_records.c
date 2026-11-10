/* Reset mode state, clear the associated flag, then run the mode callback. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_mode_reset_state.h"

extern void queue_computed_status_records(void);

__attribute__((used, section(".text.reset_mode_state_and_publish_status_records"))) void
reset_mode_state_and_publish_status_records(void) {
    volatile struct sr08_mode_reset_words *mode_words;
    uint32_t zero;

    __asm__ volatile("ldr %[state], [pc, #648]\n\tmovs %[zero], #0" : [state] "=r"(mode_words), [zero] "=r"(zero));
    mode_words->reset_word_38 = zero;
    mode_words->reset_word_3c = zero;
    mode_words->reset_word_40 = zero;
    mode_words->reset_word_48 = zero;
    mode_words->reset_word_4c = zero;
    mode_words->reset_word_50 = zero;
    mode_words->reset_word_54 = zero;

    volatile struct sr08_mode_reset_secondary_words *secondary_words;
    __asm__ volatile("ldr %[state], [pc, #112]" : [state] "=r"(secondary_words));
    secondary_words->reset_word_68 = zero;
    volatile struct sr08_mode_reset_flag *flag_state;
    __asm__ volatile("ldr %[state], [pc, #8]" : [state] "=r"(flag_state));
    flag_state->reset_flag_06 = (uint8_t)zero;
    queue_computed_status_records();
}
