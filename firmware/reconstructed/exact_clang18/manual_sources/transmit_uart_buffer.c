/* Transmit each byte through the UART data register, waiting for TX-ready
 * (status bit 5) before each write and for TX-done (bit 6) after it.
 */
#include <stdint.h>

#define UART_REGISTERS ((volatile uint16_t *)0x50001100u)
enum { UART_DATA = 0, UART_STATUS = 10, UART_TX_READY = 0x20, UART_TX_DONE = 0x40 };

void transmit_uart_buffer(const uint8_t *buffer, int32_t byte_count) {
    while (byte_count != 0) {
        uint8_t byte = *buffer;
        while ((UART_REGISTERS[UART_STATUS] & UART_TX_READY) == 0) {
        }
        UART_REGISTERS[UART_DATA] = byte;
        while ((UART_REGISTERS[UART_STATUS] & UART_TX_DONE) == 0) {
        }
        --byte_count;
        ++buffer;
    }
}
