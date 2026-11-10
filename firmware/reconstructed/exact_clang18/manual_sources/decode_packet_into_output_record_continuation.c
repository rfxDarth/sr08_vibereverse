/* Recovered behavior:
 * Clamp the encoded payload length to 31, copy the fixed prefix and variable payload, store the status flag, and
 * return.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.decode_packet_into_output_record_continuation"))) void
decode_packet_into_output_record_continuation(void) {
    __asm__ volatile(".global decode_packet_into_output_record_block_at_04bc_branch_at_07fc04bc\n"
                     "decode_packet_into_output_record_block_at_04bc_branch_at_07fc04bc:\n"
                     "ldrh r0, [r5, #4] /* 0x07fc04bc */\n"
                     "lsrs r0, r0, #8 /* 0x07fc04be */\n"
                     "subs r0, r0, #6 /* 0x07fc04c0 */\n"
                     "uxtb r0, r0 /* 0x07fc04c2 */\n"
                     "strb r0, [r4, #10] /* 0x07fc04c4 */\n"
                     "cmp r0, #31 /* 0x07fc04c6 */\n"
                     "bls.n .L_decode_packet_into_output_record_block_at_04bc_at_07fc04cc /* branch: ls, target at .+4 "
                     "*/ /* 0x07fc04c8 */\n"
                     "strb r1, [r4, #10] /* 0x07fc04ca */\n"
                     ".L_decode_packet_into_output_record_block_at_04bc_at_07fc04cc:\n"
                     "mov r0, r5 /* 0x07fc04cc */\n"
                     "bl co_buf_rx_buffer_get\n" /* at 0x07fc04ce */
                     "adds r1, r0, #6 /* 0x07fc04d2 */\n"
                     "mov r0, r4 /* 0x07fc04d4 */\n"
                     "ldrb r2, [r4, #10] /* 0x07fc04d6 */\n"
                     "adds r0, #11 /* 0x07fc04d8 */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc04da */
                     "mov r0, r5 /* 0x07fc04de */\n"
                     "bl co_buf_rx_buffer_get\n" /* at 0x07fc04e0 */
                     "mov r1, r0 /* 0x07fc04e4 */\n"
                     "movs r2, #6 /* 0x07fc04e6 */\n"
                     "adds r0, r4, #4 /* 0x07fc04e8 */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc04ea */
                     "ldrb r0, [r5, #4] /* 0x07fc04ee */\n"
                     "lsls r0, r0, #25 /* 0x07fc04f0 */\n"
                     "lsrs r0, r0, #31 /* 0x07fc04f2 */\n"
                     "strb r0, [r4, #3] /* 0x07fc04f4 */\n"
                     "pop {r3, r4, r5, r6, r7, pc} /* 0x07fc04f6 */\n");
}
