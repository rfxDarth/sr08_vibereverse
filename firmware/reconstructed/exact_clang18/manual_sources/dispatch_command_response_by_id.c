/* Recovered behavior:
 * Dispatch IDs 0x40 through 0x44 through the jump table; route other IDs to the shared
 * command-response cases.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.dispatch_command_response_by_id"))) void
dispatch_command_response_by_id(void) {
    __asm__ volatile("push {r4, r5, r7, lr} /* 0x07fca7a0 */\n"
                     "mov r4, r1 /* 0x07fca7a2 */\n"
                     "mov r1, r0 /* 0x07fca7a4 */\n"
                     "subs r1, #64	@ 0x40 /* 0x07fca7a6 */\n"
                     "cmp r1, #4 /* 0x07fca7a8 */\n"
                     "bhi.n handle_command_response_cases_and_finalize_branch_at_07fca7d6 /* branch: hi, target "
                     "at .+44 */ /* 0x07fca7aa */\n"
                     "lsls r0, r1, #2 /* 0x07fca7ac */\n"
                     ".set .Ladr_07fca7ae, .+6\n"
                     "adr r1, .Ladr_07fca7ae /* 0x07fca7ae -> 0x07fca7b4 */\n"
                     "ldr r0, [r1, r0] /* 0x07fca7b0 */\n"
                     "mov pc, r0 /* 0x07fca7b2 */\n");
}
