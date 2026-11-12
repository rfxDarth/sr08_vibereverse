/* The DA14585 UART driver interface V204 uses, from the Renesas DA145xx SDK
 * 6.0.18.1182.1: sdk/platform/driver/uart/uart.h, the uart_env_t of uart.c,
 * and the register bits of sdk/platform/include/da14585_586.h (Copyright (C)
 * Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). DMA and one-wire
 * support are off.
 */
#ifndef SR08_SDK_UART_H
#define SR08_SDK_UART_H

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_da14585.h"

#define UART_RBR_THR_DLL_REG                 (0x50001000) /* Receive Buffer Register */
#define UART2_RBR_THR_DLL_REG                (0x50001100) /* Receive Buffer Register */
#define ERBFI_dlh0                           (0x0001)
#define ETBEI_dlh1                           (0x0002)
#define PTIME_dlh7                           (0x0080)
#define UART_DR                              (0x0001)
#define UART_OE                              (0x0002)
#define UART_PE                              (0x0004)
#define UART_FE                              (0x0008)
#define UART_BI                              (0x0010)
#define UART_THRE                            (0x0020)
#define UART_RFE                             (0x0080)
#define UART_TFNF                            (0x0002)
#define UART_FIFOSE_RT                       (0x00C0)

/// UART registers
typedef struct                                      /*!< (@ 0x50001x00) UART Structure                                              */
{
    volatile uint16_t  UART_RBR_THR_DLL_REGF;       /*!< (@ 0x00000000) Receive Buffer Register                                     */
    uint16_t  RESERVED;
    volatile uint16_t  UART_IER_DLH_REGF;           /*!< (@ 0x00000004) Interrupt Enable Register                                   */
    uint16_t  RESERVED1;
    volatile uint16_t  UART_IIR_FCR_REGF;           /*!< (@ 0x00000008) Interrupt Identification Register/FIFO Control Register     */
    uint16_t  RESERVED2;
    volatile uint16_t  UART_LCR_REGF;               /*!< (@ 0x0000000C) Line Control Register                                       */
    uint16_t  RESERVED3;
    volatile uint16_t  UART_MCR_REGF;               /*!< (@ 0x00000010) Modem Control Register                                      */
    uint16_t  RESERVED4;
    volatile uint16_t  UART_LSR_REGF;               /*!< (@ 0x00000014) Line Status Register                                        */
    uint16_t  RESERVED5;
    volatile uint16_t  UART_MSR_REGF;               /*!< (@ 0x00000018) Modem Status Register                                       */
    uint16_t  RESERVED6;
    volatile uint16_t  UART_SCR_REGF;               /*!< (@ 0x0000001C) Scratchpad Register                                         */
    uint16_t  RESERVED7[9];
    volatile uint16_t  UART_SRBR_STHR0_REGF;        /*!< (@ 0x00000030) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED8;
    volatile uint16_t  UART_SRBR_STHR1_REGF;        /*!< (@ 0x00000034) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED9;
    volatile uint16_t  UART_SRBR_STHR2_REGF;        /*!< (@ 0x00000038) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED10;
    volatile uint16_t  UART_SRBR_STHR3_REGF;        /*!< (@ 0x0000003C) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED11;
    volatile uint16_t  UART_SRBR_STHR4_REGF;        /*!< (@ 0x00000040) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED12;
    volatile uint16_t  UART_SRBR_STHR5_REGF;        /*!< (@ 0x00000044) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED13;
    volatile uint16_t  UART_SRBR_STHR6_REGF;        /*!< (@ 0x00000048) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED14;
    volatile uint16_t  UART_SRBR_STHR7_REGF;        /*!< (@ 0x0000004C) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED15;
    volatile uint16_t  UART_SRBR_STHR8_REGF;        /*!< (@ 0x00000050) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED16;
    volatile uint16_t  UART_SRBR_STHR9_REGF;        /*!< (@ 0x00000054) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED17;
    volatile uint16_t  UART_SRBR_STHR10_REGF;       /*!< (@ 0x00000058) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED18;
    volatile uint16_t  UART_SRBR_STHR11_REGF;       /*!< (@ 0x0000005C) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED19;
    volatile uint16_t  UART_SRBR_STHR12_REGF;       /*!< (@ 0x00000060) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED20;
    volatile uint16_t  UART_SRBR_STHR13_REGF;       /*!< (@ 0x00000064) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED21;
    volatile uint16_t  UART_SRBR_STHR14_REGF;       /*!< (@ 0x00000068) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED22;
    volatile uint16_t  UART_SRBR_STHR15_REGF;       /*!< (@ 0x0000006C) Shadow Receive/Transmit Buffer Register                     */
    uint16_t  RESERVED23;
    volatile uint16_t  UART_FAR_REGF;               /*!< (@ 0x00000070) FIFO Access Register                                        */
    uint16_t  RESERVED24[5];
    volatile uint16_t  UART_USR_REGF;               /*!< (@ 0x0000007C) UART Status register.                                       */
    uint16_t  RESERVED25;
    volatile uint16_t  UART_TFL_REGF;               /*!< (@ 0x00000080) Transmit FIFO Level                                         */
    uint16_t  RESERVED26;
    volatile uint16_t  UART_RFL_REGF;               /*!< (@ 0x00000084) Receive FIFO Level.                                         */
    uint16_t  RESERVED27;
    volatile uint16_t  UART_SRR_REGF;               /*!< (@ 0x00000088) Software Reset Register.                                    */
    uint16_t  RESERVED28;
    volatile uint16_t  UART_SRTS_REGF;              /*!< (@ 0x0000008C) Shadow Request to Send                                      */
    uint16_t  RESERVED29;
    volatile uint16_t  UART_SBCR_REGF;              /*!< (@ 0x00000090) Shadow Break Control Register                               */
    uint16_t  RESERVED30;
    volatile uint16_t  UART_SDMAM_REGF;             /*!< (@ 0x00000094) Shadow DMA Mode                                             */
    uint16_t  RESERVED31;
    volatile uint16_t  UART_SFE_REGF;               /*!< (@ 0x00000098) Shadow FIFO Enable                                          */
    uint16_t  RESERVED32;
    volatile uint16_t  UART_SRT_REGF;               /*!< (@ 0x0000009C) Shadow RCVR Trigger                                         */
    uint16_t  RESERVED33;
    volatile uint16_t  UART_STET_REGF;              /*!< (@ 0x000000A0) Shadow TX Empty Trigger                                     */
    uint16_t  RESERVED34;
    volatile uint16_t  UART_HTX_REGF;               /*!< (@ 0x000000A4) Halt TX                                                     */
    uint16_t  RESERVED35;
    volatile uint16_t  UART_DMASA_REGF;             /*!< (@ 0x000000A8) DMA Software Acknowledge                                    */
    uint16_t  RESERVED36[11];
    volatile uint16_t  UART_DLF_REGF;               /*!< (@ 0x000000C0) Divisor Latch Fraction Register                             */
    uint16_t  RESERVED37[25];
    volatile uint16_t  UART_CPR_REGF;               /*!< (@ 0x000000F4) Component Parameter Register                                */
    uint16_t  RESERVED38;
    volatile uint16_t  UART_UCV_REGF;               /*!< (@ 0x000000F8) Component Version                                           */
    uint16_t  RESERVED39;
    volatile uint16_t  UART_CTR_REGF;               /*!< (@ 0x000000FC) Component Type Register                                     */
} uart_t;

