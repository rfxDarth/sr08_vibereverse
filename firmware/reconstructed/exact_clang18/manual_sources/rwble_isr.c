/* rwble_isr and its event handlers from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/rwble/rwble.c (USE_POWER_OPTIMIZATIONS variant; Copyright (C)
 * RivieraWaves / Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's
 * configuration: DA14585, BLE_APP_PRESENT (no h4tl/gtl), BLE_METRICS and
 * WLAN_COEX_ENABLED off, the RCX20 low-power clock (arch_clk_is_RCX20() folds
 * to true), ASSERT_WARNING compiled out. arch_rwble_last_event and
 * set_boost_low_vbat1v_overhead are fields of merged_globals_5650. V204's
 * vbat read is its adc_get_p0_1_sample (adc_get_vbat_sample(true) in the SDK).
 */
#include <stdbool.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_da14585.h"

#define __STATIC_INLINE static inline
#define __STATIC_FORCEINLINE static inline __attribute__((always_inline))

#define BLE_INTSTAT_REG (0x40000010)
#define BLE_INTACK_REG (0x40000018)
#define GP_CONTROL_REG (0x50003308)
#define ANA_STATUS_REG (0x5000002A)
#define BLE_WAKEUP_REQ (0x0001)
#define BOOST_SELECTED (0x0200)
#define GP_ADC_EN (0x0001)

#define BLE_CSCNTINTSTAT_BIT ((uint32_t)0x00000001)
#define BLE_CSCNTINTACK_BIT ((uint32_t)0x00000001)
#define BLE_RXINTSTAT_BIT ((uint32_t)0x00000002)
#define BLE_SLPINTSTAT_BIT ((uint32_t)0x00000004)
#define BLE_SLPINTACK_BIT ((uint32_t)0x00000004)
#define BLE_EVENTINTSTAT_BIT ((uint32_t)0x00000008)
#define BLE_CRYPTINTSTAT_BIT ((uint32_t)0x00000010)
#define BLE_ERRORINTSTAT_BIT ((uint32_t)0x00000020)
#define BLE_GROSSTGTIMINTSTAT_BIT ((uint32_t)0x00000040)
#define BLE_GROSSTGTIMINTACK_BIT ((uint32_t)0x00000040)
#define BLE_FINETGTIMINTSTAT_BIT ((uint32_t)0x00000080)
#define BLE_FINETGTIMINTACK_BIT ((uint32_t)0x00000080)
#define BLE_EVENTAPFAINTSTAT_BIT ((uint32_t)0x00000100)
#define BLE_SWINTSTAT_BIT ((uint32_t)0x00000200)

#define RCX_CALIB_TIME 20

/* arch_api.h */
enum { BLE_EVT_SLP, BLE_EVT_CSCNT, BLE_EVT_TX, BLE_EVT_RX, BLE_EVT_END };
/* arch.h */
enum { NOT_MEASURED = 0, APPLY_OVERHEAD, NO_OVERHEAD };

/* Vendor fields of merged_globals_5650 (arch_main.c / arch_sleep.c globals). */
struct arch_rwble_state {
    uint8_t rcx_cal_in_progress;
    uint8_t reserved_01_to_02[2];
    uint8_t arch_rwble_last_event;
    uint8_t set_boost_low_vbat1v_overhead;
};
#define ARCH_RWBLE_STATE ((struct arch_rwble_state *)(void *)&merged_globals_5650)
#define arch_rwble_last_event (ARCH_RWBLE_STATE->arch_rwble_last_event)
#define set_boost_low_vbat1v_overhead (ARCH_RWBLE_STATE->set_boost_low_vbat1v_overhead)

/* ROM */
extern void ea_finetimer_isr(void);
extern void ea_sw_isr(void);
extern void lld_evt_rx_isr(void);
extern void lld_evt_end_isr(bool apfm);
extern void lld_evt_timer_isr(void);
extern void lld_crypt_isr(void);
extern void rwip_wakeup(void);
extern void rwip_wakeup_end(void);
extern void rf_reinit(void);
/* arch_system.c; V204's calibrate_rcx20 has RCX_CALIB_TIME folded in. */
extern void calibrate_rcx20(void);
#define calibrate_rcx20(cal_time) (calibrate_rcx20)()
extern uint32_t adc_get_p0_1_sample(void);

__STATIC_FORCEINLINE uint32_t ble_intstat_get(void) { return GetWord32(BLE_INTSTAT_REG); }
__STATIC_FORCEINLINE void ble_intack_clear(uint32_t value) { SetWord32(BLE_INTACK_REG, value); }
__STATIC_FORCEINLINE bool arch_clk_is_RCX20(void) { return true; }

