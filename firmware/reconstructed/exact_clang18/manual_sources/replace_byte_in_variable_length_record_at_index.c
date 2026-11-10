/* Recovered behavior:
 * Validate an index below eight, look up the variable-length record, copy its bytes to a local
 * buffer, replace the selected byte, and upsert the modified record. Invalid indices or missing
 * record data enter the firmware's fatal loop.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.replace_byte_in_variable_length_record_at_index"))) void
replace_byte_in_variable_length_record_at_index(void) {
    __asm__ volatile("push {r4, r5, r6, r7, lr} /* 0x07fc5c44 */\n"
                     "sub sp, #20 /* 0x07fc5c46 */\n"
                     "cmp r0, #8 /* 0x07fc5c48 */\n"
                     "bcs.n .L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5c88 /* branch: "
                     "cs, target at .+62 */ /* 0x07fc5c4a */\n"
                     "mov r5, r2 /* 0x07fc5c4c */\n"
                     "mov r4, r1 /* 0x07fc5c4e */\n"
                     "mov r6, r0 /* 0x07fc5c50 */\n"
                     "add r7, sp, #16 /* 0x07fc5c52 */\n"
                     "add r2, sp, #12 /* 0x07fc5c54 */\n"
                     "mov r0, r1 /* 0x07fc5c56 */\n"
                     "mov r1, r7 /* 0x07fc5c58 */\n"
                     "bl find_measurement_record_by_id\n" /* at 0x07fc5c5a */
                     "ldrh r7, [r7, #0] /* 0x07fc5c5e */\n"
                     "cmp r7, #0 /* 0x07fc5c60 */\n"
                     "beq.n .L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5c96 /* branch: "
                     "eq, target at .+52 */ /* 0x07fc5c62 */\n"
                     "ldr r1, [sp, #12] /* 0x07fc5c64 */\n"
                     "cmp r1, #0 /* 0x07fc5c66 */\n"
                     "beq.n .L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5ca4 /* branch: "
                     "eq, target at .+60 */ /* 0x07fc5c68 */\n"
                     "str r5, [sp, #0] /* 0x07fc5c6a */\n"
                     "add r5, sp, #4 /* 0x07fc5c6c */\n"
                     "mov r0, r5 /* 0x07fc5c6e */\n"
                     "mov r2, r7 /* 0x07fc5c70 */\n"
                     "bl __aeabi_memcpy\n" /* at 0x07fc5c72 */
                     "ldr r0, [sp, #0] /* 0x07fc5c76 */\n"
                     "strb r0, [r5, r6] /* 0x07fc5c78 */\n"
                     "mov r0, r4 /* 0x07fc5c7a */\n"
                     "mov r1, r7 /* 0x07fc5c7c */\n"
                     "mov r2, r5 /* 0x07fc5c7e */\n"
                     "bl upsert_variable_length_list_record\n" /* at 0x07fc5c80 */
                     "add sp, #20 /* 0x07fc5c84 */\n"
                     "pop {r4, r5, r6, r7, pc} /* 0x07fc5c86 */\n"
                     ".L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5c88:\n"
                     "ldr r0, [pc, #288] /* 0x07fc5c88 */\n"
                     "movs r1, #200	@ 0xc8 /* 0x07fc5c8a */\n"
                     "strh r1, [r0, #0] /* 0x07fc5c8c */\n"
                     "ldr r0, [pc, #288] /* 0x07fc5c8e */\n"
                     "movs r1, #8 /* 0x07fc5c90 */\n"
                     "strh r1, [r0, #0] /* 0x07fc5c92 */\n"
                     ".L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5c94:\n"
                     "b.n .L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5c94 /* branch: "
                     "always, target at .+0 */ /* 0x07fc5c94 */\n"
                     ".L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5c96:\n"
                     "ldr r0, [pc, #276] /* 0x07fc5c96 */\n"
                     "movs r1, #200	@ 0xc8 /* 0x07fc5c98 */\n"
                     "strh r1, [r0, #0] /* 0x07fc5c9a */\n"
                     "ldr r0, [pc, #272] /* 0x07fc5c9c */\n"
                     "movs r1, #8 /* 0x07fc5c9e */\n"
                     "strh r1, [r0, #0] /* 0x07fc5ca0 */\n"
                     ".L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5ca2:\n"
                     "b.n .L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5ca2 /* branch: "
                     "always, target at .+0 */ /* 0x07fc5ca2 */\n"
                     ".L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5ca4:\n"
                     "ldr r0, [pc, #260] /* 0x07fc5ca4 */\n"
                     "movs r1, #200	@ 0xc8 /* 0x07fc5ca6 */\n"
                     "strh r1, [r0, #0] /* 0x07fc5ca8 */\n"
                     "ldr r0, [pc, #260] /* 0x07fc5caa */\n"
                     "movs r1, #8 /* 0x07fc5cac */\n"
                     "strh r1, [r0, #0] /* 0x07fc5cae */\n"
                     ".L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5cb0:\n"
                     "b.n .L_replace_byte_in_variable_length_record_at_index_block_at_5c44_at_07fc5cb0 /* branch: "
                     "always, target at .+0 */ /* 0x07fc5cb0 */\n");
}
