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
    __asm__ volatile("push {r4, r5, r6, r7, lr} /* 0x07fc25c4 */\n"
                     "sub sp, #140 /* 0x07fc25c6 */\n"
                     "ldr r5, [pc, #404] /* 0x07fc25c8 */\n"
                     "mov r2, r5 /* 0x07fc25ca */\n"
                     "adds r2, #72	@ 0x48 /* 0x07fc25cc */\n"
                     "ldmia r2, {r0, r1, r2} /* 0x07fc25ce */\n"
                     "subs r0, r0, r1 /* 0x07fc25d0 */\n"
                     "subs r6, r2, #1 /* 0x07fc25d2 */\n"
                     "ands r6, r0 /* 0x07fc25d4 */\n"
                     "add r0, sp, #68 /* 0x07fc25d6 */\n"
                     "adds r1, r0, #2 /* 0x07fc25d8 */\n"
                     "str r1, [sp, #16] /* 0x07fc25da */\n"
                     "add r1, sp, #44 /* 0x07fc25dc */\n"
                     "adds r1, r1, #1 /* 0x07fc25de */\n"
                     "str r1, [sp, #24] /* 0x07fc25e0 */\n"
                     "adds r1, r0, #5 /* 0x07fc25e2 */\n"
                     "str r1, [sp, #20] /* 0x07fc25e4 */\n"
                     "adds r0, r0, #1 /* 0x07fc25e6 */\n"
                     "str r0, [sp, #32] /* 0x07fc25e8 */\n"
                     "add r0, sp, #88 /* 0x07fc25ea */\n"
                     "adds r0, r0, #1 /* 0x07fc25ec */\n"
                     "str r0, [sp, #36]	@ 0x24 /* 0x07fc25ee */\n"
                     "movs r0, #0 /* 0x07fc25f0 */\n"
                     ".global dispatch_sensor_and_display_events_block_at_25c4_branch_at_07fc25f2\n"
                     "dispatch_sensor_and_display_events_block_at_25c4_branch_at_07fc25f2:\n"
                     "cmp r0, r6 /* 0x07fc25f2 */\n"
                     "bne.n .L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc25f8 /* branch: ne, target at "
                     ".+4 */ /* 0x07fc25f4 */\n"
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2d70 /* branch: always, "
                     "target at .+1914 */ /* 0x07fc25f6 */\n"
                     ".L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc25f8:\n"
                     "str r0, [sp, #40]	@ 0x28 /* 0x07fc25f8 */\n"
                     "mov r4, r5 /* 0x07fc25fa */\n"
                     "adds r4, #72	@ 0x48 /* 0x07fc25fc */\n"
                     "add r1, sp, #88 /* 0x07fc25fe */\n"
                     "mov r0, r4 /* 0x07fc2600 */\n"
                     "bl copy_scaled_payload_slice_when_mask_hits\n" /* at 0x07fc2602 */
                     "cmp r0, #0 /* 0x07fc2606 */\n"
                     "beq.n .L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc260c /* branch: eq, target at "
                     ".+4 */ /* 0x07fc2608 */\n"
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2d0a /* branch: always, "
                     "target at .+1792 */ /* 0x07fc260a */\n"
                     ".L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc260c:\n"
                     "mov r0, r4 /* 0x07fc260c */\n"
                     "bl advance_queue_tail_if_nonempty\n" /* at 0x07fc260e */
                     "add r0, sp, #88 /* 0x07fc2612 */\n"
                     "ldrb r4, [r0, #0] /* 0x07fc2614 */\n"
                     "add r0, sp, #68 /* 0x07fc2616 */\n"
                     "strb r4, [r0, #0] /* 0x07fc2618 */\n"
                     "movs r2, #19 /* 0x07fc261a */\n"
                     "ldr r0, [sp, #32] /* 0x07fc261c */\n"
                     "ldr r1, [sp, #36]	@ 0x24 /* 0x07fc261e */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc2620 */
                     "subs r0, r4, #1 /* 0x07fc2624 */\n"
                     "cmp r0, #57	@ 0x39 /* 0x07fc2626 */\n"
                     "bls.n .L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc262c /* branch: ls, target at "
                     ".+4 */ /* 0x07fc2628 */\n"
                     "b.n dispatch_sensor_and_display_events_block_at_26ac_branch_at_07fc273a /* branch: always, "
                     "target at .+272 */ /* 0x07fc262a */\n"
                     ".L_dispatch_sensor_and_display_events_block_at_25c4_at_07fc262c:\n"
                     "lsls r0, r0, #1 /* 0x07fc262c */\n"
                     "mov r8, r8 /* 0x07fc262e */\n"
                     "add r0, pc /* 0x07fc2630 */\n"
                     "ldrh r0, [r0, #4] /* 0x07fc2632 */\n"
                     "lsls r0, r0, #1 /* 0x07fc2634 */\n"
                     "add pc, r0 /* 0x07fc2636 */\n");
}
