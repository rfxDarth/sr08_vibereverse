/* Recovered behavior:
 * Initialize the output record, derive the callback result and status nibble, then branch to the continuation block.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.decode_packet_into_output_record_entry"))) void
decode_packet_into_output_record_entry(void) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr} /* 0x07fc046e */\n"
                     "movs r7, #2 /* 0x07fc0470 */\n"
                     "strb r7, [r0, #0] /* 0x07fc0472 */\n"
                     "movs r6, #1 /* 0x07fc0474 */\n"
                     "mov r4, r0 /* 0x07fc0476 */\n"
                     "strb r6, [r0, #1] /* 0x07fc0478 */\n"
                     "mov r5, r1 /* 0x07fc047a */\n"
                     "ldrb r0, [r1, #6] /* 0x07fc047c */\n"
                     "ldr r1, [pc, #380] /* 0x07fc047e */\n"
                     "ldr r1, [r1, #28] /* 0x07fc0480 */\n"
                     "blx r1 /* 0x07fc0482 */\n"
                     "movs r1, #42	@ 0x2a /* 0x07fc0484 */\n"
                     "strb r0, [r1, r4] /* 0x07fc0486 */\n"
                     "ldrb r0, [r5, #4] /* 0x07fc0488 */\n"
                     "movs r1, #0 /* 0x07fc048a */\n"
                     "lsls r0, r0, #28 /* 0x07fc048c */\n"
                     "lsrs r0, r0, #28 /* 0x07fc048e */\n"
                     "strb r0, [r4, #2] /* 0x07fc0490 */\n"
                     "movs r3, r0 /* 0x07fc0492 */\n"
                     "bl __ARM_common_switch8\n" /* at 0x07fc0494 */
                     "lsls r7, r0, #20 /* 0x07fc0498 */\n"
                     "lsrs r7, r0, #4 /* 0x07fc049a */\n"
                     "lsrs r0, r2, #20 /* 0x07fc049c */\n"
                     "lsrs r0, r2, #12 /* 0x07fc049e */\n"
                     "movs r0, r2 /* 0x07fc04a0 */\n"
                     "strb r1, [r4, #2] /* 0x07fc04a2 */\n"
                     "b.n decode_packet_into_output_record_block_at_04bc_branch_at_07fc04bc /* branch: always, target "
                     "at .+24 */ /* 0x07fc04a4 */\n");
}
