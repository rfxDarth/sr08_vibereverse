/* Drive the ring's output state machine and return its status. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_output_state.h"

__attribute__((used, section(".text.drive_ring_s_output_state_machine"))) int drive_ring_s_output_state_machine(void) {
    /* Both early exits restore this saved callee register and return r0. */
    __asm__ volatile("push {r4, lr}" : : : "r4", "memory");
    if (map_record_flag_to_status_mask() == 0)
        goto body;

early_return:
    __asm__ volatile("pop {r4, pc}");
    __builtin_unreachable();

body:;
    int status = 0;
    set_ring_s_output_mode_and_enable((uint32_t)status);
    update_mode_dependent_output_state_during_flash_transfer(6);
    (void)poll_output_state_table_and_report_count_advance();
    /* Keep the backward BNE: a C goto moves the return block into fallthrough
     * and reverses this branch, changing the V204 section bytes. */
    __asm__ goto("cmp r0, #0\n\t"
                 "bne %l[early_return]"
                 :
                 :
                 : "cc"
                 : early_return);

    (void)initialize_output_state_for_mode_five_hundred();
    __asm__ volatile("lsls r0, r0, #30\n\t"
                     "bmi .Lstatus_ready_to_return\n\t"
                     "movs r0, #11\n\t"
                     "mvns %[status], r0\n"
                     ".Lstatus_ready_to_return:\n\t"
                     "mov r0, %[status]\n\t"
                     "pop {r4, pc}"
                     : [status] "+r"(status)
                     :
                     : "r0", "cc");
    __builtin_unreachable();
}
