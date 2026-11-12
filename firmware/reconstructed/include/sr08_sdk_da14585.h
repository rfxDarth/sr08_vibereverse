/* Register access macros and the registers V204's SDK drivers use, from the
 * Dialog/Renesas DA145xx SDK 6.0.18.1182.1, sdk/platform/include/da14585_586.h
 * (Copyright (C) Dialog Semiconductor; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#ifndef SR08_SDK_DA14585_H
#define SR08_SDK_DA14585_H

#include <stdint.h>

#define SHIF16(a) ((a)&0x0001? 0:(a)&0x0002? 1:(a)&0x0004? 2:(a)&0x0008? 3: \
                   (a)&0x0010? 4:(a)&0x0020? 5:(a)&0x0040? 6:(a)&0x0080? 7: \
                   (a)&0x0100? 8:(a)&0x0200? 9:(a)&0x0400?10:(a)&0x0800?11: \
                   (a)&0x1000?12:(a)&0x2000?13:(a)&0x4000?14:           15)

#define SHIF32(a)((a)&0x00000001? 0:(a)&0x00000002? 1:(a)&0x00000004? 2:(a)&0x00000008? 3:\
                  (a)&0x00000010? 4:(a)&0x00000020? 5:(a)&0x00000040? 6:(a)&0x00000080? 7:\
                  (a)&0x00000100? 8:(a)&0x00000200? 9:(a)&0x00000400?10:(a)&0x00000800?11:\
                  (a)&0x00001000?12:(a)&0x00002000?13:(a)&0x00004000?14:(a)&0x00008000?15:\
                  (a)&0x00010000?16:(a)&0x00020000?17:(a)&0x00040000?18:(a)&0x00080000?19:\
                  (a)&0x00100000?20:(a)&0x00200000?21:(a)&0x00400000?22:(a)&0x00800000?23:\
                  (a)&0x01000000?24:(a)&0x02000000?25:(a)&0x04000000?26:(a)&0x08000000?27:\
                  (a)&0x10000000?28:(a)&0x20000000?29:(a)&0x40000000?30:               31)

#define SetWord8(a,d)  (* ( volatile uint8_t*) (a)=(d) )
#define SetWord16(a,d) (* ( volatile uint16_t*)(a)=(d) )
#define SetWord32(a,d) (* ( volatile uint32_t*)(a)=(d) )
#define GetWord8(a)    (* ( volatile uint8_t*) (a) )
#define GetWord16(a)   (* ( volatile uint16_t*)(a) )
#define GetWord32(a)   (* ( volatile uint32_t*)(a) )
#define SetBits16(a,f,d) ( SetWord16( (a), (GetWord16(a)&(~(uint16_t)(f))) | (((uint16_t)(d))<<SHIF16((f))) ))
#define GetBits16(a,f) ( (GetWord16(a)&( (uint16_t)(f) )) >> SHIF16(f) )
#define SetBits32(a,f,d) ( SetWord32( (a), (GetWord32(a)&(~(uint32_t)(f))) | (((uint32_t)(d))<<SHIF32((f))) ))
#define GetBits32(a,f) ( (GetWord32(a)&( (uint32_t)(f) )) >> SHIF32(f) )

/* BLE core */
#define BLE_RADIOCNTL1_REG                   (0x40000074)
#define XRFSEL                               (0x1F0000)
#define BLE_CNTL2_REG                        (0x40000200)
#define BB_ONLY                              (0x40000)
#define SW_RPL_SPI                           (0x80000)

/* SPI */
#define SPI_CTRL_REG                         (0x50001200)
#define SPI_WORD                             (0x0180)
#define SPI_INT_BIT                          (0x2000)
#define SPI_RX_TX_REG0                       (0x50001202)
#define SPI_CTRL_REG1                        (0x50001208)
#define SPI_FIFO_MODE                        (0x0003)

/* General purpose ADC */
#define GP_ADC_CTRL_REG                      (0x50001500)
#define GP_ADC_EN                            (0x0001)
#define GP_ADC_START                         (0x0002)
#define GP_ADC_SEL                           (0x03C0)
#define GP_ADC_SIGN                          (0x0400)
#define GP_ADC_SE                            (0x0800)
#define GP_ADC_LDO_EN                        (0x4000)
#define GP_ADC_CTRL2_REG                     (0x50001502)
#define GP_ADC_DELAY_EN                      (0x0001)
#define GP_ADC_ATTN3X                        (0x0002)
#define GP_ADC_I20U                          (0x0008)
#define GP_ADC_CLEAR_INT_REG                 (0x50001508)
#define GP_ADC_RESULT_REG                    (0x5000150A)

/* GPIO */
#define P0_DATA_REG                          (0x50003000) /* P0 Data input / output register */
#define GPIO_RESET_IRQ_REG                   (0x5000140E) /* GPIO interrupt reset register */
#define RESET_GPIO0_IRQ                      (0x0001)

/* Interrupt numbers (IRQn_Type). The negative Cortex-M0 exception numbers
 * make it a signed one-byte type under -fshort-enums. */
typedef enum IRQn
{
    NonMaskableInt_IRQn  = -14,
    HardFault_IRQn       = -13,
    SVCall_IRQn          = -5,
    PendSV_IRQn          = -2,
    SysTick_IRQn         = -1,
    BLE_WAKEUP_LP_IRQn   =  0,
    BLE_GEN_IRQn         =  1,
    UART_IRQn            =  2,
    UART2_IRQn           =  3,
    I2C_IRQn             =  4,
    SPI_IRQn             =  5,
    ADC_IRQn             =  6,
    KEYBRD_IRQn          =  7,
    BLE_RF_DIAG_IRQn     =  8,
    RFCAL_IRQn           =  9,
    GPIO0_IRQn           = 10,
    GPIO1_IRQn           = 11,
    GPIO2_IRQn           = 12,
    GPIO3_IRQn           = 13,
    GPIO4_IRQn           = 14,
    SWTIM_IRQn           = 15,
    WKUP_QUADEC_IRQn     = 16,
    PCM_IRQn             = 17,
    SRC_IN_IRQn          = 18,
    SRC_OUT_IRQn         = 19,
    DMA_IRQn             = 20,
    RESERVED21_IRQn      = 21,
    RESERVED22_IRQn      = 22,
    RESERVED23_IRQn      = 23,
} IRQn_Type;

/* CMSIS 5.6.0 core_cm0.h: the NVIC, __NVIC_DisableIRQ() and __NVIC_ClearPendingIRQ(). */
typedef struct
{
    volatile uint32_t ISER[1U];
             uint32_t RESERVED0[31U];
    volatile uint32_t ICER[1U];
             uint32_t RESERVED1[31U];
    volatile uint32_t ISPR[1U];
             uint32_t RESERVED2[31U];
    volatile uint32_t ICPR[1U];
             uint32_t RESERVED3[31U];
             uint32_t RESERVED4[64U];
    volatile uint32_t IP[8U];
}  NVIC_Type;

#define SCS_BASE            (0xE000E000UL)
#define NVIC_BASE           (SCS_BASE +  0x0100UL)
#define NVIC                ((NVIC_Type      *)     NVIC_BASE     )

#define __DSB() __builtin_arm_dsb(0xF)
#define __ISB() __builtin_arm_isb(0xF)

static inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    NVIC->ICER[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __DSB();
    __ISB();
  }
}
#define NVIC_DisableIRQ             __NVIC_DisableIRQ

static inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    NVIC->ICPR[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}
#define NVIC_ClearPendingIRQ        __NVIC_ClearPendingIRQ

#endif
