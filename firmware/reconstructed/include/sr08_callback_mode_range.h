#ifndef SR08_CALLBACK_MODE_RANGE_H
#define SR08_CALLBACK_MODE_RANGE_H

#include <stdint.h>

extern void read_three_callback_values_between_mode_at_85a0(uint8_t first_index, uint8_t second_index);

enum { SR08_CALLBACK_INDEXES_PER_MODE = 3 };

/* Emit the common mode-to-callback-index wrapper for a selected byte pair. */
#define SR08_DEFINE_CALLBACK_PAIR_FOR_MODE_WINDOW(function_name, first_offset, second_offset)                          \
    void function_name(uint8_t mode) {                                                                                 \
        uint32_t callback_window_start = (uint32_t)mode * SR08_CALLBACK_INDEXES_PER_MODE;                              \
        uint8_t first_index = (uint8_t)(callback_window_start - (first_offset));                                       \
        uint8_t second_index = (uint8_t)(callback_window_start - (second_offset));                                     \
        read_three_callback_values_between_mode_at_85a0(first_index, second_index);                                    \
    }

#endif
