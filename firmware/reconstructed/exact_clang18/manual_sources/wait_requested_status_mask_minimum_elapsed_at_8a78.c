/* Wait for the requested status mask and minimum elapsed time under a lock. */
#include <stdint.h>

/* The final pop restores the original status_address into r0 as the return value. */
__attribute__((used, naked, section(".text.wait_requested_status_mask_minimum_elapsed_at_8a78"))) uint32_t
wait_requested_status_mask_minimum_elapsed_at_8a78(uint32_t status_address __attribute__((unused)),
                                                   uint32_t mask __attribute__((unused)),
                                                   uint32_t clear_instead_of_set __attribute__((unused)),
                                                   uint32_t minimum_elapsed __attribute__((unused))) {
    __asm__ volatile("push {r0, r1, r2, r3, r4, r5, r6, r7, lr}\n"
                     "str r3, [sp, #0]\n"
                     "movs r4, #0\n"
                     "str r4, [sp, #12]\n"
                     "ldr r4, [pc, #76]\n"
                     "movs r3, #1\n"
                     "str r3, [r4, #0]\n"
                     ".Lwait_for_lock_release: ldr r6, [r4, #0]\n"
                     "cmp r6, #0\n"
                     "bne .Lwait_for_lock_release\n"
                     "ldr r5, [pc, #68]\n"
                     "ldr r6, [r5, #0]\n"
                     "str r6, [sp, #8]\n"
                     ".Lcheck_status_mask: ldrh r6, [r0, #0]\n"
                     "ands r6, r1\n"
                     "negs r7, r6\n"
                     "adcs r7, r6\n"
                     "cmp r2, #0\n"
                     "beq .Lcheck_status_result\n"
                     "mov r6, r7\n"
                     ".Lcheck_status_result: cmp r6, #0\n"
                     "bne .Ldone\n"
                     "str r3, [r4, #0]\n"
                     ".Lwait_for_lock_release_after_status: ldr r6, [r4, #0]\n"
                     "cmp r6, #0\n"
                     "bne .Lwait_for_lock_release_after_status\n"
                     "ldr r5, [pc, #36]\n"
                     "ldr r6, [r5, #0]\n"
                     "str r6, [sp, #4]\n"
                     "ldr r7, [sp, #4]\n"
                     "ldr r6, [sp, #8]\n"
                     "cmp r7, r6\n"
                     "bcs .Lcheck_elapsed\n"
                     "movs r5, #5\n"
                     "lsls r5, r5, #24\n"
                     "adds r7, r7, r5\n"
                     ".Lcheck_elapsed: subs r5, r7, r6\n"
                     "str r5, [sp, #12]\n"
                     "ldr r5, [sp, #12]\n"
                     "ldr r6, [sp, #0]\n"
                     "cmp r5, r6\n"
                     "bcc .Lcheck_status_mask\n"
                     ".Ldone: pop {r0, r1, r2, r3, r4, r5, r6, r7, pc}\n");
}
