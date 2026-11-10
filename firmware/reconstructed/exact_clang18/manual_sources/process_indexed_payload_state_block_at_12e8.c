/*
 * Fixed-address fragment 2 of 2 for process_indexed_payload_state.
 * The catalog groups these sections as one logical routine. Keep each section at its VMA and
 * preserve cross-section branch destinations; this fragment is not necessarily a standalone entry.
 *
 * Routine behavior: Inspect the indexed record's state byte, copy its 16-byte payload for states
 * '$' and 0x0c, advance the '$' state to '%', and apply the associated callback/flag transitions
 * for state 0x0c.
 */
#include <stdint.h>
__attribute__((used, naked, section(".text.process_indexed_payload_state_block_at_12e8"))) void
process_indexed_payload_state_block_at_12e8(void) {
    __asm__ volatile(".global process_indexed_payload_state_block_at_12e8_branch_at_07fc12e8\n"
                     "process_indexed_payload_state_block_at_12e8_branch_at_07fc12e8:\n"
                     "ldr r1, [r4, r5] /* 0x07fc12e8 */\n"
                     "movs r0, #0 /* 0x07fc12ea */\n"
                     "ldr r1, [r1, #16] /* 0x07fc12ec */\n"
                     "adds r1, #192	@ 0xc0 /* 0x07fc12ee */\n"
                     "strb r0, [r1, #6] /* 0x07fc12f0 */\n"
                     "ldr r0, [r4, r5] /* 0x07fc12f2 */\n"
                     "movs r1, #4 /* 0x07fc12f4 */\n"
                     "ldr r2, [r0, #16] /* 0x07fc12f6 */\n"
                     "mov r0, r6 /* 0x07fc12f8 */\n"
                     "adds r2, #30 /* 0x07fc12fa */\n"
                     "bl smpc_pdu_send\n" /* at 0x07fc12fc */
                     "ldr r0, [r4, r5] /* 0x07fc1300 */\n"
                     "ldr r1, [r0, #16] /* 0x07fc1302 */\n"
                     "adds r1, #64	@ 0x40 /* 0x07fc1304 */\n"
                     "ldrb r1, [r1, #30] /* 0x07fc1306 */\n"
                     "cmp r1, #0 /* 0x07fc1308 */\n"
                     "beq.n .L_process_indexed_payload_state_block_at_12e8_at_07fc131c /* branch: eq, target at .+18 "
                     "*/ /* 0x07fc130a */\n"
                     "movs r1, #26 /* 0x07fc130c */\n"
                     "adds r0, #64	@ 0x40 /* 0x07fc130e */\n"
                     "strb r1, [r0, #8] /* 0x07fc1310 */\n"
                     "movs r1, #0 /* 0x07fc1312 */\n"
                     "mov r0, r6 /* 0x07fc1314 */\n"
                     "bl smpc_generate_g2\n" /* at 0x07fc1316 */
                     "b.n process_indexed_payload_state_block_at_11f8_branch_at_07fc12c4 /* branch: always, target at "
                     ".-86 */ /* 0x07fc131a */\n"
                     ".L_process_indexed_payload_state_block_at_12e8_at_07fc131c:\n"
                     "movs r1, #27 /* 0x07fc131c */\n"
                     "adds r0, #64	@ 0x40 /* 0x07fc131e */\n"
                     "strb r1, [r0, #8] /* 0x07fc1320 */\n"
                     "mov r0, r6 /* 0x07fc1322 */\n"
                     "bl smpc_generate_f5\n" /* at 0x07fc1324 */
                     "b.n process_indexed_payload_state_block_at_11f8_branch_at_07fc12c4 /* branch: always, target at "
                     ".-100 */ /* 0x07fc1328 */\n");
}
