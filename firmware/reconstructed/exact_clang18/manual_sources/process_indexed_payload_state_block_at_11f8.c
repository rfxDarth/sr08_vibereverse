/*
 * Fixed-address fragment 1 of 2 for process_indexed_payload_state.
 * The catalog groups these sections as one logical routine. Keep each section at its VMA and
 * preserve cross-section branch destinations; this fragment is not necessarily a standalone entry.
 *
 * Routine behavior: Inspect the indexed record's state byte, copy its 16-byte payload for states
 * '$' and 0x0c, advance the '$' state to '%', and apply the associated callback/flag transitions
 * for state 0x0c.
 */
#include <stdint.h>
__attribute__((used, naked, section(".text.process_indexed_payload_state_block_at_11f8"))) void
process_indexed_payload_state_block_at_11f8(void) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr} /* 0x07fc11f8 */\n"
                     "ldr r4, [pc, #232] /* 0x07fc11fa */\n"
                     "mov r6, r0 /* 0x07fc11fc */\n"
                     "lsls r5, r0, #2 /* 0x07fc11fe */\n"
                     "mov r7, r1 /* 0x07fc1200 */\n"
                     "ldr r0, [r4, r5] /* 0x07fc1202 */\n"
                     "movs r1, #72	@ 0x48 /* 0x07fc1204 */\n"
                     "ldrb r1, [r1, r0] /* 0x07fc1206 */\n"
                     "cmp r1, #36	@ 0x24 /* 0x07fc1208 */\n"
                     "bne.n .L_process_indexed_payload_state_block_at_11f8_at_07fc122a /* branch: ne, target at .+32 "
                     "*/ /* 0x07fc120a */\n"
                     "ldr r0, [r0, #16] /* 0x07fc120c */\n"
                     "movs r2, #16 /* 0x07fc120e */\n"
                     "adds r1, r7, #5 /* 0x07fc1210 */\n"
                     "adds r0, #46	@ 0x2e /* 0x07fc1212 */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc1214 */
                     "ldr r1, [r4, r5] /* 0x07fc1218 */\n"
                     "movs r0, #37	@ 0x25 /* 0x07fc121a */\n"
                     "adds r1, #64	@ 0x40 /* 0x07fc121c */\n"
                     "strb r0, [r1, #8] /* 0x07fc121e */\n"
                     "movs r2, #0 /* 0x07fc1220 */\n"
                     "mov r1, r2 /* 0x07fc1222 */\n"
                     "mov r0, r6 /* 0x07fc1224 */\n"
                     "bl smpc_generate_f4\n" /* at 0x07fc1226 */
                     ".L_process_indexed_payload_state_block_at_11f8_at_07fc122a:\n"
                     "ldr r0, [r4, r5] /* 0x07fc122a */\n"
                     "movs r1, #72	@ 0x48 /* 0x07fc122c */\n"
                     "ldrb r1, [r1, r0] /* 0x07fc122e */\n"
                     "cmp r1, #12 /* 0x07fc1230 */\n"
                     "bne.n .L_process_indexed_payload_state_block_at_11f8_at_07fc1274 /* branch: ne, target at .+66 "
                     "*/ /* 0x07fc1232 */\n"
                     "ldr r0, [r0, #16] /* 0x07fc1234 */\n"
                     "movs r2, #16 /* 0x07fc1236 */\n"
                     "adds r1, r7, #5 /* 0x07fc1238 */\n"
                     "adds r0, #46	@ 0x2e /* 0x07fc123a */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc123c */
                     "ldr r0, [r4, r5] /* 0x07fc1240 */\n"
                     "movs r1, #95	@ 0x5f /* 0x07fc1242 */\n"
                     "ldr r0, [r0, #16] /* 0x07fc1244 */\n"
                     "ldrb r1, [r1, r0] /* 0x07fc1246 */\n"
                     "lsls r1, r1, #28 /* 0x07fc1248 */\n"
                     "bmi.n .L_process_indexed_payload_state_block_at_11f8_at_07fc12a8 /* branch: mi, target at .+94 "
                     "*/ /* 0x07fc124a */\n"
                     "mov r1, r0 /* 0x07fc124c */\n"
                     "adds r1, #46	@ 0x2e /* 0x07fc124e */\n"
                     "movs r2, #16 /* 0x07fc1250 */\n"
                     "adds r0, #30 /* 0x07fc1252 */\n"
                     "bl memcmp\n" /* at 0x07fc1254 */
                     "cmp r0, #0 /* 0x07fc1258 */\n"
                     "beq.n .L_process_indexed_payload_state_block_at_11f8_at_07fc1276 /* branch: eq, target at .+28 "
                     "*/ /* 0x07fc125a */\n"
                     "ldr r0, [r4, r5] /* 0x07fc125c */\n"
                     "movs r1, #9 /* 0x07fc125e */\n"
                     "adds r0, #64	@ 0x40 /* 0x07fc1260 */\n"
                     "strb r1, [r0, #8] /* 0x07fc1262 */\n"
                     "mov r0, r6 /* 0x07fc1264 */\n"
                     "bl gapc_get_role\n" /* at 0x07fc1266 */
                     "mov r1, r0 /* 0x07fc126a */\n"
                     "movs r2, #0 /* 0x07fc126c */\n"
                     "mov r0, r6 /* 0x07fc126e */\n"
                     "bl smpc_generate_e1\n" /* at 0x07fc1270 */
                     ".L_process_indexed_payload_state_block_at_11f8_at_07fc1274:\n"
                     "pop {r3, r4, r5, r6, r7, pc} /* 0x07fc1274 */\n"
                     ".L_process_indexed_payload_state_block_at_11f8_at_07fc1276:\n"
                     "movs r1, #4 /* 0x07fc1276 */\n"
                     "mov r0, sp /* 0x07fc1278 */\n"
                     "strb r1, [r0, #0] /* 0x07fc127a */\n"
                     "mov r2, sp /* 0x07fc127c */\n"
                     "movs r1, #5 /* 0x07fc127e */\n"
                     "mov r0, r6 /* 0x07fc1280 */\n"
                     "bl smpc_pdu_send\n" /* at 0x07fc1282 */
                     "mov r0, sp /* 0x07fc1286 */\n"
                     "ldrb r1, [r0, #0] /* 0x07fc1288 */\n"
                     "movs r0, #96	@ 0x60 /* 0x07fc128a */\n"
                     "orrs r1, r0 /* 0x07fc128c */\n"
                     "mov r0, sp /* 0x07fc128e */\n"
                     "strb r1, [r0, #0] /* 0x07fc1290 */\n"
                     "mov r0, r6 /* 0x07fc1292 */\n"
                     "bl gapc_get_role\n" /* at 0x07fc1294 */
                     "mov r1, r0 /* 0x07fc1298 */\n"
                     "mov r0, sp /* 0x07fc129a */\n"
                     "ldrb r2, [r0, #0] /* 0x07fc129c */\n"
                     "movs r3, #1 /* 0x07fc129e */\n"
                     "mov r0, r6 /* 0x07fc12a0 */\n"
                     "bl smpc_pairing_end\n" /* at 0x07fc12a2 */
                     "pop {r3, r4, r5, r6, r7, pc} /* 0x07fc12a6 */\n"
                     ".L_process_indexed_payload_state_block_at_11f8_at_07fc12a8:\n"
                     "mov r0, r6 /* 0x07fc12a8 */\n"
                     "bl gapc_get_role\n" /* at 0x07fc12aa */
                     "cmp r0, #1 /* 0x07fc12ae */\n"
                     "beq.n process_indexed_payload_state_block_at_12e8_branch_at_07fc12e8 /* branch: eq, target at "
                     ".+56 */ /* 0x07fc12b0 */\n"
                     "ldr r0, [r4, r5] /* 0x07fc12b2 */\n"
                     "movs r1, #7 /* 0x07fc12b4 */\n"
                     "adds r0, #64	@ 0x40 /* 0x07fc12b6 */\n"
                     "strb r1, [r0, #8] /* 0x07fc12b8 */\n"
                     "movs r2, #0 /* 0x07fc12ba */\n"
                     "mov r1, r2 /* 0x07fc12bc */\n"
                     "mov r0, r6 /* 0x07fc12be */\n"
                     "bl smpc_generate_f4\n" /* at 0x07fc12c0 */
                     ".global V204_SHARED_EPILOGUE_07fc12c4\n"
                     "V204_SHARED_EPILOGUE_07fc12c4:\n"
                     ".global process_indexed_payload_state_block_at_11f8_branch_at_07fc12c4\n"
                     "process_indexed_payload_state_block_at_11f8_branch_at_07fc12c4:\n"
                     "pop {r3, r4, r5, r6, r7, pc} /* 0x07fc12c4 */\n");
}
