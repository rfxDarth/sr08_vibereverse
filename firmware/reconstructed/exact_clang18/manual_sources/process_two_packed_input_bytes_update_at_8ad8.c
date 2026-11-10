/* Recovered behavior:
 * Process two packed input bytes, update state, and optionally append status.
 */
#include <stdint.h>

/*
 * Consume the low byte of each incoming word, send both bytes to the radio,
 * and append a status marker when the corresponding mode flag is set.
 */
__attribute__((used, naked, section(".text.process_two_packed_input_bytes_update_at_8ad8"))) uint16_t
process_two_packed_input_bytes_update_at_8ad8(uint32_t first_value __attribute__((unused)),
                                              uint32_t second_value __attribute__((unused))) {
    __asm__ volatile("push {r2, r3, r4, r5, r6, lr}\n"
                     "add r4, sp, #4\n"
                     "strb r1, [r4, #1]\n"
                     "strb r0, [r4, #0]\n"
                     "movs r5, #2\n"
                     "ldr r6, [pc, #48]\n"
                     ".Lsend_next_input_byte: bl wait_for_status_mask_0x02_set_minimum_8\n"
                     "ldrb r0, [r4, #0]\n"
                     "strh r0, [r6, #0]\n"
                     "adds r4, r4, #1\n"
                     "subs r5, r5, #1\n"
                     "lsls r0, r5, #16\n"
                     "bne .Lsend_next_input_byte\n"
                     "bl wait_for_status_mask_0x04_set_minimum_32\n"
                     "bl wait_for_status_mask_0x20_clear_minimum_8\n"
                     "ldr r4, [pc, #24]\n"
                     "ldrh r0, [r4, #44]\n"
                     "lsls r0, r0, #31\n"
                     "beq .Lreturn_result\n"
                     "ldr r0, [pc, #20]\n"
                     "movs r1, #234\n"
                     "movs r2, #1\n"
                     "bl format_and_send_uart_message\n"
                     ".Lreturn_result: ldrh r0, [r4, #0]\n"
                     "pop {r2, r3, r4, r5, r6, pc}\n");
}
