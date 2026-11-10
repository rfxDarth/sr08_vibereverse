/* Recovered behavior:
 * Read the signed byte at state offset 0x95 and format it into three display digits at buffer
 * offset 0x42.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_shared_context.h"

extern void convert_quotient_remainder_sequence_ring_s_at_3148(int32_t, volatile uint8_t *, uint32_t, uint32_t);

__attribute__((used, section(".text.format_signed_state_byte_as_three_display_digits"))) void
format_signed_state_byte_as_three_display_digits(void) {
    int32_t signed_state_value;
    volatile uint8_t *state;
    /* The literal at 0x07fcac74 aliases the shared context; 149 is its named character offset. */
    __asm__ volatile("movs %[value], #149\n\t"
                     "ldr %[state], [pc, #896]\n\t"
                     "ldrsb %[value], [%[state], %[value]]"
                     : [value] "=r"(signed_state_value), [state] "=r"(state)
                     :
                     : "memory");

    uint8_t *display_output;
    __asm__ volatile("ldr %[output], [pc, #896]\n\tadds %[output], #66" : [output] "=r"(display_output) : : "memory");
    convert_quotient_remainder_sequence_ring_s_at_3148(signed_state_value, display_output, 3, 1);
}
