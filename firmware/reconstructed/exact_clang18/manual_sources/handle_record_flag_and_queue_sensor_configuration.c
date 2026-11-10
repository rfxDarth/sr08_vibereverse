/* Recovered behavior:
 * When the current record flag is one and the shared transition marker is clear, enqueue two 0xf6
 * records, build and queue sensor/status records, optionally dispatch a three-byte request, and
 * update the transition state.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.handle_record_flag_and_queue_sensor_configuration"))) void
handle_record_flag_and_queue_sensor_configuration(void) {
    __asm__ volatile("push {r4, r5, r6, r7, lr} /* 0x07fc4e98 */\n"
                     "sub sp, #28 /* 0x07fc4e9a */\n"
                     "bl read_current_record_value_byte\n" /* at 0x07fc4e9c */
                     "mov r4, r0 /* 0x07fc4ea0 */\n"
                     "cmp r0, #1 /* 0x07fc4ea2 */\n"
                     "bne.n .L_handle_record_flag_and_queue_sensor_configuration_block_at_4e98_at_07fc4f1e /* branch: "
                     "ne, target at .+122 */ /* 0x07fc4ea4 */\n"
                     "ldr r0, [pc, #900] /* 0x07fc4ea6 */\n"
                     "ldrb r0, [r0, #1] /* 0x07fc4ea8 */\n"
                     "cmp r0, #1 /* 0x07fc4eaa */\n"
                     "beq.n .L_handle_record_flag_and_queue_sensor_configuration_block_at_4e98_at_07fc4f1e /* branch: "
                     "eq, target at .+114 */ /* 0x07fc4eac */\n"
                     "add r5, sp, #8 /* 0x07fc4eae */\n"
                     "mov r0, r5 /* 0x07fc4eb0 */\n"
                     "adds r0, #9 /* 0x07fc4eb2 */\n"
                     "movs r1, #11 /* 0x07fc4eb4 */\n"
                     "bl __aeabi_memclr\n" /* at 0x07fc4eb6 */
                     "movs r0, #0 /* 0x07fc4eba */\n"
                     "str r0, [sp, #4] /* 0x07fc4ebc */\n"
                     "strb r0, [r5, #8] /* 0x07fc4ebe */\n"
                     "ldr r0, [pc, #104] /* 0x07fc4ec0 */\n"
                     "str r0, [sp, #12] /* 0x07fc4ec2 */\n"
                     "movs r7, #246	@ 0xf6 /* 0x07fc4ec4 */\n"
                     "str r7, [sp, #8] /* 0x07fc4ec6 */\n"
                     "mov r0, r5 /* 0x07fc4ec8 */\n"
                     "bl search_queue_and_insert_limit_twenty\n" /* at 0x07fc4eca */
                     "adds r6, r5, #1 /* 0x07fc4ece */\n"
                     "movs r1, #19 /* 0x07fc4ed0 */\n"
                     "mov r0, r6 /* 0x07fc4ed2 */\n"
                     "bl __aeabi_memclr\n" /* at 0x07fc4ed4 */
                     "strb r7, [r5, #0] /* 0x07fc4ed8 */\n"
                     "mov r0, r6 /* 0x07fc4eda */\n"
                     "bl copy_six_profile_bytes_from_offsets_two_to_seven\n" /* at 0x07fc4edc */
                     "mov r0, r5 /* 0x07fc4ee0 */\n"
                     "bl search_queue_and_insert_limit_twenty\n"                 /* at 0x07fc4ee2 */
                     "bl build_sensor_command_packet_acquiring_shared_at_519c\n" /* at 0x07fc4ee6 */
                     "bl prepare_sensor_configuration_stack_record\n"            /* at 0x07fc4eea */
                     "bl queue_computed_status_records\n"                        /* at 0x07fc4eee */
                     "movs r0, #32 /* 0x07fc4ef2 */\n"
                     "ldr r5, [pc, #304] /* 0x07fc4ef4 */\n"
                     "ldrb r0, [r5, r0] /* 0x07fc4ef6 */\n"
                     "cmp r0, #1 /* 0x07fc4ef8 */\n"
                     "bne.n .L_handle_record_flag_and_queue_sensor_configuration_block_at_4e98_at_07fc4f0c /* branch: "
                     "ne, target at .+18 */ /* 0x07fc4efa */\n"
                     "movs r0, #40	@ 0x28 /* 0x07fc4efc */\n"
                     "ldrb r2, [r5, r0] /* 0x07fc4efe */\n"
                     "movs r0, #44	@ 0x2c /* 0x07fc4f00 */\n"
                     "ldr r1, [pc, #44] /* 0x07fc4f02 */\n"
                     "ldrb r1, [r1, r0] /* 0x07fc4f04 */\n"
                     "movs r0, #11 /* 0x07fc4f06 */\n"
                     "bl initialize_and_dispatch_three_byte_request\n" /* at 0x07fc4f08 */
                     ".L_handle_record_flag_and_queue_sensor_configuration_block_at_4e98_at_07fc4f0c:\n"
                     "movs r0, #53	@ 0x35 /* 0x07fc4f0c */\n"
                     "movs r1, #1 /* 0x07fc4f0e */\n"
                     "strb r1, [r5, r0] /* 0x07fc4f10 */\n"
                     "ldr r0, [pc, #28] /* 0x07fc4f12 */\n"
                     "ldr r1, [sp, #4] /* 0x07fc4f14 */\n"
                     "str r1, [r0, #0] /* 0x07fc4f16 */\n"
                     "movs r0, #3 /* 0x07fc4f18 */\n"
                     "lsls r0, r0, #9 /* 0x07fc4f1a */\n"
                     "strh r0, [r5, #54]	@ 0x36 /* 0x07fc4f1c */\n"
                     ".L_handle_record_flag_and_queue_sensor_configuration_block_at_4e98_at_07fc4f1e:\n"
                     "ldr r0, [pc, #780] /* 0x07fc4f1e */\n"
                     "strb r4, [r0, #1] /* 0x07fc4f20 */\n"
                     "add sp, #28 /* 0x07fc4f22 */\n"
                     "pop {r4, r5, r6, r7, pc} /* 0x07fc4f24 */\n");
}
