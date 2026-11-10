/* Recovered behavior:
 * Return the existing cached-text record when present; otherwise allocate and initialize the
 * record, copy a fixed shared-data block, append the text and length returned by the cache helper,
 * and retain the updated record pointer in shared state.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.get_or_initialize_cached_text_record"))) void
get_or_initialize_cached_text_record(void) {
    __asm__ volatile("push {r1, r2, r3, r4, r5, r6, r7, lr} /* 0x07fc32bc */\n"
                     "ldr r5, [pc, #128] /* 0x07fc32be */\n"
                     "ldr r0, [r5, #88]	@ 0x58 /* 0x07fc32c0 */\n"
                     "cmp r0, #0 /* 0x07fc32c2 */\n"
                     "beq.n .L_get_or_initialize_cached_text_record_block_at_32bc_at_07fc32c8 /* branch: eq, target at "
                     ".+4 */ /* 0x07fc32c4 */\n"
                     "pop {r1, r2, r3, r4, r5, r6, r7, pc} /* 0x07fc32c6 */\n"
                     ".L_get_or_initialize_cached_text_record_block_at_32bc_at_07fc32c8:\n"
                     "ldr r0, [pc, #120] /* 0x07fc32c8 */\n"
                     "movs r1, #9 /* 0x07fc32ca */\n"
                     "movs r2, #4 /* 0x07fc32cc */\n"
                     "movs r3, #82	@ 0x52 /* 0x07fc32ce */\n"
                     "str r1, [sp, #4] /* 0x07fc32d0 */\n"
                     "bl ke_msg_alloc\n" /* at 0x07fc32d2 */
                     "mov r4, r0 /* 0x07fc32d6 */\n"
                     "str r0, [r5, #88]	@ 0x58 /* 0x07fc32d8 */\n"
                     "movs r0, #7 /* 0x07fc32da */\n"
                     "strb r0, [r4, #8] /* 0x07fc32dc */\n"
                     "movs r0, #29 /* 0x07fc32de */\n"
                     "lsls r0, r0, #5 /* 0x07fc32e0 */\n"
                     "strh r0, [r4, #6] /* 0x07fc32e2 */\n"
                     "strh r0, [r4, #4] /* 0x07fc32e4 */\n"
                     "movs r0, #13 /* 0x07fc32e6 */\n"
                     "strh r0, [r4, #0] /* 0x07fc32e8 */\n"
                     "movs r6, #0 /* 0x07fc32ea */\n"
                     "strb r6, [r4, #10] /* 0x07fc32ec */\n"
                     "movs r0, #1 /* 0x07fc32ee */\n"
                     "strb r0, [r4, #9] /* 0x07fc32f0 */\n"
                     "ldrb r2, [r5, #10] /* 0x07fc32f2 */\n"
                     "cmp r2, #0 /* 0x07fc32f4 */\n"
                     "beq.n .L_get_or_initialize_cached_text_record_block_at_32bc_at_07fc32fa /* branch: eq, target at "
                     ".+4 */ /* 0x07fc32f6 */\n"
                     "movs r2, #22 /* 0x07fc32f8 */\n"
                     ".L_get_or_initialize_cached_text_record_block_at_32bc_at_07fc32fa:\n"
                     "strb r2, [r4, #11] /* 0x07fc32fa */\n"
                     "mov r0, r4 /* 0x07fc32fc */\n"
                     "adds r0, #12 /* 0x07fc32fe */\n"
                     "ldr r1, [pc, #68] /* 0x07fc3300 */\n"
                     "adds r1, #40	@ 0x28 /* 0x07fc3302 */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc3304 */
                     "movs r5, #43	@ 0x2b /* 0x07fc3308 */\n"
                     "strb r6, [r4, r5] /* 0x07fc330a */\n"
                     "add r6, sp, #8 /* 0x07fc330c */\n"
                     "mov r0, r6 /* 0x07fc330e */\n"
                     "bl validate_cached_text_payload_return_install_at_8fb0\n" /* at 0x07fc3310 */
                     "mov r1, r0 /* 0x07fc3314 */\n"
                     "ldrb r7, [r4, r5] /* 0x07fc3316 */\n"
                     "mov r0, r4 /* 0x07fc3318 */\n"
                     "adds r0, #9 /* 0x07fc331a */\n"
                     "adds r0, r0, r7 /* 0x07fc331c */\n"
                     "ldrb r6, [r6, #0] /* 0x07fc331e */\n"
                     "adds r2, r6, #1 /* 0x07fc3320 */\n"
                     "movs r3, #35	@ 0x23 /* 0x07fc3322 */\n"
                     "strb r2, [r0, r3] /* 0x07fc3324 */\n"
                     "adds r0, #35	@ 0x23 /* 0x07fc3326 */\n"
                     "ldr r2, [sp, #4] /* 0x07fc3328 */\n"
                     "strb r2, [r0, #1] /* 0x07fc332a */\n"
                     "adds r0, r0, #2 /* 0x07fc332c */\n"
                     "mov r2, r6 /* 0x07fc332e */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc3330 */
                     "adds r0, r6, r7 /* 0x07fc3334 */\n"
                     "adds r0, r0, #2 /* 0x07fc3336 */\n"
                     "strb r0, [r4, r5] /* 0x07fc3338 */\n"
                     "ldr r0, [pc, #4] /* 0x07fc333a */\n"
                     "ldr r0, [r0, #88]	@ 0x58 /* 0x07fc333c */\n"
                     "pop {r1, r2, r3, r4, r5, r6, r7, pc} /* 0x07fc333e */\n");
}