__STATIC_INLINE void dlg_slp_isr(void)
{
    SetBits16(GP_CONTROL_REG, BLE_WAKEUP_REQ, 0);   //just to be sure
    rwip_wakeup();
    rf_reinit();
    if (arch_clk_is_RCX20())
    {
        calibrate_rcx20(RCX_CALIB_TIME);
    }
    arch_rwble_last_event = BLE_EVT_SLP;
    if (GetBits16(ANA_STATUS_REG, BOOST_SELECTED) == 1)
    {
        if (set_boost_low_vbat1v_overhead == NOT_MEASURED)
        {
            set_boost_low_vbat1v_overhead = APPLY_OVERHEAD;
            if (GetBits16(GP_ADC_CTRL_REG, GP_ADC_EN) == 0)
            {
                uint32_t adc_sample = adc_get_p0_1_sample();
                if (adc_sample > 0x22C) // higher than 1V
                    set_boost_low_vbat1v_overhead = NO_OVERHEAD;
            }
        }
    }
}

__STATIC_INLINE void dlg_cscnt_isr(void)
{
    rwip_wakeup_end();
    ea_finetimer_isr();
    arch_rwble_last_event = BLE_EVT_CSCNT;
}

__STATIC_INLINE void dlg_finetgtim_isr(void)
{
    ea_finetimer_isr();
    if (arch_clk_is_RCX20())
    {
        calibrate_rcx20(RCX_CALIB_TIME);
    }
}

__STATIC_INLINE void dlg_rx_isr(void)
{
    lld_evt_rx_isr();
}

__STATIC_INLINE void dlg_event_isr(void)
{
    lld_evt_end_isr(false);
    arch_rwble_last_event = BLE_EVT_END;
}

__STATIC_INLINE void dlg_eventapfa_isr(void)
{
    lld_evt_end_isr(true);
}

__STATIC_INLINE void dlg_sw_isr(void)
{
    ea_sw_isr();
}

__STATIC_INLINE void dlg_grosstgtim_isr(void)
{
    lld_evt_timer_isr();
}

__STATIC_INLINE void dlg_crypt_isr(void)
{
    lld_crypt_isr();
}

__STATIC_INLINE void dlg_error_isr(void)
{
}

__attribute__((used, section(".text.rwble_isr")))
void rwble_isr(void)
{
    // Loop until no more interrupts have to be handled
    while (1)
    {
        // Check BLE interrupt status and call the appropriate handlers
        uint32_t irq_stat = ble_intstat_get();
        if (irq_stat == 0)
            break;

        // Event target interrupt
        if (irq_stat & BLE_FINETGTIMINTSTAT_BIT)
        {
            ble_intack_clear(BLE_FINETGTIMINTACK_BIT);
            dlg_finetgtim_isr();
        }

        // Rx interrupt
        if (irq_stat & BLE_RXINTSTAT_BIT)
        {
            ble_intack_clear(BLE_RXINTSTAT_BIT);
            dlg_rx_isr();
        }
        // End of event interrupt
        if (irq_stat & BLE_EVENTINTSTAT_BIT)
        {
            ble_intack_clear(BLE_EVENTINTSTAT_BIT);
            dlg_event_isr();
        }

        // AFPM interrupt
        if (irq_stat & BLE_EVENTAPFAINTSTAT_BIT)
        {
            ble_intack_clear(BLE_EVENTAPFAINTSTAT_BIT);
            dlg_eventapfa_isr();
        }

        // SW interrupt
        if (irq_stat & BLE_SWINTSTAT_BIT)
        {
            ble_intack_clear(BLE_SWINTSTAT_BIT);
            dlg_sw_isr();
        }

        // General purpose timer interrupt
        if (irq_stat & BLE_GROSSTGTIMINTSTAT_BIT)
        {
            ble_intack_clear(BLE_GROSSTGTIMINTACK_BIT);
            dlg_grosstgtim_isr();
        }

        // End of encryption interrupt
        if (irq_stat & BLE_CRYPTINTSTAT_BIT)
        {
            ble_intack_clear(BLE_CRYPTINTSTAT_BIT);
            dlg_crypt_isr();
        }

        // End of sleep interrupt
        if (irq_stat & BLE_SLPINTSTAT_BIT)
        {
            ble_intack_clear(BLE_SLPINTACK_BIT);
            dlg_slp_isr();
        }

        // Slot interrupt
        if (irq_stat & BLE_CSCNTINTSTAT_BIT)
        {
            ble_intack_clear(BLE_CSCNTINTACK_BIT);
            dlg_cscnt_isr();
        }

        // Error interrupt
        if (irq_stat & BLE_ERRORINTSTAT_BIT)
        {
            ble_intack_clear(BLE_ERRORINTSTAT_BIT);
            dlg_error_isr();
        }
    }
}
