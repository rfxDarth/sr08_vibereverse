/* UART2_Handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/driver/uart/uart.c, with the interrupt service routines it
 * calls (Copyright (C) Dialog Semiconductor / Renesas Electronics
 * Corporation; see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 * V204 never starts a UART transfer or registers a callback, so its link
 * folded uartn_env to zero: the TX loop and every callback are gone.
 */
#include "firmware/reconstructed/include/sr08_sdk_uart.h"

/// UART environment, retained in retention memory area.
uart_env_t uartn_env[2];

static void uart_tx_isr(uart_t *uart_id)
{
    uart_env_t *uart_env = UART_ENV(uart_id);

    // While there is available space, put data in thr_reg or FIFO
    while (uart_env->tx_index < uart_env->tx_total_length)
    {
        // If FIFO is enabled, exit if it is full
        if (uart_fifo_enabled_getf(uart_id))
        {
            if(!uart_txfifo_not_full_getf(uart_id))
            {
                return;
            }
        }
        // Else, exit if THR is full
        else if (!uart_thr_empty_getf(uart_id))
        {
            return;
        }
        // Send one byte
        uart_thr_setf(uart_id, uart_env->tx_buffer[uart_env->tx_index++]);
    }

    // Everything was sent
    // Disable TX interrupts
    uart_txdata_intr_setf(uart_id, UART_BIT_DIS);
    uart_thre_intr_setf(uart_id, UART_BIT_DIS);

    // Fire callback
    if (uart_env->tx_cb != NULL)
    {
        uart_env->tx_cb(uart_env->tx_total_length);
    }
}

static void uart_rx_timeout_isr(uart_t *uart_id)
{
    uart_env_t *uart_env = UART_ENV(uart_id);

    // Read already received data
    uart_rx_isr(uart_id);

    // Disable RX interrupts
    uart_rxdata_intr_setf(uart_id, UART_BIT_DIS);

    // Fire callback
    if (uart_env->rx_cb != NULL)
    {
        uart_env->rx_cb(uart_env->rx_index);
    }
}

static void uart_rls_isr(uart_t *uart_id)
{
    uart_env_t *uart_env = UART_ENV(uart_id);

    // Fire error callback
    if (uart_env->err_cb != NULL)
    {
        uart_env->err_cb(uart_id, uart_rls_error_getf(uart_id));
    }
}

static void uart_busy_isr(uart_t *uart_id)
{
    uart_env_t *uart_env = UART_ENV(uart_id);

    // Fire error callback
    if (uart_env->err_cb != NULL)
    {
        uart_env->err_cb(uart_id, UART_ERR_BUSY_ERROR);
    }
}

static void uart_intr_hndl(uart_t *uart_id)
{
    uint8_t int_id;
    for (;;)
    {
        int_id = uart_intr_id_getf(uart_id);
        switch (int_id)
        {
            // Timeout interrupt
            case UART_INT_TIMEOUT:
            {
                uart_rx_timeout_isr(uart_id);
                break;
            }
            // No other interrupt pending
            case UART_INT_NO_INT_PEND:
            {
                return;
            }
            // THR empty interrupt
            case UART_INT_THR_EMPTY:
            {
                uart_tx_isr(uart_id);
                break;
            }
            // Received data available interrupt
            case UART_INT_RECEIVED_AVAILABLE:
            {
                uart_rx_isr(uart_id);
                break;
            }
            // Receiver line status error interrupt
            case UART_INT_RECEIVE_LINE_STAT:
            {
                uart_rls_isr(uart_id);
                break;
            }
            // Busy detect interrupt
            case UART_INT_BUSY_DETECTED:
            {
                uart_busy_isr(uart_id);
                break;
            }
            default:
                break;
        }
    }
}

void UART2_Handler(void)
{
    uart_intr_hndl(UART2);
}
