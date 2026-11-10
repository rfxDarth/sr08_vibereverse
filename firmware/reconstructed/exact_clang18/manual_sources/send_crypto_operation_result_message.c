/*
 * Send a type-10, 65-byte crypto result message. Selector 1 fills 32 random
 * bytes after the status byte; selector 2 writes the point-multiplication
 * output there. Selector 0 and unsupported values skip the helper calls.
 * Keep the recovered register-save and call sequence for byte-exact output.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_message.h"
extern uint8_t ba431_get_rand(uint32_t, uint8_t *, uint32_t);
extern uint8_t PK_PointMult(uint32_t, uint32_t, uint8_t *);

__attribute__((naked, used, section(".text.send_crypto_operation_result_message"))) uint64_t
send_crypto_operation_result_message(uint32_t operation_selector, uint32_t operation_input_1,
                                     uint32_t operation_input_2) {
    __asm__ volatile(
        "push {r0, r1, r2, r4, r5, r6, r7, lr}\n\t"
        "movs r5, #0\n\t"
        "mov r7, r2\n\t"
        "mov r6, r0\n\t"
        "movs r3, #65\n\t"
        "mov r2, r5\n\t"
        "mov r1, r5\n\t"
        "movs r0, #10\n\t"
        "bl ke_msg_alloc\n\t"
        "mov r4, r0\n\t"
        "cmp r6, #0\n\t" /* Selector zero sends the allocated message as-is. */
        "beq .Lsend_result\n\t"
        "cmp r6, #1\n\t"
        "beq .Lfill_random_bytes\n\t"
        "cmp r6, #2\n\t"
        "bne .Lsend_result\n\t"
        "b .Lmultiply_point\n\t"
        ".Lfill_random_bytes: movs r2, #32\n\t" /* Selector one requests 32 random bytes. */
        "adds r1, r4, #1\n\t"
        "movs r0, #0\n\t"
        "bl ba431_get_rand\n\t"
        "b .Lstore_operation_status\n\t"
        ".Lmultiply_point: adds r2, r4, #1\n\t" /* Selector two writes point-multiplication bytes after status. */
        "mov r1, r7\n\t"
        "ldr r0, [sp, #4]\n\t"
        "bl PK_PointMult\n\t"
        ".Lstore_operation_status: strb r0, [r4, #0]\n\t"
        ".Lsend_result: mov r0, r4\n\t"
        "bl ke_msg_send\n\t"
        "mov r0, r5\n\t"
        "pop {r1, r2, r3, r4, r5, r6, r7, pc}\n\t");
}
