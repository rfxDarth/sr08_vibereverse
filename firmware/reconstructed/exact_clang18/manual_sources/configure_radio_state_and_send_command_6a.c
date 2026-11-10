/* Recovered behavior:
 * Clear radio state flags, configure profile-dependent fields, then send command 0x6a with value
 * two.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.configure_radio_state_and_send_command_6a"))) void
configure_radio_state_and_send_command_6a(void) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr} /* 0x07fc82b0 */\n"
                     "ldr r6, [pc, #968] /* 0x07fc82b2 */\n"
                     "movs r7, #0 /* 0x07fc82b4 */\n"
                     "strb r7, [r6, #29] /* 0x07fc82b6 */\n"
                     "strb r7, [r6, #27] /* 0x07fc82b8 */\n"
                     "movs r0, #125	@ 0x7d /* 0x07fc82ba */\n"
                     "lsls r4, r0, #3 /* 0x07fc82bc */\n"
                     "ldrb r0, [r6, #25] /* 0x07fc82be */\n"
                     "ldr r5, [pc, #108] /* 0x07fc82c0 */\n"
                     "cmp r0, #0 /* 0x07fc82c2 */\n"
                     "beq.n .L_configure_radio_state_and_send_command_6a_block_at_82b0_at_07fc82fe /* branch: eq, "
                     "target at .+58 */ /* 0x07fc82c4 */\n"
                     "movs r0, #59	@ 0x3b /* 0x07fc82c6 */\n"
                     "ldr r7, [pc, #108] /* 0x07fc82c8 */\n"
                     "movs r1, #2 /* 0x07fc82ca */\n"
                     "strb r1, [r7, r0] /* 0x07fc82cc */\n"
                     "mov r0, r7 /* 0x07fc82ce */\n"
                     "adds r0, #28 /* 0x07fc82d0 */\n"
                     "bl ensure_radio_profile_then_scan_paired_bytes\n" /* at 0x07fc82d2 */
                     "movs r0, #66	@ 0x42 /* 0x07fc82d6 */\n"
                     "ldrh r0, [r6, r0] /* 0x07fc82d8 */\n"
                     "bl write_two_bytes_from_packed_value\n" /* at 0x07fc82da */
                     "mov r2, r5 /* 0x07fc82de */\n"
                     "adds r2, #167	@ 0xa7 /* 0x07fc82e0 */\n"
                     "movs r0, #1 /* 0x07fc82e2 */\n"
                     "ldr r1, [pc, #76] /* 0x07fc82e4 */\n"
                     "bl send_four_adjacent_field_updates_via_callback\n" /* at 0x07fc82e6 */
                     "movs r0, #0 /* 0x07fc82ea */\n"
                     "mov r1, r5 /* 0x07fc82ec */\n"
                     "mov r2, r4 /* 0x07fc82ee */\n"
                     "bl send_four_adjacent_field_updates_via_callback\n" /* at 0x07fc82f0 */
                     "adds r7, #16 /* 0x07fc82f4 */\n"
                     "mov r0, r7 /* 0x07fc82f6 */\n"
                     "bl ensure_radio_profile_then_scan_paired_bytes\n" /* at 0x07fc82f8 */
                     "b.n .L_configure_radio_state_and_send_command_6a_block_at_82b0_at_07fc8320 /* branch: always, "
                     "target at .+36 */ /* 0x07fc82fc */\n"
                     ".L_configure_radio_state_and_send_command_6a_block_at_82b0_at_07fc82fe:\n"
                     "movs r1, #59	@ 0x3b /* 0x07fc82fe */\n"
                     "ldr r0, [pc, #52] /* 0x07fc8300 */\n"
                     "strb r7, [r0, r1] /* 0x07fc8302 */\n"
                     "adds r0, #28 /* 0x07fc8304 */\n"
                     "bl ensure_radio_profile_then_scan_paired_bytes\n" /* at 0x07fc8306 */
                     "mov r2, r5 /* 0x07fc830a */\n"
                     "adds r2, #167	@ 0xa7 /* 0x07fc830c */\n"
                     "movs r0, #1 /* 0x07fc830e */\n"
                     "ldr r1, [pc, #32] /* 0x07fc8310 */\n"
                     "bl send_four_adjacent_field_updates_via_callback\n" /* at 0x07fc8312 */
                     "mov r0, r7 /* 0x07fc8316 */\n"
                     "mov r1, r5 /* 0x07fc8318 */\n"
                     "mov r2, r4 /* 0x07fc831a */\n"
                     "bl send_four_adjacent_field_updates_via_callback\n" /* at 0x07fc831c */
                     ".L_configure_radio_state_and_send_command_6a_block_at_82b0_at_07fc8320:\n"
                     "movs r0, #106	@ 0x6a /* 0x07fc8320 */\n"
                     "movs r1, #2 /* 0x07fc8322 */\n"
                     "bl send_device_command_pair\n" /* at 0x07fc8324 */
                     "pop {r3, r4, r5, r6, r7, pc} /* 0x07fc8328 */\n");
}
