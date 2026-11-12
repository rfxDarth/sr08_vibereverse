#ifndef SR08_CALLBACK_SAMPLES_H
#define SR08_CALLBACK_SAMPLES_H

#include <stdint.h>

/* The sampler returns the signed high 16 bits of its three-register sample.
 * Window wrappers must propagate R0; OEM callers store it as a halfword.
 * The legacy void macro remains in sr08_callback_mode_range.h for unmerged trees.
 */
int16_t read_three_callback_values_between_mode_at_85a0(uint8_t high_index, uint8_t low_index);
int16_t read_callback_pair_for_mode_window_39_3a(uint8_t mode);
int16_t read_callback_pair_for_mode_window_42_43(uint8_t mode);

#define SR08_DEFINE_SAMPLE_WINDOW(function_name, high_offset, low_offset) \
    int16_t function_name(uint8_t mode) { \
        uint32_t start = (uint32_t)mode * 3u; \
        return read_three_callback_values_between_mode_at_85a0( \
            (uint8_t)(start - (high_offset)), (uint8_t)(start - (low_offset))); \
    }

#endif