/// UART Base Address
#define UART1   (uart_t *)  UART_RBR_THR_DLL_REG
/// UART2 Base Address
#define UART2   (uart_t *)  UART2_RBR_THR_DLL_REG

typedef enum {
    /// Disable
    UART_BIT_DIS                    = 0,

    /// Enable
    UART_BIT_EN                     = 1,
}UART_BIT_CFG;

typedef enum {
    /// No error
    UART_ERR_NO_ERROR               = 0,

    /// Busy Error
    UART_ERR_BUSY_ERROR             = 1,

    /// Overrun error bit
    UART_ERR_OVERRUN_ERROR          = UART_OE,

    /// Parity Error
    UART_ERR_PARITY_ERROR           = UART_PE,

    /// Framing Error
    UART_ERR_FRAMING_ERROR          = UART_FE,

    /// Break Interrupt
    UART_ERR_BREAK_ERROR            = UART_BI,

    /// Receiver FIFO Error
    UART_ERR_RX_FIFO_ERROR          = UART_RFE,
} UART_STATUS;

typedef enum {
    /// No interrupt pending
    UART_INT_NO_INT_PEND            = 1,

    /// THR empty interrupt
    UART_INT_THR_EMPTY              = 2,

    /// Received data available interrupt
    UART_INT_RECEIVED_AVAILABLE     = 4,

    /// Receiver line status interrupt
    UART_INT_RECEIVE_LINE_STAT      = 6,

    /// Busy detect interrupt
    UART_INT_BUSY_DETECTED          = 7,

    /// Timeout interrupt
    UART_INT_TIMEOUT                = 12,
} UART_INT;

