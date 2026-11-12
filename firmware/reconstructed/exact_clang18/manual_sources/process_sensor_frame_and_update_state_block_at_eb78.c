/*
 * Fixed-address fragment 4 of 4 for process_sensor_frame_and_update_state.
 * The catalog groups these sections as one logical routine. Keep each section at its VMA and
 * preserve cross-section branch destinations; this fragment is not necessarily a standalone entry.
 *
 * Routine behavior: Process the incoming sensor frame and update shared measurement state.
 */
#include <stdint.h>
__attribute__((used, naked, section(".text.process_sensor_frame_and_update_state_block_at_eb78"))) void
process_sensor_frame_and_update_state_block_at_eb78(void) {
    __asm__ volatile(".global process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fceb78\n"
                     "process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fceb78:\n"
                     "ldrb r1, [r0, #11]\n"
                     "cmp r1, #0\n"
                     "beq.n .L_process_sensor_frame_and_update_state_block_at_eb78_at_07fceb82 /* branch: eq, target "
                     "at .+6 */\n"
                     "subs r1, r1, #1\n"
                     "strb r1, [r0, #11]\n"
                     ".L_process_sensor_frame_and_update_state_block_at_eb78_at_07fceb82:\n"
                     ".global process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fceb82\n"
                     "process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fceb82:\n"
                     "ldr r1, [sp, #20]\n"
                     "mov r2, r1\n"
                     "subs r2, #255	@ 0xff\n"
                     "subs r2, #245	@ 0xf5\n"
                     "bne.n .L_process_sensor_frame_and_update_state_block_at_eb78_at_07fceb96 /* branch: ne, target "
                     "at .+12 */\n"
                     "ldrb r1, [r5, #2]\n"
                     "cmp r1, #3\n"
                     "beq.n .L_process_sensor_frame_and_update_state_block_at_eb78_at_07fceb96 /* branch: eq, target "
                     "at .+6 */\n"
                     "movs r1, #4\n"
                     "strb r1, [r5, #2]\n"
                     ".L_process_sensor_frame_and_update_state_block_at_eb78_at_07fceb96:\n"
                     "ldrb r1, [r0, #8]\n"
                     "strb r1, [r0, #9]\n"
                     "b.n .L_process_sensor_frame_and_update_state_block_at_eb78_at_07fcebb6 /* branch: always, target "
                     "at .+28 */\n"
                     ".global process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fceb9c\n"
                     "process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fceb9c:\n"
                     "movs r1, #7\n"
                     "lsls r1, r1, #7\n"
                     "movs r0, #0\n"
                     "adds r1, r5, r1\n"
                     "str r0, [r1, #0]\n"
                     "str r0, [r1, #4]\n"
                     "movs r1, #25\n"
                     "lsls r1, r1, #7\n"
                     "strb r0, [r5, #8]\n"
                     "adds r1, r5, r1\n"
                     "strb r0, [r1, #8]\n"
                     "strb r0, [r1, #10]\n"
                     "strb r0, [r1, #11]\n"
                     ".L_process_sensor_frame_and_update_state_block_at_eb78_at_07fcebb6:\n"
                     ".global process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fcebb6\n"
                     "process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fcebb6:\n"
                     "ldr r0, [sp, #20]\n"
                     "adds r0, r0, #1\n"
                     "str r0, [r5, #4]\n"
                     "movs r0, #1\n"
                     "add sp, #84\n"
                     "pop {r4, r5, r6, r7, pc}\n");
}
