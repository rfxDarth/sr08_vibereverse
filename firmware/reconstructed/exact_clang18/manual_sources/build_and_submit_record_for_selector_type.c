/* Recovered behavior:
 * Use the first input byte to select a record variant: emit fixed fields for type 2, a shared
 * 16-bit value for type 1, or a variable-length shared payload for type 0. Return without emitting
 * for other types.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.build_and_submit_record_for_selector_type"))) void
build_and_submit_record_for_selector_type(void) {
    __asm__ volatile("push {r4, r5, r6, r7, lr} /* 0x07fc64a8 */\n"
                     "sub sp, #36 /* 0x07fc64aa */\n"
                     "mov r5, r3 /* 0x07fc64ac */\n"
                     "mov r4, r2 /* 0x07fc64ae */\n"
                     "ldrb r0, [r1, #0] /* 0x07fc64b0 */\n"
                     "cmp r0, #2 /* 0x07fc64b2 */\n"
                     "beq.n .L_build_and_submit_record_for_selector_type_block_at_64a8_at_07fc64f6 /* branch: eq, "
                     "target at .+66 */ /* 0x07fc64b4 */\n"
                     "cmp r0, #1 /* 0x07fc64b6 */\n"
                     "beq.n .L_build_and_submit_record_for_selector_type_block_at_64a8_at_07fc6516 /* branch: eq, "
                     "target at .+94 */ /* 0x07fc64b8 */\n"
                     "cmp r0, #0 /* 0x07fc64ba */\n"
                     "bne.n .L_build_and_submit_record_for_selector_type_block_at_64a8_at_07fc6532 /* branch: ne, "
                     "target at .+118 */ /* 0x07fc64bc */\n"
                     "movs r0, #72	@ 0x48 /* 0x07fc64be */\n"
                     "ldr r1, [pc, #252] /* 0x07fc64c0 */\n"
                     "ldrb r6, [r1, r0] /* 0x07fc64c2 */\n"
                     "adds r1, #72	@ 0x48 /* 0x07fc64c4 */\n"
                     "adds r1, r1, #1 /* 0x07fc64c6 */\n"
                     "add r7, sp, #4 /* 0x07fc64c8 */\n"
                     "mov r0, r7 /* 0x07fc64ca */\n"
                     "mov r2, r6 /* 0x07fc64cc */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc64ce */
                     "mov r3, r6 /* 0x07fc64d2 */\n"
                     "adds r3, #10 /* 0x07fc64d4 */\n"
                     "ldr r0, [pc, #96] /* 0x07fc64d6 */\n"
                     "mov r1, r5 /* 0x07fc64d8 */\n"
                     "mov r2, r4 /* 0x07fc64da */\n"
                     "bl ke_msg_alloc\n" /* at 0x07fc64dc */
                     "mov r4, r0 /* 0x07fc64e0 */\n"
                     "strh r6, [r0, #2] /* 0x07fc64e2 */\n"
                     "movs r0, #0 /* 0x07fc64e4 */\n"
                     "strb r0, [r4, #0] /* 0x07fc64e6 */\n"
                     "adds r0, r4, #4 /* 0x07fc64e8 */\n"
                     "mov r1, r7 /* 0x07fc64ea */\n"
                     "mov r2, r6 /* 0x07fc64ec */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc64ee */
                     "mov r0, r4 /* 0x07fc64f2 */\n"
                     "b.n .L_build_and_submit_record_for_selector_type_block_at_64a8_at_07fc652e /* branch: always, "
                     "target at .+58 */ /* 0x07fc64f4 */\n"
                     ".L_build_and_submit_record_for_selector_type_block_at_64a8_at_07fc64f6:\n"
                     "ldr r0, [pc, #64] /* 0x07fc64f6 */\n"
                     "movs r3, #10 /* 0x07fc64f8 */\n"
                     "mov r1, r5 /* 0x07fc64fa */\n"
                     "mov r2, r4 /* 0x07fc64fc */\n"
                     "bl ke_msg_alloc\n" /* at 0x07fc64fe */
                     "movs r1, #125	@ 0x7d /* 0x07fc6502 */\n"
                     "strh r1, [r0, #8] /* 0x07fc6504 */\n"
                     "movs r1, #0 /* 0x07fc6506 */\n"
                     "strh r1, [r0, #6] /* 0x07fc6508 */\n"
                     "movs r1, #16 /* 0x07fc650a */\n"
                     "strh r1, [r0, #4] /* 0x07fc650c */\n"
                     "movs r1, #8 /* 0x07fc650e */\n"
                     "strh r1, [r0, #2] /* 0x07fc6510 */\n"
                     "movs r1, #2 /* 0x07fc6512 */\n"
                     "b.n .L_build_and_submit_record_for_selector_type_block_at_64a8_at_07fc652c /* branch: always, "
                     "target at .+24 */ /* 0x07fc6514 */\n"
                     ".L_build_and_submit_record_for_selector_type_block_at_64a8_at_07fc6516:\n"
                     "movs r0, #106	@ 0x6a /* 0x07fc6516 */\n"
                     "ldr r1, [pc, #164] /* 0x07fc6518 */\n"
                     "ldrh r6, [r1, r0] /* 0x07fc651a */\n"
                     "ldr r0, [pc, #24] /* 0x07fc651c */\n"
                     "movs r3, #10 /* 0x07fc651e */\n"
                     "mov r1, r5 /* 0x07fc6520 */\n"
                     "mov r2, r4 /* 0x07fc6522 */\n"
                     "bl ke_msg_alloc\n" /* at 0x07fc6524 */
                     "strh r6, [r0, #2] /* 0x07fc6528 */\n"
                     "movs r1, #1 /* 0x07fc652a */\n"
                     ".L_build_and_submit_record_for_selector_type_block_at_64a8_at_07fc652c:\n"
                     "strb r1, [r0, #0] /* 0x07fc652c */\n"
                     ".L_build_and_submit_record_for_selector_type_block_at_64a8_at_07fc652e:\n"
                     "bl ke_msg_send\n" /* at 0x07fc652e */
                     ".L_build_and_submit_record_for_selector_type_block_at_64a8_at_07fc6532:\n"
                     "movs r0, #0 /* 0x07fc6532 */\n"
                     "add sp, #36 /* 0x07fc6534 */\n"
                     "pop {r4, r5, r6, r7, pc} /* 0x07fc6536 */\n");
}
