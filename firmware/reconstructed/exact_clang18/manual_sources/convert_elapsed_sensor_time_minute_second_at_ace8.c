/* Show the elapsed measurement time (cycle_control_state+0x2c, seconds) as hours and minutes on the
 * display digits with the 'H' separator; both read 00 until more than 9000 s have elapsed.
 * Matching note: the remainder is written as `% 3600`. Pre-link DivRemPairs turns it into a multiply that
 * reuses 3600, so ConstantHoisting builds the divisor before the load as in V204. The LTO InstCombine
 * then folds the multiply to -3600. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_cycle_control_state.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_display_value_formatters.h"
extern uint32_t __aeabi_uidiv(uint32_t,uint32_t);
struct elapsed_display_view { uint8_t reserved[0x2c]; uint32_t elapsed; };
__attribute__((used, section(".text.convert_elapsed_sensor_time_minute_second_at_ace8"))) void
convert_elapsed_sensor_time_minute_second_at_ace8(void) {
    uint32_t elapsed=((struct elapsed_display_view *)&cycle_control_state)->elapsed;
    uint32_t hours=elapsed/3600u;
    volatile struct sr08_display_output_state *display=(volatile struct sr08_display_output_state *)&merged_globals_56d0;
    convert_quotient_remainder_sequence_ring_s_at_3148(__builtin_expect(elapsed<9001u,1)?0:hours,display->digits,2,0);
    uint32_t minutes=(uint16_t)(elapsed%3600u)/60u;
    convert_quotient_remainder_sequence_ring_s_at_3148(__builtin_expect(elapsed<9001u,1)?0:minutes,display->digits+3,2,0);
    display->digits[2]=72;
}
