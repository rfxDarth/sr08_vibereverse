#ifndef SR08_EXCEPTION_REPORT_H
#define SR08_EXCEPTION_REPORT_H

#include <stdint.h>

enum sr08_exception_report_kind { SR08_EXCEPTION_NMI = 0, SR08_EXCEPTION_HARDFAULT = 1 };

void print_exception_context_to_uart(enum sr08_exception_report_kind kind, const uint32_t *exception_context);

#endif
