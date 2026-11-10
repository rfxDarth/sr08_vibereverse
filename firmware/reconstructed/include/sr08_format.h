#ifndef SR08_FORMAT_H
#define SR08_FORMAT_H

#include <stdint.h>

/* Format and send a bounded message through the firmware's UART output path. */
extern uint32_t format_and_send_uart_message(const uint8_t *format, ...);

#endif
