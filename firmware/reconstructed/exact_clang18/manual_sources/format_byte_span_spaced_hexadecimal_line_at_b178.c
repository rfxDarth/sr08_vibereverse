/* Recovered behavior:
 * Format a byte span as spaced hexadecimal, with line separators every 16 bytes.
 */
#include <stdint.h>

/* Print uppercase hexadecimal bytes, adding a line break every 16 bytes. */
__attribute__((used, naked, section(".text.format_byte_span_spaced_hexadecimal_line_at_b178"))) void
format_byte_span_spaced_hexadecimal_line_at_b178(const uint8_t *bytes, uint32_t length) {
    __asm__ volatile("push {r3, r4, r5, r6, r7, lr}\n"
                     "mov r4, r1\n"
                     "mov r5, r0\n"
                     "movs r6, #0\n"
                     ".set .Lhex_format_string, .+40\n"
                     "adr r7, .Lhex_format_string\n"
                     ".Lbyte_loop:\n"
                     "cmp r4, r6\n"
                     "beq .Lfinish_line\n"
                     "lsls r0, r6, #28\n"
                     "bne .Lformat_byte\n"
                     "ldr r0, [pc, #24]\n"
                     "bl format_and_send_uart_message\n"
                     ".Lformat_byte:\n"
                     "ldrb r1, [r5, r6]\n"
                     "mov r0, r7\n"
                     "bl format_and_send_uart_message\n"
                     "adds r6, r6, #1\n"
                     "b .Lbyte_loop\n"
                     ".Lfinish_line:\n"
                     "ldr r0, [pc, #4]\n"
                     "bl format_and_send_uart_message\n"
                     "pop {r3, r4, r5, r6, r7, pc}\n");
}
