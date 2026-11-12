/* Fixed UART2 setup: SDK UART register layout and baud constant0x000101.
 * Preserve PRIMASK around the UART2 clock-enable update.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_uart.h"
enum {
    UART2_CLOCK_ENABLE_MASK = 0x40,
    UART2_BAUD_SETTING_921600 = 0x000101,
    UART_DIVISOR_LATCH_ACCESS = 0x80,
    UART_LINE_8N1 = 3,
    UART_AUTO_FLOW_CONTROL = 0x20,
    UART_REQUEST_TO_SEND = 2,
};
__attribute__((used, section(".text.quiesce_irq_source_wait_pending_bit_at_c4b0"))) void
quiesce_irq_source_wait_pending_bit_at_c4b0(void) {
    uint32_t saved_mask = __builtin_arm_rsr("primask");
    uint32_t enabled_mask = 1;
    __builtin_arm_wsr("primask", enabled_mask);
    __atomic_signal_fence(__ATOMIC_SEQ_CST);
    volatile uint16_t *clock_enable = (volatile uint16_t *)0x50000004;
    *clock_enable |= UART2_CLOCK_ENABLE_MASK;
    if (saved_mask != 0) {
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
        __builtin_arm_wsr("primask", enabled_mask);
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
    } else {
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
        __builtin_arm_wsr("primask", 0);
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
    }
    uart_t *uart = UART2;
    /* SDK uart_initialize reads USR once to clear a pending busy interrupt. */
    (void)uart->UART_USR_REGF;
    while ((uart->UART_USR_REGF & 1u) != 0) {}
    uart->UART_LCR_REGF |= UART_DIVISOR_LATCH_ACCESS;
    uart->UART_DLF_REGF = UART2_BAUD_SETTING_921600 & 0xff;
    uart->UART_RBR_THR_DLL_REGF = (UART2_BAUD_SETTING_921600 >> 8) & 0xff;
    uart->UART_IER_DLH_REGF = (UART2_BAUD_SETTING_921600 >> 16) & 0xff;
    uart->UART_LCR_REGF &= (uint16_t)~UART_DIVISOR_LATCH_ACCESS;
    uart->UART_LCR_REGF = UART_LINE_8N1;
    uart->UART_SFE_REGF = 1;
    uart->UART_MCR_REGF &= (uint16_t)~UART_AUTO_FLOW_CONTROL;
    uart->UART_MCR_REGF &= (uint16_t)~UART_REQUEST_TO_SEND;
    uart->UART_SRT_REGF = 0;
    uart->UART_STET_REGF = 0;
}
