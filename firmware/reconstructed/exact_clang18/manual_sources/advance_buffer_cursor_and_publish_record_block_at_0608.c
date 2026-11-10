/*
 * Fixed-address fragment 2 of 2 for advance_buffer_cursor_and_publish_record.
 * The catalog groups these sections as one logical routine. Keep each section at its VMA and
 * preserve cross-section branch destinations; this fragment is not necessarily a standalone entry.
 *
 * Routine behavior: Advance the masked cursor in the stream state by its configured unit, issue
 * progress callbacks when cursor-distance thresholds are crossed, fill a 16-byte record with stream
 * metadata, publish it, and return the stream state.
 */
#include <stdint.h>
__attribute__((used, naked, section(".text.advance_buffer_cursor_and_publish_record_block_at_0608"))) void
advance_buffer_cursor_and_publish_record_block_at_0608(void) {
    __asm__ volatile(".global advance_buffer_cursor_and_publish_record_block_at_0608_branch_at_07fc0608\n"
                     "advance_buffer_cursor_and_publish_record_block_at_0608_branch_at_07fc0608:\n"
                     "ldrh r2, [r5, #8] /* 0x07fc0608 */\n"
                     "adds r1, r1, r2 /* 0x07fc060a */\n"
                     "lsls r1, r1, #5 /* 0x07fc060c */\n"
                     "lsrs r1, r1, #5 /* 0x07fc060e */\n"
                     "str r1, [r4, #8] /* 0x07fc0610 */\n"
                     "ldrh r2, [r5, #8] /* 0x07fc0612 */\n"
                     "ldr r1, [sp, #40]	@ 0x28 /* 0x07fc0614 */\n"
                     "subs r1, r2, r1 /* 0x07fc0616 */\n"
                     "cmp r1, r0 /* 0x07fc0618 */\n"
                     "bls.n .L_advance_buffer_cursor_and_publish_record_block_at_0608_at_07fc062a /* branch: ls, "
                     "target at .+16 */ /* 0x07fc061a */\n"
                     "movs r1, #1 /* 0x07fc061c */\n"
                     "ldr r0, [sp, #52]	@ 0x34 /* 0x07fc061e */\n"
                     "bl lld_evt_channel_next\n" /* at 0x07fc0620 */
                     "ldrh r0, [r5, #14] /* 0x07fc0624 */\n"
                     "adds r0, r0, #1 /* 0x07fc0626 */\n"
                     "strh r0, [r5, #14] /* 0x07fc0628 */\n"
                     ".L_advance_buffer_cursor_and_publish_record_block_at_0608_at_07fc062a:\n"
                     ".global advance_buffer_cursor_and_publish_record_block_at_0608_branch_at_07fc062a\n"
                     "advance_buffer_cursor_and_publish_record_block_at_0608_branch_at_07fc062a:\n"
                     "ldrh r1, [r5, #8] /* 0x07fc062a */\n"
                     "ldr r0, [r4, #8] /* 0x07fc062c */\n"
                     "bl __aeabi_uidiv\n" /* at 0x07fc062e */
                     "strh r1, [r6, #6] /* 0x07fc0632 */\n"
                     "ldrh r0, [r5, #8] /* 0x07fc0634 */\n"
                     "strh r0, [r6, #4] /* 0x07fc0636 */\n"
                     "ldrh r0, [r4, #16] /* 0x07fc0638 */\n"
                     "strh r0, [r6, #8] /* 0x07fc063a */\n"
                     "ldrh r0, [r5, #4] /* 0x07fc063c */\n"
                     "strh r0, [r6, #10] /* 0x07fc063e */\n"
                     "movs r0, #0 /* 0x07fc0640 */\n"
                     "strh r0, [r6, #12] /* 0x07fc0642 */\n"
                     "lsls r0, r1, #31 /* 0x07fc0644 */\n"
                     "lsrs r0, r0, #31 /* 0x07fc0646 */\n"
                     "strb r0, [r6, #14] /* 0x07fc0648 */\n"
                     "ldrh r0, [r5, #4] /* 0x07fc064a */\n"
                     "movs r1, #82	@ 0x52 /* 0x07fc064c */\n"
                     "muls r0, r1 /* 0x07fc064e */\n"
                     "adds r0, #142	@ 0x8e /* 0x07fc0650 */\n"
                     "strh r0, [r6, #16] /* 0x07fc0652 */\n"
                     "mov r0, r6 /* 0x07fc0654 */\n"
                     "bl ea_interval_insert\n" /* at 0x07fc0656 */
                     "ldr r0, [sp, #12] /* 0x07fc065a */\n"
                     "str r6, [r0, #52]	@ 0x34 /* 0x07fc065c */\n"
                     "mov r0, r4 /* 0x07fc065e */\n"
                     "add sp, #60 /* 0x07fc0660 */\n"
                     "pop {r4, r5, r6, r7, pc} /* 0x07fc0662 */\n");
}
