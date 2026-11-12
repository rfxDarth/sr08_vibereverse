/* Alice: modulo-five status display. Native C; linked with the shared display pools.
 * The offset annotation preserves base+64 followed by an immediate +4 store.
 * Unsigned subtraction without borrow means remainder >= 2. Expressing that
 * predicate explicitly preserves the OEM CMP #2 / BCS instruction pair.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
__attribute__((used, section(".text.recreate_display_status_indicator_update_selected_at_a914"))) void
recreate_display_status_indicator_update_selected_at_a914(void) {
    volatile uint8_t *base = (volatile uint8_t *)&merged_globals_56d0;
    uint32_t offset = __builtin_annotation(64, "digit offset");
    base[offset] = 83;
    volatile uint8_t *digits = base + offset;
    digits[4] = 101;
    uint32_t difference;
    uint32_t remainder = ((volatile uint8_t *)&merged_globals_5650)[48] % 5;
    if (remainder >= 4) { base[67] = 8; goto third; }
    if (remainder == 3) {
third: base[66] = 8;
second: base[65] = 8;
    } else if (!__builtin_sub_overflow(remainder, 2u, &difference)) { goto second; }
    else if (remainder == 0) { return; }
    base[64] = 91;
}