typedef enum {
    /// Disable FIFO
    UART_FIFO_DIS           = 0,

    /// Enable FIFO
    UART_FIFO_EN            = 1,
} UART_FIFO_CFG;

typedef enum {
    UART_RX_FIFO_LEVEL_0    = 0,
    UART_RX_FIFO_LEVEL_1    = 1,
    UART_RX_FIFO_LEVEL_2    = 2,
    UART_RX_FIFO_LEVEL_3    = 3,
} UART_RX_FIFO_LEVEL;

typedef void (*uart_cb_t) (uint16_t data_cnt);
typedef void (*uart_err_cb_t) (uart_t *uart, uint8_t uart_err_status);

static inline __attribute__((always_inline)) uint8_t uart_read_rbr(uart_t *uart_id)
{
    return (uint8_t) GetWord16(&uart_id->UART_RBR_THR_DLL_REGF);
}

static inline __attribute__((always_inline)) void uart_thr_setf(uart_t *uart_id, uint8_t data)
{
    SetWord16(&uart_id->UART_RBR_THR_DLL_REGF, data);
}

static inline __attribute__((always_inline)) void uart_rxdata_intr_setf(uart_t *uart_id, UART_BIT_CFG erbfi_en)
{
    SetBits16(&uart_id->UART_IER_DLH_REGF, ERBFI_dlh0, erbfi_en);
}

static inline __attribute__((always_inline)) void uart_txdata_intr_setf(uart_t *uart_id, UART_BIT_CFG etbei_en)
{
    SetBits16(&uart_id->UART_IER_DLH_REGF, ETBEI_dlh1, etbei_en);
}

static inline __attribute__((always_inline)) void uart_thre_intr_setf(uart_t *uart_id, UART_BIT_CFG ptime_en)
{
    SetBits16(&uart_id->UART_IER_DLH_REGF, PTIME_dlh7, ptime_en);
}

static inline __attribute__((always_inline)) uint8_t uart_intr_id_getf(uart_t *uart_id)
{
    return (uint8_t) (GetWord16(&uart_id->UART_IIR_FCR_REGF) & 0xF);
}

static inline __attribute__((always_inline)) uint8_t uart_fifo_enabled_getf(uart_t *uart_id)
{
    return ((uint8_t) (GetWord16(&uart_id->UART_IIR_FCR_REGF) & UART_FIFOSE_RT) == 0xC0
            ? UART_FIFO_EN : UART_FIFO_DIS);
}

static inline __attribute__((always_inline)) uint16_t uart_thr_empty_getf(uart_t *uart_id)
{
    return GetBits16(&uart_id->UART_LSR_REGF, UART_THRE);
}

static inline __attribute__((always_inline)) uint16_t uart_data_ready_getf(uart_t *uart_id)
{
    return GetBits16(&uart_id->UART_LSR_REGF, UART_DR);
}

static inline __attribute__((always_inline)) uint16_t uart_rls_error_getf(uart_t *uart_id)
{
    return GetWord16(&uart_id->UART_LSR_REGF) & (UART_OE | UART_PE | UART_FE |
                                                 UART_BI | UART_RFE);
}

static inline __attribute__((always_inline)) uint16_t uart_txfifo_not_full_getf(uart_t *uart_id)
{
    return GetBits16(&uart_id->UART_USR_REGF, UART_TFNF);
}

/* uart.c */
typedef struct
{
    /// Pointer to the data to transmit
    const uint8_t           *tx_buffer;

    /// Length of data to transmit in Bytes
    uint16_t                tx_total_length;

    /// Current index of transmitted data
    uint16_t                tx_index;

    /// Pointer to the buffer where received data will be stored
    uint8_t                 *rx_buffer;

    /// Length of data to receive in Bytes
    uint16_t                rx_total_length;

    /// Current index of received data
    uint16_t                rx_index;

    /// UART error status callback
    uart_err_cb_t           err_cb;

    /// UART transmit callback
    uart_cb_t               tx_cb;

    /// UART receive callback
    uart_cb_t               rx_cb;

    /// UART interrupt priority
    uint8_t                 intr_priority;

    /// UART receive FIFO trigger level
    UART_RX_FIFO_LEVEL      rx_fifo_tr_lvl;


} uart_env_t;

void uart_rx_isr(uart_t *uart_id);

#define UART_ENV(id)        (&uartn_env[((id) == UART1 ? 0 : 1)])
extern uart_env_t uartn_env[2];

#endif
