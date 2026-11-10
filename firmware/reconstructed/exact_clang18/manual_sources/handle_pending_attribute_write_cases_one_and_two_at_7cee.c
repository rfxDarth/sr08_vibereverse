/* Recovered behavior:
 * Handle the value-length cases one and two in the shared attribute-write path.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.handle_pending_attribute_write_cases_one_and_two_at_7cee"))) void
handle_pending_attribute_write_cases_one_and_two_at_7cee(void) {
    __asm__ volatile(".global handle_pending_attribute_write_cases_one_and_two_at_7cee_branch_at_07fc7cee\n"
                     "handle_pending_attribute_write_cases_one_and_two_at_7cee_branch_at_07fc7cee:\n"
                     "mov r4, r0 /* 0x07fc7cee */\n"
                     "b.n finish_pending_attribute_write_request_at_7d04_branch_at_07fc7d1e /* branch: always, target "
                     "at .+46 */ /* 0x07fc7cf0 */\n"
                     ".global handle_pending_attribute_write_cases_one_and_two_at_7cee_branch_at_07fc7cf2\n"
                     "handle_pending_attribute_write_cases_one_and_two_at_7cee_branch_at_07fc7cf2:\n"
                     "ldr r1, [sp, #4] /* 0x07fc7cf2 */\n"
                     "b.n finish_pending_attribute_write_request_at_7d04_branch_at_07fc7d1e /* branch: always, target "
                     "at .+42 */ /* 0x07fc7cf4 */\n");
}
