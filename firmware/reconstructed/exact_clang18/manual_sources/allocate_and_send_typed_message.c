/* Recovered behavior:
 * Check the response state, select a fixed or encoded payload based on the request type, allocate
 * the kernel message, copy its header and payload, and send it. Return the packed response-state
 * result on the early path.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.allocate_and_send_typed_message"))) void
allocate_and_send_typed_message(void) {
    __asm__ volatile("push {r1, r2, r3, r4, r5, r6, r7, lr} /* 0x07fc6998 */\n"
                     "mov r6, r3 /* 0x07fc699a */\n"
                     "mov r5, r2 /* 0x07fc699c */\n"
                     "mov r4, r1 /* 0x07fc699e */\n"
                     "mov r0, r2 /* 0x07fc69a0 */\n"
                     "bl ke_state_get\n" /* at 0x07fc69a2 */
                     "cmp r0, #0 /* 0x07fc69a6 */\n"
                     "beq.n .L_allocate_and_send_typed_message_block_at_6998_at_07fc69ba /* branch: eq, target at .+18 "
                     "*/ /* 0x07fc69a8 */\n"
                     "mov r0, r5 /* 0x07fc69aa */\n"
                     "bl ke_state_get\n" /* at 0x07fc69ac */
                     "subs r0, r0, #1 /* 0x07fc69b0 */\n"
                     "negs r1, r0 /* 0x07fc69b2 */\n"
                     "adcs r1, r0 /* 0x07fc69b4 */\n"
                     "lsls r0, r1, #1 /* 0x07fc69b6 */\n"
                     "pop {r1, r2, r3, r4, r5, r6, r7, pc} /* 0x07fc69b8 */\n"
                     ".L_allocate_and_send_typed_message_block_at_6998_at_07fc69ba:\n"
                     "movs r0, #252	@ 0xfc /* 0x07fc69ba */\n"
                     "bl find_keyed_record_value\n" /* at 0x07fc69bc */
                     "ldrh r3, [r4, #0] /* 0x07fc69c0 */\n"
                     "ldrb r1, [r0, #6] /* 0x07fc69c2 */\n"
                     "add r2, sp, #8 /* 0x07fc69c4 */\n"
                     "movs r7, #0 /* 0x07fc69c6 */\n"
                     "strh r7, [r2, #0] /* 0x07fc69c8 */\n"
                     "str r7, [sp, #4] /* 0x07fc69ca */\n"
                     "mov r2, sp /* 0x07fc69cc */\n"
                     "strh r7, [r2, #0] /* 0x07fc69ce */\n"
                     "subs r1, r3, r1 /* 0x07fc69d0 */\n"
                     "uxtb r1, r1 /* 0x07fc69d2 */\n"
                     "cmp r1, #19 /* 0x07fc69d4 */\n"
                     "beq.n .L_allocate_and_send_typed_message_block_at_6998_at_07fc69e8 /* branch: eq, target at .+18 "
                     "*/ /* 0x07fc69d6 */\n"
                     "cmp r1, #13 /* 0x07fc69d8 */\n"
                     "bne.n .L_allocate_and_send_typed_message_block_at_6998_at_07fc69fe /* branch: ne, target at .+36 "
                     "*/ /* 0x07fc69da */\n"
                     "add r1, sp, #8 /* 0x07fc69dc */\n"
                     "movs r2, #2 /* 0x07fc69de */\n"
                     "strh r2, [r1, #0] /* 0x07fc69e0 */\n"
                     "adds r0, #10 /* 0x07fc69e2 */\n"
                     "str r0, [sp, #4] /* 0x07fc69e4 */\n"
                     "b.n .L_allocate_and_send_typed_message_block_at_6998_at_07fc69fa /* branch: always, target at "
                     ".+20 */ /* 0x07fc69e6 */\n"
                     ".L_allocate_and_send_typed_message_block_at_6998_at_07fc69e8:\n"
                     "add r0, sp, #8 /* 0x07fc69e8 */\n"
                     "movs r1, #2 /* 0x07fc69ea */\n"
                     "strh r1, [r0, #0] /* 0x07fc69ec */\n"
                     "lsrs r0, r6, #8 /* 0x07fc69ee */\n"
                     "bl gattc_get_mtu\n" /* at 0x07fc69f0 */
                     "mov r1, sp /* 0x07fc69f4 */\n"
                     "strh r0, [r1, #0] /* 0x07fc69f6 */\n"
                     "str r1, [sp, #4] /* 0x07fc69f8 */\n"
                     ".L_allocate_and_send_typed_message_block_at_6998_at_07fc69fa:\n"
                     "movs r0, #8 /* 0x07fc69fa */\n"
                     "b.n .L_allocate_and_send_typed_message_block_at_6998_at_07fc6a0e /* branch: always, target at "
                     ".+18 */ /* 0x07fc69fc */\n"
                     ".L_allocate_and_send_typed_message_block_at_6998_at_07fc69fe:\n"
                     "add r1, sp, #8 /* 0x07fc69fe */\n"
                     "add r2, sp, #4 /* 0x07fc6a00 */\n"
                     "mov r0, r3 /* 0x07fc6a02 */\n"
                     "bl attmdb_get_value\n" /* at 0x07fc6a04 */
                     "mov r7, r0 /* 0x07fc6a08 */\n"
                     "ldr r0, [sp, #8] /* 0x07fc6a0a */\n"
                     "adds r0, r0, #6 /* 0x07fc6a0c */\n"
                     ".L_allocate_and_send_typed_message_block_at_6998_at_07fc6a0e:\n"
                     "uxth r3, r0 /* 0x07fc6a0e */\n"
                     "ldr r0, [pc, #472] /* 0x07fc6a10 */\n"
                     "mov r1, r6 /* 0x07fc6a12 */\n"
                     "mov r2, r5 /* 0x07fc6a14 */\n"
                     "bl ke_msg_alloc\n" /* at 0x07fc6a16 */
                     "mov r5, r0 /* 0x07fc6a1a */\n"
                     "ldrh r0, [r4, #0] /* 0x07fc6a1c */\n"
                     "strh r0, [r5, #0] /* 0x07fc6a1e */\n"
                     "strb r7, [r5, #4] /* 0x07fc6a20 */\n"
                     "add r0, sp, #8 /* 0x07fc6a22 */\n"
                     "ldrh r2, [r0, #0] /* 0x07fc6a24 */\n"
                     "strh r2, [r5, #2] /* 0x07fc6a26 */\n"
                     "cmp r2, #0 /* 0x07fc6a28 */\n"
                     "beq.n .L_allocate_and_send_typed_message_block_at_6998_at_07fc6a34 /* branch: eq, target at .+10 "
                     "*/ /* 0x07fc6a2a */\n"
                     "adds r0, r5, #5 /* 0x07fc6a2c */\n"
                     "ldr r1, [sp, #4] /* 0x07fc6a2e */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc6a30 */
                     ".L_allocate_and_send_typed_message_block_at_6998_at_07fc6a34:\n"
                     "mov r0, r5 /* 0x07fc6a34 */\n"
                     "bl ke_msg_send\n" /* at 0x07fc6a36 */
                     "movs r0, #0 /* 0x07fc6a3a */\n"
                     "pop {r1, r2, r3, r4, r5, r6, r7, pc} /* 0x07fc6a3c */\n");
}
