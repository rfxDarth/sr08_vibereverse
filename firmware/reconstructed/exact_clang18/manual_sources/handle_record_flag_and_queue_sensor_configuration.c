/* Recovered behavior:
 * When the current record flag is one and the shared transition marker is clear, enqueue two 0xf6
 * records, build and queue sensor/status records, optionally dispatch a three-byte request, and
 * update the transition state.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.handle_record_flag_and_queue_sensor_configuration"))) void
handle_record_flag_and_queue_sensor_configuration(void) {
    __asm__ volatile("push {r4, r5, r6, r7, lr}\n"
                     "sub sp, #28\n"
                     "bl read_current_record_value_byte\n" /* at 0x07fc4e9c */
                     "mov r4, r0\n"
                     "cmp r0, #1\n"
                     "bne.n .L_handle_record_flag_and_queue_sensor_configuration_block_at_4e98_at_07fc4f1e /* branch: "
                     "ne, target at .+122 */\n"
                     "ldr r0, [pc, #900]\n"
                     "ldrb r0, [r0, #1]\n"
                     "cmp r0, #1\n"
                     "beq.n .L_handle_record_flag_and_queue_sensor_configuration_block_at_4e98_at_07fc4f1e /* branch: "
                     "eq, target at .+114 */\n"
                     "add r5, sp, #8\n"
                     "mov r0, r5\n"
                     "adds r0, #9\n"
                     "movs r1, #11\n"
                     "bl __aeabi_memclr\n" /* at 0x07fc4eb6 */
                     "movs r0, #0\n"
                     "str r0, [sp, #4]\n"
                     "strb r0, [r5, #8]\n"
                     "ldr r0, [pc, #104]\n"
                     "str r0, [sp, #12]\n"
                     "movs r7, #246	@ 0xf6\n"
                     "str r7, [sp, #8]\n"
                     "mov r0, r5\n"
                     "bl search_queue_and_insert_limit_twenty\n" /* at 0x07fc4eca */
                     "adds r6, r5, #1\n"
                     "movs r1, #19\n"
                     "mov r0, r6\n"
                     "bl __aeabi_memclr\n" /* at 0x07fc4ed4 */
                     "strb r7, [r5, #0]\n"
                     "mov r0, r6\n"
                     "bl copy_six_profile_bytes_from_offsets_two_to_seven\n" /* at 0x07fc4edc */
                     "mov r0, r5\n"
                     "bl search_queue_and_insert_limit_twenty\n"                 /* at 0x07fc4ee2 */
                     "bl build_sensor_command_packet_acquiring_shared_at_519c\n" /* at 0x07fc4ee6 */
                     "bl prepare_sensor_configuration_stack_record\n"            /* at 0x07fc4eea */
                     "bl queue_computed_status_records\n"                        /* at 0x07fc4eee */
                     "movs r0, #32\n"
                     "ldr r5, [pc, #304]\n"
                     "ldrb r0, [r5, r0]\n"
                     "cmp r0, #1\n"
                     "bne.n .L_handle_record_flag_and_queue_sensor_configuration_block_at_4e98_at_07fc4f0c /* branch: "
                     "ne, target at .+18 */\n"
                     "movs r0, #40	@ 0x28\n"
                     "ldrb r2, [r5, r0]\n"
                     "movs r0, #44	@ 0x2c\n"
                     "ldr r1, [pc, #44]\n"
                     "ldrb r1, [r1, r0]\n"
                     "movs r0, #11\n"
                     "bl initialize_and_dispatch_three_byte_request\n" /* at 0x07fc4f08 */
                     ".L_handle_record_flag_and_queue_sensor_configuration_block_at_4e98_at_07fc4f0c:\n"
                     "movs r0, #53	@ 0x35\n"
                     "movs r1, #1\n"
                     "strb r1, [r5, r0]\n"
                     "ldr r0, [pc, #28]\n"
                     "ldr r1, [sp, #4]\n"
                     "str r1, [r0, #0]\n"
                     "movs r0, #3\n"
                     "lsls r0, r0, #9\n"
                     "strh r0, [r5, #54]	@ 0x36\n"
                     ".L_handle_record_flag_and_queue_sensor_configuration_block_at_4e98_at_07fc4f1e:\n"
                     "ldr r0, [pc, #780]\n"
                     "strb r4, [r0, #1]\n"
                     "add sp, #28\n"
                     "pop {r4, r5, r6, r7, pc}\n");
}
