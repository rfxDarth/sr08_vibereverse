/*
 * Fixed-address fragment 1 of 5 for dispatch_sensor_and_display_events.
 * The catalog groups these sections as one logical routine. Keep each section at its VMA and
 * preserve cross-section branch destinations; this fragment is not necessarily a standalone entry.
 *
 * Routine behavior: Handle the firmware's central sensor and display event cases, including
 * measurement record updates, mode transitions, status changes, and follow-up event dispatch.
 */
#include <stdint.h>
__attribute__((used, naked, section(".text.dispatch_sensor_and_display_events_block_at_25c4"))) void
dispatch_sensor_and_display_events_block_at_25c4(void) {
    __asm__ volatile("push {r4, r5, r6, r7, lr}\n"
                     "sub sp, #140\n"
                     "ldr r5, [pc, #404]\n"
                     "mov r2, r5\n"
                     "adds r2, #72	@ 0x48\n"
                     "ldmia r2, {r0, r1, r2}\n"
                     "subs r0, r0, r1\n"
                     "subs r6, r2, #1\n"
                     "ands r6, r0\n"
                     "add r0, sp, #68\n"
                     "adds r1, r0, #2\n"
                     "str r1, [sp, #16]\n"
                     "add r1, sp, #44\n"
                     "adds r1, r1, #1\n"
                     "str r1, [sp, #24]\n"
                     "adds r1, r0, #5\n"
                     "str r1, [sp, #20]\n"
                     "adds r0, r0, #1\n"
                     "str r0, [sp, #32]\n"
                     "add r0, sp, #88\n"
                     "adds r0, r0, #1\n"
                     "str r0, [sp, #36]	@ 0x24\n"
                     "movs r0, #0\n"
                     ".global dispatch_sensor_and_display_events_block_at_25c4_branch_at_07fc25f2\n"
                     "dispatch_sensor_and_display_events_block_at_25c4_branch_at_07fc25f2:\n"
                     "cmp r0, r6\n"
                     "bne.n .L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc25f8 /* branch: ne, target at "
                     ".+4 */\n"
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2d70 /* branch: always, "
                     "target at .+1914 */\n"
                     ".L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc25f8:\n"
                     "str r0, [sp, #40]	@ 0x28\n"
                     "mov r4, r5\n"
                     "adds r4, #72	@ 0x48\n"
                     "add r1, sp, #88\n"
                     "mov r0, r4\n"
                     "bl peek_ring_buffer_entry\n" /* at 0x07fc2602 */
                     "cmp r0, #0\n"
                     "beq.n .L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc260c /* branch: eq, target at "
                     ".+4 */\n"
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2d0a /* branch: always, "
                     "target at .+1792 */\n"
                     ".L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc260c:\n"
                     "mov r0, r4\n"
                     "bl advance_queue_tail_if_nonempty\n" /* at 0x07fc260e */
                     "add r0, sp, #88\n"
                     "ldrb r4, [r0, #0]\n"
                     "add r0, sp, #68\n"
                     "strb r4, [r0, #0]\n"
                     "movs r2, #19\n"
                     "ldr r0, [sp, #32]\n"
                     "ldr r1, [sp, #36]	@ 0x24\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc2620 */
                     "subs r0, r4, #1\n"
                     "cmp r0, #57	@ 0x39\n"
                     "bls.n .L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc262c /* branch: ls, target at "
                     ".+4 */\n"
                     "b.n dispatch_sensor_and_display_events_block_at_26ac_branch_at_07fc273a /* branch: always, "
                     "target at .+272 */\n"
                     ".L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc262c:\n"
                     "lsls r0, r0, #1\n"
                     "mov r8, r8\n"
                     "add r0, pc\n"
                     "ldrh r0, [r0, #4]\n"
                     "lsls r0, r0, #1\n"
                     "add pc, r0\n");
}
