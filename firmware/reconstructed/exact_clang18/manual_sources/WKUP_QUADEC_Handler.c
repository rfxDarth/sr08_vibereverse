/* WKUP_QUADEC_Handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/driver/wkupct_quadec/wkupct_quadec.c (DA14585 variant; Copyright (C)
 * Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), with
 * syscntl_use_highest_amba_clocks() inlined. As V204 has it, the link folded the
 * callbacks: QUADDEC_callback is never registered (so its branch only acknowledges
 * the interrupt), and WKUPCT_callback is only ever set to
 * conditionally_initialize_peripheral_and_schedule_service, which is called
 * directly once the callback is non-NULL.
 */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_da14585.h"

/* sdk/platform/include/da14585_586.h */
#define CLK_AMBA_REG        (0x50000000)
#define HCLK_DIV            (0x0003)
#define PCLK_DIV            (0x0030)
#define CLK_PER_REG         (0x50000004)
#define WAKEUPCT_ENABLE     (0x0010)
#define QUAD_ENABLE         (0x8000)
#define WKUP_CTRL_REG       (0x50000100)
#define WKUP_ENABLE_IRQ     (0x0080)
#define WKUP_RESET_IRQ_REG  (0x50000104)
#define QDEC_CTRL_REG       (0x50000200)
#define QD_IRQ_MASK         (0x0001)
#define QD_IRQ_CLR          (0x0002)
#define QD_IRQ_STATUS       (0x0004)

typedef void (*wakeup_handler_function_t)(void);
#define WKUPCT_callback (*(wakeup_handler_function_t *)(void *)((uint8_t *)&merged_globals_5650 + 0x48))

void conditionally_initialize_peripheral_and_schedule_service(void);

/* syscntl.c */
static void syscntl_use_highest_amba_clocks(void)
{
    SetBits16(CLK_AMBA_REG, PCLK_DIV, 0);
    SetBits16(CLK_AMBA_REG, HCLK_DIV, 0);
}

void WKUP_QUADEC_Handler(void)
{
    // Restore clock
    syscntl_use_highest_amba_clocks();

    // Note: in case of simultaneous triggering of quadrature decoder and wakeup controller, the quadrature decoder interrupt will be handled.
    if (GetBits16(CLK_PER_REG, QUAD_ENABLE) && GetBits16(QDEC_CTRL_REG, QD_IRQ_STATUS) && GetBits16(QDEC_CTRL_REG, QD_IRQ_MASK))
    {
        SetBits16(QDEC_CTRL_REG, QD_IRQ_CLR, 1);    // Write 1 to clear Quadrature Decoder interrupt
        SetBits16(QDEC_CTRL_REG, QD_IRQ_MASK, 0);   // Write 0 to mask the Quadrature Decoder interrupt
    }
    else
    {
        // since the interrupt does not come from the Quadrature controller, it is from the wakeup controller
        if (GetBits16(CLK_PER_REG, WAKEUPCT_ENABLE) && GetBits16(WKUP_CTRL_REG, WKUP_ENABLE_IRQ))
        {
            SetWord16(WKUP_RESET_IRQ_REG, 1);               // Acknowledge it
            SetBits16(WKUP_CTRL_REG, WKUP_ENABLE_IRQ, 0);   // No more interrupts of this kind
            if (WKUPCT_callback != NULL)
            {
                conditionally_initialize_peripheral_and_schedule_service();
            }
        }
    }
    return;
}
