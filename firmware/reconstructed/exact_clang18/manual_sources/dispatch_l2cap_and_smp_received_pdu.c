/*
 * Dispatch a received PDU according to connection state and its type at +8:
 *
 * - State 0x3f, or a PDU type other than 6: forward the full message to the
 *   L2CAP handler and return its result.
 * - Type 6 with the state high bit set: return status 2.
 * - Otherwise, if byte zero of the PDU is zero, pass the connection handle
 *   (destination >> 8) and the payload at PDU + 6 to the SMP handler.
 * - All other type-6 cases return zero.
 *
 * The inline Thumb transcription preserves V204's exact instruction layout.
 * Its short shared-return branch uses a section-relative target because the
 * continuation is 0x694 bytes before the branch instruction.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_state.h"

extern int l2cc_pdu_recv_ind_handler_func(uint32_t, void *, uint32_t, uint32_t);
extern void smpc_pdu_recv(uint32_t, void *);

__attribute__((naked, used, section(".text.dispatch_l2cap_and_smp_received_pdu"))) uint32_t
dispatch_l2cap_and_smp_received_pdu(uint32_t message, void *pdu, uint32_t destination, uint32_t source) {
    __asm__ volatile("push {r0, r1, r2, r3, r4, r5, r6, r7, lr}\n\t"
                     "sub sp, #4\n\t"
                     "mov r7, r3\n\t"
                     "mov r6, r2\n\t"
                     "mov r4, r1\n\t"
                     "mov r0, r2\n\t"
                     "bl ke_state_get\n\t"
                     "movs r5, #0\n\t"
                     "cmp r0, #63\n\t"
                     "beq .Lforward_to_l2cap\n\t"
                     "ldrh r1, [r4, #8]\n\t"
                     "cmp r1, #6\n\t"
                     "beq .Lhandle_type_six\n\t"
                     ".Lforward_to_l2cap: mov r3, r7\n\t"
                     "mov r2, r6\n\t"
                     "mov r1, r4\n\t"
                     "ldr r0, [sp, #4]\n\t"
                     "bl l2cc_pdu_recv_ind_handler_func\n\t"
                     "mov r5, r0\n\t"
                     ".Lreturn: mov r0, r5\n\t"
                     ".global V204_SHARED_RETURN_07fc1170\n\t"
                     "V204_SHARED_RETURN_07fc1170:\n\t"
                     ".set .Lshared_return_target, .-0x694\n\t"
                     "b.n .Lshared_return_target /* 0x07fc0adc */\n\t"
                     ".Lhandle_type_six: lsls r0, r0, #28\n\t"
                     "bpl .Lcheck_zero_pdu_byte\n\t"
                     "movs r5, #2\n\t"
                     "b .Lreturn\n\t"
                     ".Lcheck_zero_pdu_byte: ldrb r0, [r4, #0]\n\t"
                     "cmp r0, #0\n\t"
                     "bne .Lreturn\n\t"
                     "lsrs r0, r6, #8\n\t"
                     "adds r1, r4, #6\n\t"
                     "bl smpc_pdu_recv\n\t"
                     "b .Lreturn\n\t");
}
