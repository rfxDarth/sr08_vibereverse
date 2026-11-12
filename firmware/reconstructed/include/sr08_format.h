#ifndef SR08_FORMAT_H
#define SR08_FORMAT_H

#include <stdint.h>

/* Format and send a bounded message through the firmware's UART output path. */
extern void arch_printf(const uint8_t *format, ...);

#endif
