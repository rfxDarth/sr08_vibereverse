/*
 * Narrow the requested index to one byte and form its one-hot mask relative
 * to index 10. Clear that mask from the 16-bit status word, derive the
 * corresponding bit position from the encoded mask, then set that position's
 * one-hot bit in the same word. Finally write `1 << index` to the
 * memory-mapped register whose pointer is loaded from the literal at
 * 0x07fc1e44. The loop and arithmetic below are the exact V204 encoding of
 * the bit-position calculation; keep them visible when reviewing the
 * boundary behavior of the Thumb variable shifts.
 */
#include "firmware/reconstructed/include/sr08_hot_bits.h"

__attribute__((used, naked, section(".text.update_selected_hot_bit_associated_bit_at_1d44"))) void
update_selected_hot_bit_associated_bit_at_1d44(uint32_t bit_index __attribute__((unused))) {
    __asm__ volatile("push {r4, r5, r6, lr}\n"
                     "uxtb r0, r0\n"
                     "mov r3, r0\n"
                     "subs r3, #10\n"
                     "movs r1, #1\n"
                     "mov r2, r1\n"
                     "lsls r2, r3\n"
                     "uxth r3, r2\n"
                     "ldr r4, [pc, #40]\n"
                     "adds r4, r3, r4\n"
                     "eors r4, r3\n"
                     "lsrs r6, r4, #1\n"
                     "ldr r3, [pc, #36]\n"
                     "ldrh r4, [r3, #0]\n"
                     "movs r5, #0\n"
                     ".Lcount_mask_bit_position: lsls r6, r6, #16\n"
                     "beq .Lapply_status_mask\n"
                     "adds r5, r5, #1\n"
                     "lsrs r6, r6, #17\n"
                     "b .Lcount_mask_bit_position\n"
                     ".Lapply_status_mask: bics r4, r2\n"
                     "uxth r2, r5\n"
                     "mov r5, r1\n"
                     "lsls r5, r2\n"
                     "orrs r5, r4\n"
                     "strh r5, [r3, #0]\n"
                     "lsls r1, r0\n"
                     "ldr r0, [pc, #200]\n"
                     "str r1, [r0, #0]\n"
                     "pop {r4, r5, r6, pc}\n");
}
