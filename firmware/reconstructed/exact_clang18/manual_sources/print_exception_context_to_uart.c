/* Print a HardFault or NMI banner and the eight stacked registers as
 * "R0 =0x........\r\n" lines over UART, pausing after each line. If the
 * UART transmitter is not yet enabled, wait for it to drain first. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_exception_report.h"

#define UART_CONTROL_REGISTER ((volatile uint16_t *)0x5000000au)

enum {
    UART_CONTROL_ENABLED = 0x80,
    UART_STATUS_OFFSET = 5,
    UART_STATUS_IDLE = 0x80,
    UART_CONTROL_MODE_MASK = 3,
    EXCEPTION_LINE_DELAY = 3000,
    STACKED_REGISTER_COUNT = 8,
};

extern const char exception_register_names[STACKED_REGISTER_COUNT][4];
extern void quiesce_irq_source_wait_pending_bit_at_c4b0(void);
extern void transmit_uart_buffer(const uint8_t *buffer, int32_t byte_count);
extern void arch_asm_delay_us(uint32_t iterations);

void print_exception_context_to_uart(enum sr08_exception_report_kind kind, const uint32_t *exception_context) {
    uint8_t line[16];
    uint32_t index;
    if (!(*UART_CONTROL_REGISTER & UART_CONTROL_ENABLED)) {
        while (!(UART_CONTROL_REGISTER[UART_STATUS_OFFSET] & UART_STATUS_IDLE)) {
        }
        *UART_CONTROL_REGISTER &= ~UART_CONTROL_MODE_MASK;
    }
    quiesce_irq_source_wait_pending_bit_at_c4b0();
    if (kind)
        transmit_uart_buffer((const uint8_t *)"\n--- HF STATUS\r\n", 16);
    else
        transmit_uart_buffer((const uint8_t *)"\n--- NMI STATUS\r\n", 17);
    arch_asm_delay_us(EXCEPTION_LINE_DELAY);
    for (index = 0; index != STACKED_REGISTER_COUNT; index++) {
        int32_t value;
        uint32_t digit;
        line[4] = '0';
        line[5] = 'x';
        line[3] = '=';
        line[0] = exception_register_names[index][0];
        line[2] = exception_register_names[index][2];
        line[1] = exception_register_names[index][1];
        value = (int32_t)exception_context[index];
        for (digit = 13; digit >= 6; digit--) {
            uint32_t nibble = value & 15;
            line[digit] = nibble < 10 ? nibble + '0' : nibble + 'a' - 10;
            value >>= 4;
        }
        line[14] = '\r';
        line[15] = '\n';
        transmit_uart_buffer(line, sizeof(line));
        arch_asm_delay_us(EXCEPTION_LINE_DELAY);
    }
}
