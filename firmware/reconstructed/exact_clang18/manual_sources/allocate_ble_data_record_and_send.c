/* Recovered behavior:
 * Allocate a variable-length BLE data record, copy the payload, log and format its bytes, then
 * submit it; log allocation failure when no record is available.
 */

#include <stdint.h>
__attribute__((used, naked, section(".text.allocate_ble_data_record_and_send"))) void
allocate_ble_data_record_and_send(void) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr} /* 0x07fc3ab0 */\n"
                     "mov r4, r2 /* 0x07fc3ab2 */\n"
                     "str r1, [sp, #0] /* 0x07fc3ab4 */\n"
                     "mov r7, r0 /* 0x07fc3ab6 */\n"
                     "movs r6, #38	@ 0x26 /* 0x07fc3ab8 */\n"
                     "mov r0, r6 /* 0x07fc3aba */\n"
                     "bl find_keyed_record_value\n" /* at 0x07fc3abc */
                     "mov r5, r0 /* 0x07fc3ac0 */\n"
                     "mov r0, r6 /* 0x07fc3ac2 */\n"
                     "bl prf_get_task_from_id\n" /* at 0x07fc3ac4 */
                     "mov r1, r0 /* 0x07fc3ac8 */\n"
                     "mov r0, r4 /* 0x07fc3aca */\n"
                     "adds r0, #8 /* 0x07fc3acc */\n"
                     "uxth r3, r0 /* 0x07fc3ace */\n"
                     "ldr r0, [pc, #76] /* 0x07fc3ad0 */\n"
                     "movs r2, #4 /* 0x07fc3ad2 */\n"
                     "bl ke_msg_alloc\n" /* at 0x07fc3ad4 */
                     "cmp r0, #0 /* 0x07fc3ad8 */\n"
                     "beq.n .L_allocate_ble_data_record_and_send_block_at_3ab0_at_07fc3b18 /* branch: eq, target at "
                     ".+62 */ /* 0x07fc3ada */\n"
                     "mov r6, r0 /* 0x07fc3adc */\n"
                     "movs r0, #34	@ 0x22 /* 0x07fc3ade */\n"
                     "ldrb r1, [r5, r0] /* 0x07fc3ae0 */\n"
                     "adds r1, r1, #1 /* 0x07fc3ae2 */\n"
                     "strb r1, [r5, r0] /* 0x07fc3ae4 */\n"
                     "strh r4, [r6, #4] /* 0x07fc3ae6 */\n"
                     "strb r7, [r6, #6] /* 0x07fc3ae8 */\n"
                     "movs r0, #0 /* 0x07fc3aea */\n"
                     "strh r0, [r6, #2] /* 0x07fc3aec */\n"
                     "strb r0, [r6, #0] /* 0x07fc3aee */\n"
                     "adds r5, r6, #7 /* 0x07fc3af0 */\n"
                     "mov r0, r5 /* 0x07fc3af2 */\n"
                     "ldr r1, [sp, #0] /* 0x07fc3af4 */\n"
                     "mov r2, r4 /* 0x07fc3af6 */\n"
                     "bl __aeabi_memcpy\n"                          /* at 0x07fc3af8 */
                     "bl request_sensor_sample_then_scale_result\n" /* at 0x07fc3afc */
                     "mov r1, r0 /* 0x07fc3b00 */\n"
                     ".set .Ladr_07fc3b02, .+34\n"
                     "adr r0, .Ladr_07fc3b02 /* 0x07fc3b02 -> 0x07fc3b24 */\n"
                     "bl format_and_send_uart_message\n" /* at 0x07fc3b04 */
                     "mov r0, r5 /* 0x07fc3b08 */\n"
                     "mov r1, r4 /* 0x07fc3b0a */\n"
                     "bl format_byte_span_spaced_hexadecimal_line_at_b178\n" /* at 0x07fc3b0c */
                     "mov r0, r6 /* 0x07fc3b10 */\n"
                     "bl ke_msg_send\n" /* at 0x07fc3b12 */
                     "pop {r3, r4, r5, r6, r7, pc} /* 0x07fc3b16 */\n"
                     ".L_allocate_ble_data_record_and_send_block_at_3ab0_at_07fc3b18:\n"
                     ".set .Ladr_07fc3b18, .+24\n"
                     "adr r0, .Ladr_07fc3b18 /* 0x07fc3b18 -> 0x07fc3b30 */\n"
                     "bl format_and_send_uart_message\n" /* at 0x07fc3b1a */
                     "pop {r3, r4, r5, r6, r7, pc} /* 0x07fc3b1e */\n");
}
