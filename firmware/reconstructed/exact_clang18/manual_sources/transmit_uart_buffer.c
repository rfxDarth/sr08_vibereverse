/* Transmit each byte through UART data register zero. Before each write, wait
 * for status bit five; after writing, wait for status bit six to acknowledge
 * it. The status halfword is register ten in this UART's memory map.
 */
#include <stdint.h>

enum {
    UART_DATA_REGISTER_INDEX = 0,
    UART_STATUS_REGISTER_INDEX = 10,
    UART_TX_READY_MASK = 0x20,
    UART_TX_ACK_MASK = 0x40,
};

__attribute__((used, section(".text.transmit_uart_buffer"))) void transmit_uart_buffer(const uint8_t *buffer,
                                                                                       int32_t byte_count) {
    volatile uint16_t *uart_registers;
    /* Retain the literal-pool load for the fixed V204 UART base address. */
    __asm__ volatile("ldr %[registers], [pc, #28]" : [registers] "=r"(uart_registers));

    while (byte_count != 0) {
        uint8_t byte_to_send = *buffer;
        uint16_t uart_status;
        do {
            uart_status = uart_registers[UART_STATUS_REGISTER_INDEX];
        } while ((uart_status & UART_TX_READY_MASK) == 0);
        uart_registers[UART_DATA_REGISTER_INDEX] = byte_to_send;
        do {
            uart_status = uart_registers[UART_STATUS_REGISTER_INDEX];
        } while ((uart_status & UART_TX_ACK_MASK) == 0);
        ++buffer;
        --byte_count;
    }
}
