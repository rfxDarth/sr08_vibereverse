/* Function continuation and epilogue for dispatch_attribute_request_by_opcode.
 * Address-pinned Thumb transcription: 0x07fc6fa0-0x07fc6fab.
 * The 12-byte dispatch-offset table at 0x07fc6e18 remains data. */
#include <stdint.h>
__attribute__((used, naked, section(".text.dispatch_attribute_request_by_opcode_exit"))) void
dispatch_attribute_request_by_opcode_exit(void) {
    __asm__ volatile(".global dispatch_attribute_request_by_opcode_exit_branch_at_07fc6fa0\n"
                     "dispatch_attribute_request_by_opcode_exit_branch_at_07fc6fa0:\n"
                     "mov r0, r7 /* 07fc6fa0: mov	r0, r7 */\n"
                     "bl ke_msg_send\n"
                     "movs r0, #0 /* 07fc6fa6: movs	r0, #0 */\n"
                     ".global dispatch_attribute_request_by_opcode_exit_branch_at_07fc6fa8\n"
                     "dispatch_attribute_request_by_opcode_exit_branch_at_07fc6fa8:\n"
                     "add sp, #20 /* 07fc6fa8: add	sp, #20 */\n"
                     "pop {r4, r5, r6, r7, pc} /* 07fc6faa: pop	{r4, r5, r6, r7, pc} */\n");
}
