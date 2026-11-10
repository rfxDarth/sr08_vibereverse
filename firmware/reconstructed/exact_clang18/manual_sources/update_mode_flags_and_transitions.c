
/*
 * Update the shared mode-flag word at state + 0x14. The argument packs a
 * 16-bit set mask in its low half and a 16-bit clear mask in its high half.
 * When the current mode byte is 0x1e, the routine clears the word instead.
 *
 * If the resulting word is zero, it sends the shutdown notifications
 * selected by bits 0 and 1 of the old word. Whenever the word changes, it
 * restarts sensor calibration and recomputes the active sensor range.
 * The Thumb body below retains the exact instruction sequence and calling
 * convention from V204; comments beside the instructions retain addresses
 * for byte-level review.
 */
#include <stdint.h>
__attribute__((used, naked, section(".text.update_mode_flags_and_transitions"))) void
update_mode_flags_and_transitions(uint32_t mode_flags) {
    __asm__ volatile("push {r4, r5, r7, lr} /* 0x07fc3a38 */\n"
                     "ldr r5, [pc, #964] /* 0x07fc3a3a */\n"
                     "ldr r4, [r5, #20] /* 0x07fc3a3c */\n"
                     "ldr r1, [pc, #732] /* 0x07fc3a3e */\n"
                     "ldrb r1, [r1, #12] /* 0x07fc3a40 */\n"
                     "cmp r1, #30 /* 0x07fc3a42 */\n"
                     "bne.n .L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a4c /* branch: ne, target at "
                     ".+8 */ /* 0x07fc3a44 */\n"
                     "movs r0, #0 /* 0x07fc3a46 */\n"
                     "str r0, [r5, #20] /* 0x07fc3a48 */\n"
                     "b.n .L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a6a /* branch: always, target at "
                     ".+32 */ /* 0x07fc3a4a */\n"
                     ".L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a4c:\n"
                     "lsls r1, r0, #16 /* 0x07fc3a4c */\n"
                     "mov r1, r4 /* 0x07fc3a4e */\n"
                     "beq.n .L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a5e /* branch: eq, target at "
                     ".+14 */ /* 0x07fc3a50 */\n"
                     "ldr r1, [pc, #84] /* 0x07fc3a52 */\n"
                     "ldr r1, [r1, #0] /* 0x07fc3a54 */\n"
                     "str r1, [r5, #32] /* 0x07fc3a56 */\n"
                     "mov r1, r4 /* 0x07fc3a58 */\n"
                     "orrs r1, r0 /* 0x07fc3a5a */\n"
                     "str r1, [r5, #20] /* 0x07fc3a5c */\n"
                     ".L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a5e:\n"
                     "lsrs r0, r0, #16 /* 0x07fc3a5e */\n"
                     "beq.n .L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a66 /* branch: eq, target at "
                     ".+6 */ /* 0x07fc3a60 */\n"
                     "bics r1, r0 /* 0x07fc3a62 */\n"
                     "str r1, [r5, #20] /* 0x07fc3a64 */\n"
                     ".L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a66:\n"
                     "cmp r1, #0 /* 0x07fc3a66 */\n"
                     "bne.n .L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a90 /* branch: ne, target at "
                     ".+40 */ /* 0x07fc3a68 */\n"
                     ".L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a6a:\n"
                     "lsls r0, r4, #31 /* 0x07fc3a6a */\n"
                     "beq.n .L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a82 /* branch: eq, target at "
                     ".+22 */ /* 0x07fc3a6c */\n"
                     "movs r0, #42	@ 0x2a /* 0x07fc3a6e */\n"
                     "ldr r1, [pc, #864] /* 0x07fc3a70 */\n"
                     "ldrb r0, [r1, r0] /* 0x07fc3a72 */\n"
                     "bl emit_event_packet_when_active_mode_changes\n" /* at 0x07fc3a74 */
                     "movs r0, #39	@ 0x27 /* 0x07fc3a78 */\n"
                     "movs r1, #0 /* 0x07fc3a7a */\n"
                     "mov r2, r1 /* 0x07fc3a7c */\n"
                     "bl initialize_and_dispatch_three_byte_request\n" /* at 0x07fc3a7e */
                     ".L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a82:\n"
                     "lsls r0, r4, #30 /* 0x07fc3a82 */\n"
                     "bpl.n .L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a90 /* branch: pl, target at "
                     ".+12 */ /* 0x07fc3a84 */\n"
                     "movs r0, #40	@ 0x28 /* 0x07fc3a86 */\n"
                     "movs r1, #0 /* 0x07fc3a88 */\n"
                     "mov r2, r1 /* 0x07fc3a8a */\n"
                     "bl initialize_and_dispatch_three_byte_request\n" /* at 0x07fc3a8c */
                     ".L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3a90:\n"
                     "ldr r0, [r5, #20] /* 0x07fc3a90 */\n"
                     "cmp r4, r0 /* 0x07fc3a92 */\n"
                     "beq.n .L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3aa0 /* branch: eq, target at "
                     ".+12 */ /* 0x07fc3a94 */\n"
                     "movs r0, #0 /* 0x07fc3a96 */\n"
                     "bl start_or_stop_sensor_calibration\n"                /* at 0x07fc3a98 */
                     "bl derive_active_sensor_range_flags_notify_at_37d0\n" /* at 0x07fc3a9c */
                     ".L_update_mode_flags_and_transitions_block_at_3a38_at_07fc3aa0:\n"
                     "pop {r4, r5, r7, pc} /* 0x07fc3aa0 */\n");
}
