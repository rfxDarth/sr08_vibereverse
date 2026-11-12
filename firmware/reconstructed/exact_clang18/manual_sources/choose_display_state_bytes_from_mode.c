/* Choose the first three digit patterns from mode bit one.
 * Compiled natively and linked in the shared module for exact literal sharing.
 * The address annotation retains the digit-base expression; it supplies no instructions.
 */
#include <stdint.h>
extern uint8_t merged_globals_5650[];
extern uint8_t merged_globals_56d0[];
#define VIEW(p) ((volatile uint8_t *)__builtin_annotation((uintptr_t)(p), "display digits"))
__attribute__((used, section(".text.choose_display_state_bytes_from_mode"))) void
choose_display_state_bytes_from_mode(void) {
    unsigned bits = ((volatile uint8_t *)merged_globals_5650)[48] & 2;
    unsigned first = bits ? 119 : 82;
    volatile uint8_t *base = merged_globals_56d0;
    base[64] = first;
    unsigned third = bits ? 27 : 124;
    volatile uint8_t *digits = VIEW(base + 64);
    digits[2] = third;
    unsigned second = bits ? 27 : 83;
    digits[1] = second;
}
