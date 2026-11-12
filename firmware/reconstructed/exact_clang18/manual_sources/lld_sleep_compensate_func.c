/* lld_sleep_compensate_func and its static lld_sleep_compensate_core (Renesas DA145xx SDK,
 * rwble.c): convert the deep-sleep duration into BLE base-time slot and fine-counter corrections.
 * V204's SDK revision converts with the RCX20 routine directly.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"

#define BLE_DEEPSLCNTL_REG (*(volatile uint32_t *)0x40000030u)
#define BLE_DEEPSLSTAT_REG (*(volatile uint32_t *)0x40000038u)
#define BLE_FINECNTCORR_REG (*(volatile uint32_t *)0x40000040u)
#define BLE_BASETIMECNTCORR_REG (*(volatile uint32_t *)0x40000044u)
#define BLE_DEEP_SLEEP_CORR_EN_BIT 0x00000008u
#define BLE_DEEP_SLEEP_CORR_EN_POS 3
#define LLD_EVT_SLOT_DURATION 625

#define ble_finetim_corr merged_globals_5650.ble_finetim_corr

extern uint32_t lld_sleep_lpcycles_2_us_rcx_func(uint32_t lpcycles); /* lld_sleep_lpcycles_2_us_rcx_func */

static inline uint32_t ble_deepslstat_get(void) { return BLE_DEEPSLSTAT_REG; }
static inline void ble_basetimecntcorr_set(uint32_t value) { BLE_BASETIMECNTCORR_REG = value; }
static inline void ble_finecntcorr_set(uint16_t value) { BLE_FINECNTCORR_REG = value; }
static inline void ble_deep_sleep_corr_en_setf(uint8_t deepslcorren)
{
    BLE_DEEPSLCNTL_REG = (BLE_DEEPSLCNTL_REG & ~BLE_DEEP_SLEEP_CORR_EN_BIT) |
                         ((uint32_t)deepslcorren << BLE_DEEP_SLEEP_CORR_EN_POS);
}

static void lld_sleep_compensate_core(uint32_t dur_us)
{
    uint32_t fintetime_correction;
    uint32_t slot_cnt;
    uint32_t usec_cnt;

    dur_us += ble_finetim_corr;
    ble_finetim_corr = 0;

    slot_cnt = dur_us / LLD_EVT_SLOT_DURATION;
    ble_basetimecntcorr_set(slot_cnt);

    usec_cnt = dur_us - (slot_cnt * LLD_EVT_SLOT_DURATION);
    fintetime_correction = ((usec_cnt == 0) ? 0 : (LLD_EVT_SLOT_DURATION - usec_cnt));
    ble_finecntcorr_set((uint16_t)fintetime_correction);

    ble_deep_sleep_corr_en_setf(1);
}

void lld_sleep_compensate_func(void)
{
    uint32_t dur_us;
    uint32_t slp_period;

    slp_period = ble_deepslstat_get();
    dur_us = lld_sleep_lpcycles_2_us_rcx_func(slp_period);
    lld_sleep_compensate_core(dur_us);
}
