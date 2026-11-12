/* rf_init_func from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/core_modules/rf/src/rf_585.c, with struct rwip_rf_api from
 * rwip.h and em_ble_burst_wr() from reg_access.h (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204 was built
 * with CFG_BLE, without CFG_BT and LUT_PATCH_ENABLED. last_temp_count is one
 * of the globals that V204's link merged (sr08_merged_globals.h).
 */
#include <stdbool.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_da14585.h"

/* rwip.h */
struct rwip_rf_api
{
    void (*reset)(void);
    void (*force_agc_enable)(bool);
    bool (*txpwr_inc)(uint8_t);
    bool (*txpwr_dec)(uint8_t);
    uint8_t (*txpwr_epc_req)(uint8_t, uint8_t);
    uint8_t (*txpwr_dbm_get)(uint8_t, uint8_t);
    uint8_t (*txpwr_cs_get)(int8_t);
    uint8_t (*rssi_convert)(uint8_t);
    void (*isr)(void);
    uint32_t (*reg_rd)(uint16_t);
    void (*reg_wr)(uint16_t, uint32_t);
    void (*sleep)(void);
    uint8_t txpwr_max;
    uint8_t rssi_high_thr;
    uint8_t rssi_low_thr;
    uint8_t rssi_interf_thr;
    uint8_t wakeup_delay;
};

/* em_map.h: the frequency table follows the 64-byte exchange table. */
#define EM_FT_OFFSET                (0x40)
#define EM_BLE_FREQ_TABLE_LEN       (40)

/* _reg_common_em_et.h and reg_access.h */
extern unsigned int _ble_base;
#define REG_COMMON_EM_ET_BASE_ADDR (_ble_base)
static inline void em_ble_burst_wr(void const *sys_addr, uint16_t em_addr, uint16_t len)
{
    memcpy((void *)(em_addr + REG_COMMON_EM_ET_BASE_ADDR), sys_addr, len);
}

/* rf_585.c's static RF driver functions (their own V204 units). */
extern uint32_t rf_reg_rd(uint16_t address);
extern void rf_reg_wr(uint16_t address, uint32_t data);
extern void rf_reset(void);
extern void rf_force_agc_enable(bool en);
extern uint8_t rf_txpwr_dbm_get(uint8_t txpwr_idx, uint8_t modulation);
extern void rf_sleep(void);
extern void RADIOCNTL_Handler(void);
extern uint8_t rf_rssi_convert(uint8_t rssi_reg);
extern void rf_regs(void);
extern uint16_t get_rc16m_count(void);
extern void rf_calibration_585(void);

#define last_temp_count (merged_globals_5650.last_temp_count)

void rf_init_func(struct rwip_rf_api *api)
{
    uint8_t idx = 0;
    uint8_t temp_freq_tbl[EM_BLE_FREQ_TABLE_LEN];

   // Initialize the RF driver API structure
    api->reg_rd = rf_reg_rd;
    api->reg_wr = rf_reg_wr;
    api->txpwr_dbm_get = rf_txpwr_dbm_get;

    //api->txpwr_max = RPL_POWER_MAX;
    api->sleep = rf_sleep;
    api->reset = rf_reset;
    api->isr = RADIOCNTL_Handler;
    api->force_agc_enable = rf_force_agc_enable;

    api->rssi_convert = rf_rssi_convert;

    SetBits32(BLE_RADIOCNTL1_REG, XRFSEL, 2);
    SetBits32(BLE_CNTL2_REG, SW_RPL_SPI ,0);
    SetBits32(BLE_CNTL2_REG, BB_ONLY,0);

    while(idx < EM_BLE_FREQ_TABLE_LEN)
    {
        temp_freq_tbl[idx] = idx ;
        idx++;
    }

    em_ble_burst_wr(&temp_freq_tbl[0], EM_FT_OFFSET, EM_BLE_FREQ_TABLE_LEN);
    rf_regs();

    last_temp_count = get_rc16m_count();

    rf_calibration_585();
}
