/* Log a caller-supplied message with code 17, then enqueue operation one. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_record_dispatch.h"
#include "firmware/reconstructed/include/sr08_format.h"

__attribute__((used, section(".text.log_message_with_code_17_and_enqueue_operation_one"))) void
log_message_with_code_17_and_enqueue_operation_one(void) {
    const char *format;
    const char *message;
    /* This ADR reaches the format text in the adjacent literal-data section. */
    __asm__ volatile("ldr %[format], [pc, #16]\n\t"
                     ".set .Lsr08_message_text, .+20\n\t"
                     "adr %[message], .Lsr08_message_text"
                     : [format] "=r"(format), [message] "=r"(message));
    format_and_send_uart_message((const uint8_t *)format, message, 17);
    enqueue_typed_operation_record(1);
}
