/* Recovered behavior:
 * For action 2, initialize paired sensor state and write its profile; for actions 0x400, 0x800,
 * and 0x1000, update the selected sensor fields; otherwise apply the default profile and
 * initialize shared state when needed.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.apply_sensor_control_action"))) void
apply_sensor_control_action(uint32_t action_code) {
    __asm__ volatile("push {r4, r5, r6, lr} /* 0x07fc8e58 */\n"
                     "sub sp, #32 /* 0x07fc8e5a */\n"
                     "mov r4, r0 /* 0x07fc8e5c */\n"
                     "ldr r0, [pc, #200] /* 0x07fc8e5e */\n"
                     "adds r0, #64	@ 0x40 /* 0x07fc8e60 */\n"
                     "movs r1, #40	@ 0x28 /* 0x07fc8e62 */\n"
                     "bl __aeabi_memclr\n" /* at 0x07fc8e64 */
                     "cmp r4, #2 /* 0x07fc8e68 */\n"
                     "beq.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8e8a /* branch: eq, target at .+32 */ "
                     "/* 0x07fc8e6a */\n"
                     "movs r0, #1 /* 0x07fc8e6c */\n"
                     "lsls r1, r0, #10 /* 0x07fc8e6e */\n"
                     "cmp r4, r1 /* 0x07fc8e70 */\n"
                     "beq.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8e80 /* branch: eq, target at .+14 */ "
                     "/* 0x07fc8e72 */\n"
                     "lsls r1, r0, #12 /* 0x07fc8e74 */\n"
                     "cmp r4, r1 /* 0x07fc8e76 */\n"
                     "beq.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8e80 /* branch: eq, target at .+8 */ "
                     "/* 0x07fc8e78 */\n"
                     "lsls r0, r0, #11 /* 0x07fc8e7a */\n"
                     "cmp r4, r0 /* 0x07fc8e7c */\n"
                     "bne.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8ef4 /* branch: ne, target at .+118 */ "
                     "/* 0x07fc8e7e */\n"
                     ".L_apply_sensor_control_action_block_at_8e58_at_07fc8e80:\n"
                     "movs r1, #7 /* 0x07fc8e80 */\n"
                     "mov r0, r4 /* 0x07fc8e82 */\n"
                     "bl clear_cached_sensor_fields_refresh_calibration_at_8f48\n" /* at 0x07fc8e84 */
                     "b.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8f24 /* branch: always, target at .+156 "
                     "*/ /* 0x07fc8e88 */\n"
                     ".L_apply_sensor_control_action_block_at_8e58_at_07fc8e8a:\n"
                     "movs r4, #2 /* 0x07fc8e8a */\n"
                     "movs r5, #1 /* 0x07fc8e8c */\n"
                     "mov r0, r4 /* 0x07fc8e8e */\n"
                     "mov r1, r5 /* 0x07fc8e90 */\n"
                     "bl clear_cached_sensor_fields_refresh_calibration_at_8f48\n" /* at 0x07fc8e92 */
                     "movs r6, #150	@ 0x96 /* 0x07fc8e96 */\n"
                     "str r6, [sp, #4] /* 0x07fc8e98 */\n"
                     "ldr r0, [pc, #144] /* 0x07fc8e9a */\n"
                     "str r0, [sp, #0] /* 0x07fc8e9c */\n"
                     "movs r0, #30 /* 0x07fc8e9e */\n"
                     "movs r1, #40	@ 0x28 /* 0x07fc8ea0 */\n"
                     "movs r2, #50	@ 0x32 /* 0x07fc8ea2 */\n"
                     "ldr r3, [pc, #136] /* 0x07fc8ea4 */\n"
                     "bl write_shared_sensor_profile_fields\n" /* at 0x07fc8ea6 */
                     "movs r0, #3 /* 0x07fc8eaa */\n"
                     "movs r1, #37	@ 0x25 /* 0x07fc8eac */\n"
                     "movs r2, #200	@ 0xc8 /* 0x07fc8eae */\n"
                     "movs r3, #125	@ 0x7d /* 0x07fc8eb0 */\n"
                     "lsls r3, r3, #2 /* 0x07fc8eb2 */\n"
                     "str r6, [sp, #0] /* 0x07fc8eb4 */\n"
                     "str r3, [sp, #4] /* 0x07fc8eb6 */\n"
                     "str r2, [sp, #8] /* 0x07fc8eb8 */\n"
                     "str r2, [sp, #12] /* 0x07fc8eba */\n"
                     "str r5, [sp, #16] /* 0x07fc8ebc */\n"
                     "str r1, [sp, #20] /* 0x07fc8ebe */\n"
                     "str r0, [sp, #24] /* 0x07fc8ec0 */\n"
                     "movs r0, #32 /* 0x07fc8ec2 */\n"
                     "ldr r1, [pc, #108] /* 0x07fc8ec4 */\n"
                     "ldr r3, [pc, #112] /* 0x07fc8ec6 */\n"
                     "mov r2, r1 /* 0x07fc8ec8 */\n"
                     "bl copy_incoming_fields_to_shared_command_record\n" /* at 0x07fc8eca */
                     "bl retry_radio_command_until_status_0x27\n"         /* at 0x07fc8ece */
                     "cmp r0, #0 /* 0x07fc8ed2 */\n"
                     "beq.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8f1a /* branch: eq, target at .+70 */ "
                     "/* 0x07fc8ed4 */\n"
                     "ldr r0, [pc, #200] /* 0x07fc8ed6 */\n"
                     "ldrb r0, [r0, #30] /* 0x07fc8ed8 */\n"
                     "cmp r0, #0 /* 0x07fc8eda */\n"
                     "bne.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8f1a /* branch: ne, target at .+62 */ "
                     "/* 0x07fc8edc */\n"
                     "bl initialize_sensor_processing_state\n" /* at 0x07fc8ede */
                     "cmp r0, #0 /* 0x07fc8ee2 */\n"
                     "beq.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8f1a /* branch: eq, target at .+54 */ "
                     "/* 0x07fc8ee4 */\n"
                     "ldr r0, [pc, #84] /* 0x07fc8ee6 */\n"
                     "strb r4, [r0, #4] /* 0x07fc8ee8 */\n"
                     "strb r4, [r0, #3] /* 0x07fc8eea */\n"
                     "movs r0, #0 /* 0x07fc8eec */\n"
                     "bl dispatch_radio_state_action_block_at_86b8\n" /* at 0x07fc8eee */
                     "b.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8f1a /* branch: always, target at .+40 "
                     "*/ /* 0x07fc8ef2 */\n"
                     ".L_apply_sensor_control_action_block_at_8e58_at_07fc8ef4:\n"
                     "movs r1, #0 /* 0x07fc8ef4 */\n"
                     "mov r0, r4 /* 0x07fc8ef6 */\n"
                     "bl clear_cached_sensor_fields_refresh_calibration_at_8f48\n" /* at 0x07fc8ef8 */
                     "ldr r0, [pc, #160] /* 0x07fc8efc */\n"
                     "ldrb r0, [r0, #23] /* 0x07fc8efe */\n"
                     "cmp r0, #0 /* 0x07fc8f00 */\n"
                     "bne.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8f14 /* branch: ne, target at .+18 */ "
                     "/* 0x07fc8f02 */\n"
                     "bl initialize_shared_control_state_tables\n" /* at 0x07fc8f04 */
                     "ldr r0, [pc, #48] /* 0x07fc8f08 */\n"
                     "ldr r1, [pc, #52] /* 0x07fc8f0a */\n"
                     "strh r1, [r0, #0] /* 0x07fc8f0c */\n"
                     "movs r0, #0 /* 0x07fc8f0e */\n"
                     "bl dispatch_six_command_identifiers_through_table_at_8040\n" /* at 0x07fc8f10 */
                     ".L_apply_sensor_control_action_block_at_8e58_at_07fc8f14:\n"
                     "subs r0, r4, #1 /* 0x07fc8f14 */\n"
                     "cmp r0, #1 /* 0x07fc8f16 */\n"
                     "bhi.n .L_apply_sensor_control_action_block_at_8e58_at_07fc8f24 /* branch: hi, target at .+12 */ "
                     "/* 0x07fc8f18 */\n"
                     ".L_apply_sensor_control_action_block_at_8e58_at_07fc8f1a:\n"
                     "movs r0, #0 /* 0x07fc8f1a */\n"
                     "movs r1, #40	@ 0x28 /* 0x07fc8f1c */\n"
                     "ldr r2, [pc, #36] /* 0x07fc8f1e */\n"
                     "bl write_indexed_timing_record\n" /* at 0x07fc8f20 */
                     ".L_apply_sensor_control_action_block_at_8e58_at_07fc8f24:\n"
                     "add sp, #32 /* 0x07fc8f24 */\n"
                     "pop {r4, r5, r6, pc} /* 0x07fc8f26 */\n");
}
