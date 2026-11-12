/* Print a byte span as uppercase spaced hexadecimal, starting a new line
 * every 16 bytes and ending with one. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_format.h"

extern const uint8_t uart_newline_string[]; /* "\n" */

void format_byte_span_spaced_hexadecimal_line_at_b178(const uint8_t *bytes, uint32_t length) {
    uint32_t index;
    for (index = 0; index != length; ++index) {
        if ((index & 15) == 0)
            arch_printf(uart_newline_string);
        arch_printf((const uint8_t *)"%02X ", bytes[index]);
    }
    arch_printf(uart_newline_string);
}
