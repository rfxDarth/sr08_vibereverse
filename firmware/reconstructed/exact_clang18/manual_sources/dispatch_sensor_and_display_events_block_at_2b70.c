/*
 * Fixed-address fragment 4 of 5 for dispatch_sensor_and_display_events.
 * The catalog groups these sections as one logical routine. Keep each section at its VMA and
 * preserve cross-section branch destinations; this fragment is not necessarily a standalone entry.
 *
 * Routine behavior: Handle the firmware's central sensor and display event cases, including
 * measurement record updates, mode transitions, status changes, and follow-up event dispatch.
 */
#include <stdint.h>
__attribute__((used, naked, section(".text.dispatch_sensor_and_display_events_block_at_2b70"))) void
dispatch_sensor_and_display_events_block_at_2b70(void) {
    __asm__ volatile(".global dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b70\n"
                     "dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b70:\n"
                     "ldr r2, [pc, #552]\n"
                     "cmp r1, r2\n"
                     "beq.n .L_dispatch_sensor_and_display_events_block_at_2b70_at_07fc2b78 /* branch: eq, target at "
                     ".+4 */\n"
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2ca8 /* branch: always, "
                     "target at .+306 */\n"
                     ".L_dispatch_sensor_and_display_events_block_at_2b70_at_07fc2b78:\n"
                     "ldr r2, [pc, #544]\n"
                     "cmp r0, r2\n"
                     "beq.n .L_dispatch_sensor_and_display_events_block_at_2b70_at_07fc2b80 /* branch: eq, target at "
                     ".+4 */\n"
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2ca8 /* branch: always, "
                     "target at .+298 */\n"
                     ".L_dispatch_sensor_and_display_events_block_at_2b70_at_07fc2b80:\n"
                     "bl initialize_display_image_region_and_fixed_header\n" /* at 0x07fc2b80 */
                     ".global dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b84\n"
                     "dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b84:\n"
                     "movs r0, #0\n"
                     ".global dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b86\n"
                     "dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b86:\n"
                     "bl build_mode_status_record_select_corresponding_at_43a4\n" /* at 0x07fc2b86 */
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2d04 /* branch: always, "
                     "target at .+378 */\n"
                     ".global dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b8c\n"
                     "dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b8c:\n"
                     "add r0, sp, #68\n"
                     "ldr r1, [pc, #520]\n"
                     "strh r1, [r0, #0]\n"
                     ".global dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b92\n"
                     "dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b92:\n"
                     "bl search_queue_and_insert_limit_twenty\n" /* at 0x07fc2b92 */
                     ".global dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b96\n"
                     "dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b96:\n"
                     "ldr r5, [pc, #912]\n"
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2d0a /* branch: always, "
                     "target at .+370 */\n"
                     ".global dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b9a\n"
                     "dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2b9a:\n"
                     "movs r0, #2\n"
                     "ldr r1, [pc, #476]\n"
                     "strb r0, [r1, #17]\n"
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2d0a /* branch: always, "
                     "target at .+362 */\n"
                     ".global dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2ba2\n"
                     "dispatch_sensor_and_display_events_block_at_2b70_branch_at_07fc2ba2:\n"
                     "cmp r0, #16\n"
                     "beq.n .L_dispatch_sensor_and_display_events_block_at_2b70_at_07fc2ba8 /* branch: eq, target at "
                     ".+4 */\n"
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2d04 /* branch: always, "
                     "target at .+350 */\n"
                     ".L_dispatch_sensor_and_display_events_block_at_2b70_at_07fc2ba8:\n"
                     "movs r0, #22\n"
                     "b.n dispatch_sensor_and_display_events_block_at_2bd8_branch_at_07fc2c08 /* branch: always, "
                     "target at .+94 */\n");
}
