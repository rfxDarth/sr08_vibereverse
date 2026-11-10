/* Recovered behavior:
 * Decode the packed status and slot, set the slot's event flag, and handle statuses 0x13 through
 * 0x15 specially. For other statuses, use the slot's state bits to choose the event callback or
 * the paired update calls; return two on the designated early-completion paths.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.update_slot_event_state_and_dispatch"))) void
update_slot_event_state_and_dispatch(void) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr} /* 0x07fc0274 */\n"
                     "mov r4, r2 /* 0x07fc0276 */\n"
                     "mov r5, r1 /* 0x07fc0278 */\n"
                     "mov r0, r2 /* 0x07fc027a */\n"
                     "bl ke_state_get\n" /* at 0x07fc027c */
                     "lsrs r4, r4, #8 /* 0x07fc0280 */\n"
                     "cmp r0, #0 /* 0x07fc0282 */\n"
                     "beq.n .L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02e8 /* branch: eq, target at "
                     ".+100 */ /* 0x07fc0284 */\n"
                     "ldr r1, [pc, #868] /* 0x07fc0286 */\n"
                     "lsls r2, r4, #2 /* 0x07fc0288 */\n"
                     "ldr r3, [r1, r2] /* 0x07fc028a */\n"
                     "movs r7, #1 /* 0x07fc028c */\n"
                     "ldrh r6, [r3, #24] /* 0x07fc028e */\n"
                     "lsls r7, r7, #10 /* 0x07fc0290 */\n"
                     "orrs r6, r7 /* 0x07fc0292 */\n"
                     "strh r6, [r3, #24] /* 0x07fc0294 */\n"
                     "cmp r0, #19 /* 0x07fc0296 */\n"
                     "beq.n .L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02e8 /* branch: eq, target at "
                     ".+80 */ /* 0x07fc0298 */\n"
                     "cmp r0, #20 /* 0x07fc029a */\n"
                     "beq.n .L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02e8 /* branch: eq, target at "
                     ".+76 */ /* 0x07fc029c */\n"
                     "cmp r0, #21 /* 0x07fc029e */\n"
                     "beq.n .L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02c6 /* branch: eq, target at "
                     ".+38 */ /* 0x07fc02a0 */\n"
                     "ldr r0, [r1, r2] /* 0x07fc02a2 */\n"
                     "movs r1, #45	@ 0x2d /* 0x07fc02a4 */\n"
                     "ldrb r2, [r1, r0] /* 0x07fc02a6 */\n"
                     "movs r3, #1 /* 0x07fc02a8 */\n"
                     "lsls r1, r2, #27 /* 0x07fc02aa */\n"
                     "cmp r1, #0 /* 0x07fc02ac */\n"
                     "bge.n .L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02ca /* branch: ge, target at "
                     ".+28 */ /* 0x07fc02ae */\n"
                     "mov r1, r0 /* 0x07fc02b0 */\n"
                     "adds r1, #160	@ 0xa0 /* 0x07fc02b2 */\n"
                     "ldrb r6, [r1, #22] /* 0x07fc02b4 */\n"
                     "cmp r6, #0 /* 0x07fc02b6 */\n"
                     "beq.n .L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02ca /* branch: eq, target at "
                     ".+18 */ /* 0x07fc02b8 */\n"
                     "strb r3, [r1, #22] /* 0x07fc02ba */\n"
                     "movs r1, #61	@ 0x3d /* 0x07fc02bc */\n"
                     "mov r0, r4 /* 0x07fc02be */\n"
                     "bl llc_util_dicon_procedure\n" /* at 0x07fc02c0 */
                     "b.n .L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02e8 /* branch: always, target "
                     "at .+36 */ /* 0x07fc02c4 */\n"
                     ".L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02c6:\n"
                     "movs r0, #2 /* 0x07fc02c6 */\n"
                     "pop {r3, r4, r5, r6, r7, pc} /* 0x07fc02c8 */\n"
                     ".L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02ca:\n"
                     "lsls r1, r2, #28 /* 0x07fc02ca */\n"
                     "bpl.n .L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02d6 /* branch: pl, target at "
                     ".+10 */ /* 0x07fc02cc */\n"
                     "movs r1, #0 /* 0x07fc02ce */\n"
                     "adds r0, #160	@ 0xa0 /* 0x07fc02d0 */\n"
                     "strb r1, [r0, #22] /* 0x07fc02d2 */\n"
                     "b.n .L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02c6 /* branch: always, target "
                     "at .-14 */ /* 0x07fc02d4 */\n"
                     ".L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02d6:\n"
                     "adds r0, #160	@ 0xa0 /* 0x07fc02d6 */\n"
                     "strb r3, [r0, #22] /* 0x07fc02d8 */\n"
                     "mov r0, r4 /* 0x07fc02da */\n"
                     "bl llc_length_rsp_pdu_send\n" /* at 0x07fc02dc */
                     "mov r1, r5 /* 0x07fc02e0 */\n"
                     "mov r0, r4 /* 0x07fc02e2 */\n"
                     "bl llc_length_ind\n" /* at 0x07fc02e4 */
                     ".L_update_slot_event_state_and_dispatch_block_at_0274_at_07fc02e8:\n"
                     "movs r0, #0 /* 0x07fc02e8 */\n"
                     "pop {r3, r4, r5, r6, r7, pc} /* 0x07fc02ea */\n");
}
