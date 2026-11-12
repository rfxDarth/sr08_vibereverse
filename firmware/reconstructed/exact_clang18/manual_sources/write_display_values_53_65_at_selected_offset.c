/* Write segment patterns 0x53, 0x65 into two adjacent display digits, starting
 * at the digit selected by the low two bits of the display-mode byte (0x07fd5680). */
#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_display_state.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

enum {
    DISPLAY_MODE_FLAGS_OFFSET = 0x30,
    DISPLAY_SELECTOR_MASK = 0x03,
};

__attribute__((used, section(".text.write_display_values_53_65_at_selected_offset"))) void
write_display_values_53_65_at_selected_offset(void) {
    uint8_t display_mode = ((const uint8_t *)(const void *)&merged_globals_5650)[DISPLAY_MODE_FLAGS_OFFSET];
    struct sr08_display_output_state *state = (struct sr08_display_output_state *)(void *)&merged_globals_56d0;
    /* A two-byte copy, not two indexed stores: V204 addresses the second byte
     * from the first one's address (adds r0,#64; strb [r0,#1]). The source must be
     * a string literal; a compound-literal array lowers as two separate stores. */
    memcpy(&state->digits[display_mode & DISPLAY_SELECTOR_MASK], "\x53\x65", 2);
}
