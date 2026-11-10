/* Dispatch three recognized notification codes and forward other payloads. */
#include <stdint.h>

__attribute__((used, naked, section(".text.dispatch_three_recognized_notification_codes_forward_at_09dc"))) int
dispatch_three_recognized_notification_codes_forward_at_09dc(uint32_t unused_message, const uint8_t *notification,
                                                             uint32_t unused_length, uint32_t error_context) {
    __asm__ volatile("push {r4, r5, r6, lr}\n"
                     "ldrb r0, [r1, #0]\n"
                     "movs r5, #0\n"
                     "mov r4, r1\n"
                     "cmp r0, #1\n"
                     "beq .Lhandle_link_reset_notification\n"
                     "cmp r0, #29\n"
                     "beq .Lhandle_platform_reset_notification\n"
                     "cmp r0, #43\n"
                     "beq .Lhandle_key_creation_notification\n"
                     "movs r2, #64\n"
                     "mov r1, r3\n"
                     "bl gapm_send_error_evt\n"
                     ".Lreturn_notification_status: mov r0, r5\n"
                     "pop {r4, r5, r6, pc}\n"
                     ".Lhandle_link_reset_notification: bl rwble_hl_reset\n"
                     "ldr r0, [pc, #100]\n"
                     "movs r5, #1\n"
                     "str r4, [r0, #0]\n"
                     "ldr r0, [pc, #116]\n"
                     "bl gapm_basic_hci_cmd_send\n"
                     "b .Lreturn_notification_status\n"
                     ".Lhandle_platform_reset_notification: ldr r0, [pc, #112]\n"
                     "bl platform_reset\n"
                     "b .Lreturn_notification_status\n"
                     ".Lhandle_key_creation_notification: ldr r0, [pc, #108]\n"
                     "ldr r1, [r0, #0]\n"
                     "cmp r1, #0\n"
                     "bne .Lreturn_notification_status\n"
                     "movs r1, #1\n"
                     "str r1, [r0, #0]\n"
                     "ldr r0, [pc, #100]\n"
                     "bl smpm_ecdh_key_create\n"
                     "b .Lreturn_notification_status\n");
}
