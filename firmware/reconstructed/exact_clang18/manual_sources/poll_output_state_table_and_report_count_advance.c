/*
 * Walk output-state entries while their handler requests another pass, then
 * return whether the shared entry count advanced.
 *
 * Keep the compact loop in Thumb assembly: an ordinary C translation grows
 * beyond this 34-byte slot and overlaps the literal data immediately after
 * it. The register/branch sequence below matches that fixed-size slot.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_output_state.h"

__attribute__((naked, used, section(".text.poll_output_state_table_and_report_count_advance"))) int
poll_output_state_table_and_report_count_advance(void) {
    __asm__ volatile("push {r4, r5, r7, lr}\n\t"
                     "movs r5, #0\n\t"
                     "ldr r4, [pc, #28]\n"
                     ".Lrun_next_output_state_entry:\n\t"
                     "adds r1, r4, #1\n\t"
                     "cmp r1, r5\n\t"
                     "beq .Lcheck_count_advance\n\t"
                     "adds r5, r5, #1\n\t"
                     "bl initialize_output_state_for_mode_five_hundred\n\t"
                     "lsls r0, r0, #31\n\t"
                     "bne .Lrun_next_output_state_entry\n\t"
                     "subs r1, r5, #1\n"
                     ".Lcheck_count_advance:\n\t"
                     "movs r0, #0\n\t"
                     "cmp r1, r4\n\t"
                     "bls .Lreturn_count_advance\n\t"
                     "mvns r0, r0\n"
                     ".Lreturn_count_advance:\n\t"
                     "pop {r4, r5, r7, pc}");
}
