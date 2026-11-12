/* uart_rx_isr from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/driver/uart/uart.c (Copyright (C) Dialog Semiconductor /
 * Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The SDK makes it
 * static; it is external here so that it can be its own unit, and V204's link
 * internalised it (LTO_INTERNAL_UNITS). V204 never starts a UART transfer, so
 * the link folded uartn_env to zero: only the RX interrupt disable remains.
 */
#include "firmware/reconstructed/include/sr08_sdk_uart.h"

void uart_rx_isr(uart_t *uart_id)
{
    uart_env_t *uart_env = UART_ENV(uart_id);

    // Read the available data in RBR
    while (uart_env->rx_index < uart_env->rx_total_length)
    {
        // Read 1 byte
        if (uart_data_ready_getf(uart_id))
        {
            uart_env->rx_buffer[uart_env->rx_index++] = uart_read_rbr(uart_id);
        }
        // Return
        else
        {
            return;
        }
    }

    // All data have been read.
    // Disable RX interrupts
    uart_rxdata_intr_setf(uart_id, UART_BIT_DIS);

    // Fire callback
    if (uart_env->rx_cb != NULL)
    {
        uart_env->rx_cb(uart_env->rx_index);
    }
}
