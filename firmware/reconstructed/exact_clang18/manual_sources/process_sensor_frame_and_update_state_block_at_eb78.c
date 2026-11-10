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
                     "ldrb r1, [r0, #11] /* 0x07fceb78 */\n"
                     "cmp r1, #0 /* 0x07fceb7a */\n"
                     "beq.n .L_process_sensor_frame_and_update_state_block_at_eb78_at_07fceb82 /* branch: eq, target "
                     "at .+6 */ /* 0x07fceb7c */\n"
                     "subs r1, r1, #1 /* 0x07fceb7e */\n"
                     "strb r1, [r0, #11] /* 0x07fceb80 */\n"
                     ".L_process_sensor_frame_and_update_state_block_at_eb78_at_07fceb82:\n"
                     ".global process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fceb82\n"
                     "process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fceb82:\n"
                     "ldr r1, [sp, #20] /* 0x07fceb82 */\n"
                     "mov r2, r1 /* 0x07fceb84 */\n"
                     "subs r2, #255	@ 0xff /* 0x07fceb86 */\n"
                     "subs r2, #245	@ 0xf5 /* 0x07fceb88 */\n"
                     "bne.n .L_process_sensor_frame_and_update_state_block_at_eb78_at_07fceb96 /* branch: ne, target "
                     "at .+12 */ /* 0x07fceb8a */\n"
                     "ldrb r1, [r5, #2] /* 0x07fceb8c */\n"
                     "cmp r1, #3 /* 0x07fceb8e */\n"
                     "beq.n .L_process_sensor_frame_and_update_state_block_at_eb78_at_07fceb96 /* branch: eq, target "
                     "at .+6 */ /* 0x07fceb90 */\n"
                     "movs r1, #4 /* 0x07fceb92 */\n"
                     "strb r1, [r5, #2] /* 0x07fceb94 */\n"
                     ".L_process_sensor_frame_and_update_state_block_at_eb78_at_07fceb96:\n"
                     "ldrb r1, [r0, #8] /* 0x07fceb96 */\n"
                     "strb r1, [r0, #9] /* 0x07fceb98 */\n"
                     "b.n .L_process_sensor_frame_and_update_state_block_at_eb78_at_07fcebb6 /* branch: always, target "
                     "at .+28 */ /* 0x07fceb9a */\n"
                     ".global process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fceb9c\n"
                     "process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fceb9c:\n"
                     "movs r1, #7 /* 0x07fceb9c */\n"
                     "lsls r1, r1, #7 /* 0x07fceb9e */\n"
                     "movs r0, #0 /* 0x07fceba0 */\n"
                     "adds r1, r5, r1 /* 0x07fceba2 */\n"
                     "str r0, [r1, #0] /* 0x07fceba4 */\n"
                     "str r0, [r1, #4] /* 0x07fceba6 */\n"
                     "movs r1, #25 /* 0x07fceba8 */\n"
                     "lsls r1, r1, #7 /* 0x07fcebaa */\n"
                     "strb r0, [r5, #8] /* 0x07fcebac */\n"
                     "adds r1, r5, r1 /* 0x07fcebae */\n"
                     "strb r0, [r1, #8] /* 0x07fcebb0 */\n"
                     "strb r0, [r1, #10] /* 0x07fcebb2 */\n"
                     "strb r0, [r1, #11] /* 0x07fcebb4 */\n"
                     ".L_process_sensor_frame_and_update_state_block_at_eb78_at_07fcebb6:\n"
                     ".global process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fcebb6\n"
                     "process_sensor_frame_and_update_state_block_at_eb78_branch_at_07fcebb6:\n"
                     "ldr r0, [sp, #20] /* 0x07fcebb6 */\n"
                     "adds r0, r0, #1 /* 0x07fcebb8 */\n"
                     "str r0, [r5, #4] /* 0x07fcebba */\n"
                     "movs r0, #1 /* 0x07fcebbc */\n"
                     "add sp, #84 /* 0x07fcebbe */\n"
                     "pop {r4, r5, r6, r7, pc} /* 0x07fcebc0 */\n");
}
