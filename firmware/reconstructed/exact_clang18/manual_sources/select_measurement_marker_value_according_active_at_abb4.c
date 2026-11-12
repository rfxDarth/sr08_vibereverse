/* Show a marker pattern on the display digits chosen by the display-mode byte
 * (0x07fd5680) modulo 10: pairs of values select one of four four-digit patterns
 * (two also set digit 4), and 8 or 9 a two-digit pattern. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"

enum { DISPLAY_MODE_FLAGS_OFFSET = 0x30 };

/* Digits 0-3 written as one word, digit 4 separately (the display buffer at 0x07fd5710). */
struct display_marker_view {
    uint8_t reserved_00_to_3f[0x40];
    union {
        uint32_t digits_0_to_3;
        uint16_t digits_0_to_1;
    };
    uint8_t digit_4;
};

__attribute__((used, section(".text.select_measurement_marker_value_according_active_at_abb4"))) void
select_measurement_marker_value_according_active_at_abb4(void) {
    struct display_marker_view *view = (struct display_marker_view *)(void *)&merged_globals_56d0;
    uint32_t selector = ((const uint8_t *)(const void *)&merged_globals_5650)[DISPLAY_MODE_FLAGS_OFFSET] % 10u;
    if (selector <= 1) {
        view->digits_0_to_3 = 0x7c37241b;
    } else if (selector <= 3) {
        view->digit_4 = 0x5b;
        view->digits_0_to_3 = 0x37773e1f;
    } else if (selector <= 5) {
        view->digits_0_to_3 = 0x6f377752;
    } else if (selector <= 7) {
        view->digit_4 = 0x6b;
        view->digits_0_to_3 = 0x6b5b181f;
    } else {
        view->digits_0_to_1 = 0x3724;
    }
}
