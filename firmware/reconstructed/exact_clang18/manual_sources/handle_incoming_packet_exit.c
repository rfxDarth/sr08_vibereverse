/* Shared continuation and epilogue for handle_incoming_packet.
 * Fixed-address Thumb transcription: 0x07fc725a-0x07fc7275. */
#include <stdint.h>
__attribute__((used, naked, section(".text.handle_incoming_packet_exit"))) void handle_incoming_packet_exit(void) {
    __asm__ volatile(".global handle_incoming_packet_exit_branch_at_07fc725a\n"
                     "handle_incoming_packet_exit_branch_at_07fc725a:\n"
                     "ldrb r0, [r2, #29] /* 07fc725a: ldrb	r0, [r2, #29] */\n"
                     "cmp r0, #0 /* 07fc725c: cmp	r0, #0 */\n"
                     "ldr r7, [sp, #28] /* 07fc725e: ldr	r7, [sp, #28] */\n"
                     "bne.n .L_handle_incoming_packet_exit_at_07fc7264 /* branch: ne, target at .+4 */ /* 07fc7260: "
                     "bne.n	0x7fc7264 */\n"
                     "b.n handle_incoming_packet_entry_branch_at_07fc7004 /* branch: always, target at .-606 */ /* "
                     "07fc7262: b.n	0x7fc7004 */\n"
                     ".L_handle_incoming_packet_exit_at_07fc7264:\n"
                     ".global handle_incoming_packet_exit_branch_at_07fc7264\n"
                     "handle_incoming_packet_exit_branch_at_07fc7264:\n"
                     "movs r0, #2 /* 07fc7264: movs	r0, #2 */\n"
                     "ldr r1, [sp, #32] /* 07fc7266: ldr	r1, [sp, #32] */\n"
                     "orrs r1, r0 /* 07fc7268: orrs	r1, r0 */\n"
                     "mov r0, r7 /* 07fc726a: mov	r0, r7 */\n"
                     "bl ke_state_set\n"
                     ".global handle_incoming_packet_exit_branch_at_07fc7270\n"
                     "handle_incoming_packet_exit_branch_at_07fc7270:\n"
                     "ldr r0, [sp, #36]	@ 0x24 /* 07fc7270: ldr	r0, [sp, #36]	@ 0x24 */\n"
                     ".global handle_incoming_packet_exit_branch_at_07fc7272\n"
                     "handle_incoming_packet_exit_branch_at_07fc7272:\n"
                     "add sp, #52 /* 07fc7272: add	sp, #52	@ 0x34 */\n"
                     "pop {r4, r5, r6, r7, pc} /* 07fc7274: pop	{r4, r5, r6, r7, pc} */\n");
}
