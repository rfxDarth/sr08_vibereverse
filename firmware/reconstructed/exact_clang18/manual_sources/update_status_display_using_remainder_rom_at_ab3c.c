/* Show status patterns and light up to two indicators from config modulo three.
 * Compiled natively and linked in the shared module for exact literal sharing.
 * The address annotation retains the digit-base expression; it supplies no instructions.
 */
#include <stdint.h>
extern uint8_t merged_globals_5650[];
extern uint8_t merged_globals_56d0[];
#define VIEW(p) ((volatile uint8_t *)__builtin_annotation((uintptr_t)(p), "display digits"))
__attribute__((used, section(".text.update_status_display_using_remainder_rom_at_ab3c"))) void
update_status_display_using_remainder_rom_at_ab3c(void) {
    volatile uint8_t *base = merged_globals_56d0;
    *(volatile uint16_t *)(base + 64) = 0x5b13;
    volatile uint8_t *digits = VIEW(base + 64);
    digits[2] = 82;
    unsigned remainder = ((volatile uint8_t *)merged_globals_5650)[48] % 3;
    if (remainder >= 2) {
        base[68] = 8;
        goto second;
    }
    if (remainder == 0)
        return;
second:
    base[67] = 8;
}
