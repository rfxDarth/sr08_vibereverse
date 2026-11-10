/* Recovered behavior:
 * Write 0x1f to byte offset 0x44 and a fixed 32-bit data word to offset 0x40 of the shared state
 * object.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"

enum { DISPLAY_LAST_DIGIT_VALUE = 31 };

__attribute__((used, section(".text.write_shared_state_byte_44_and_word_40"))) void
write_shared_state_byte_44_and_word_40(void) {
    uint32_t field_offset = offsetof(struct sr08_display_output_state, digits[4]);
    register volatile struct sr08_display_output_state *state __asm__("r1");
    __asm__ volatile("ldr r1, [pc, #160]" : "=r"(state) : [offset] "r"(field_offset));
    ((volatile uint8_t *)state)[field_offset] = DISPLAY_LAST_DIGIT_VALUE;

    register uint32_t configured_word __asm__("r0");
    __asm__ volatile("ldr r0, [pc, #8]" : "=r"(configured_word));
    *(volatile uint32_t *)(void *)state->digits = configured_word;
}
