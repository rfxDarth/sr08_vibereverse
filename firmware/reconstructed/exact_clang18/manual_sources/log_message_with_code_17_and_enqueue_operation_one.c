/* Log the find-phone key handler name with code 17, then enqueue operation one. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_record_dispatch.h"
#include "firmware/reconstructed/include/sr08_format.h"

extern const uint8_t uart_format_string_and_decimal[]; /* "%s,%d\n" */

void log_message_with_code_17_and_enqueue_operation_one(void) {
    arch_printf(uart_format_string_and_decimal, "find_phone_key_handle", 17);
    enqueue_typed_operation_record(1);
}
