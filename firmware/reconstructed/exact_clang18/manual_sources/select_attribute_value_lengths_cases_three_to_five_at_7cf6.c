/* Select value lengths for cases three through five in the shared write handler. */
#include <stdint.h>
__attribute__((used, naked, section(".text.select_attribute_value_lengths_cases_three_to_five_at_7cf6"))) void
select_attribute_value_lengths_cases_three_to_five_at_7cf6(void) {
    __asm__ volatile("movs r2, #7 /* 07fc7cf6: movs	r2, #7 */\n"
                     "b.n finish_pending_attribute_write_request_at_7d04 /* branch: always, target at .+12 */ /* "
                     "07fc7cf8: b.n	0x7fc7d04 */\n"
                     "movs r2, #12 /* 07fc7cfa: movs	r2, #12 */\n"
                     "b.n finish_pending_attribute_write_request_at_7d04 /* branch: always, target at .+8 */ /* "
                     "07fc7cfc: b.n	0x7fc7d04 */\n"
                     "movs r2, #15 /* 07fc7cfe: movs	r2, #15 */\n"
                     "b.n finish_pending_attribute_write_request_at_7d04 /* branch: always, target at .+4 */ /* "
                     "07fc7d00: b.n	0x7fc7d04 */\n"
                     "movs r2, #17 /* 07fc7d02: movs	r2, #17 */\n");
}
