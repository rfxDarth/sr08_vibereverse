/* Select and write the five digit patterns for mode bit one.
 * Compiled natively and linked in the shared module for exact literal sharing.
 * The address annotation retains the digit-base expression; it supplies no instructions.
 */
#include <stdint.h>
extern uint8_t merged_globals_5650[];
extern uint8_t merged_globals_56d0[];
__attribute__((used, section(".text.select_two_display_patterns_mode_flag_at_ab78"))) void
select_two_display_patterns_mode_flag_at_ab78(void) {
    volatile uint8_t *config = (volatile uint8_t *)&merged_globals_5650;
    uint32_t fifth, fourth, first, second, third;
    if ((config[0x30] & 2) == 0) {
        fifth = 62;
        fourth = 111;
        first = 58;
        second = 24;
        third = 36;
    } else {
        fifth = 107;
        fourth = 107;
        first = 19;
        second = 55;
        third = 91;
    }
    volatile uint8_t *display = (volatile uint8_t *)&merged_globals_56d0;
    display[0x40] = first;
    volatile uint8_t *digits = (volatile uint8_t *)__builtin_annotation((uintptr_t)(display + 0x40), "display digits");
    digits[4] = fifth;
    digits[3] = fourth;
    digits[2] = third;
    digits[1] = second;
}
