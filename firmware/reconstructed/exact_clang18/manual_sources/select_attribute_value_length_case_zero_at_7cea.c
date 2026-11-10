/* Select value length 20 for case zero, then continue in the shared write handler. */
#include <stdint.h>
__attribute__((used, naked, section(".text.select_attribute_value_length_case_zero_at_7cea"))) void
select_attribute_value_length_case_zero_at_7cea(void) {
    __asm__ volatile("movs r2, #20 /* 07fc7cea: movs\tr2, #20 */\n"
                     "b.n finish_pending_attribute_write_request_at_7d04 /* branch: always, target at .+24 */ /* "
                     "07fc7cec: b.n\t0x7fc7d04 */\n");
}
