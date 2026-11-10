/* Send a four-byte type-9 message when the requested kernel task is idle.
 * A nonzero task state takes V204's fatal path after writing timeout/error
 * values to MMIO; the message payload starts with byte one.
 */
#include <stdint.h>

__attribute__((naked, noinline, used, section(".text.send_type_9_message_if_task_state_zero"))) uint32_t
send_type_9_message_if_task_state_zero(uint32_t unused_context __attribute__((unused)),
                                       uint32_t unused_message_context __attribute__((unused)),
                                       uint32_t task_id __attribute__((unused))) {
    __asm__ volatile("push {r4, lr}\n"
                     "mov r0, r2\n"
                     "bl ke_state_get\n"
                     "cmp r0, #0\n"
                     "beq .Lsend_message\n"
                     "ldr r0, [pc, #700]\n"
                     "movs r1, #200\n"
                     "strh r1, [r0, #0]\n"
                     "ldr r0, [pc, #700]\n"
                     "movs r1, #8\n"
                     "strh r1, [r0, #0]\n"
                     ".Lfatal_wait: b .Lfatal_wait\n"
                     ".Lsend_message: ldr r0, [pc, #24]\n"
                     "movs r1, #9\n"
                     "movs r2, #4\n"
                     "movs r4, #1\n"
                     "mov r3, r4\n"
                     "bl ke_msg_alloc\n"
                     "strb r4, [r0, #0]\n"
                     "bl ke_msg_send\n"
                     "movs r0, #0\n"
                     "pop {r4, pc}\n");
}
