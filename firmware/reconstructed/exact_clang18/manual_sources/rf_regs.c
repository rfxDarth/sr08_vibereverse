/* rf_585.c: restore preferred RF settings and retained IQ calibration.
 * Source: Tools/SDK_6.0.22.1401/sdk/platform/core_modules/rf/src/rf_585.c,
 * rf_regs(), and sdk/platform/arch/system_settings.h.
 * V204 uses the fixed VCO setting and performs no near-field-mode write.
 */
#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"

#define BLE_RADIOPWRUPDN_REG 0x40000080u
#define RF_DC_OFFSET_CTRL3_REG 0x5000286au
#define BIAS_CTRL1_REG 0x50002600u
#define RF_VCOCAL_CTRL_REG 0x50002c06u
#define RF_MIXER_CTRL1_REG 0x50002810u
#define REG16(address) (*(volatile uint16_t *)(address))
#define REG32(address) (*(volatile uint32_t *)(address))

enum {
    PREF_BLE_RADIOPWRUPDN_REG = 0x0754054c,
    PREF_RF_DC_OFFSET_CTRL3_REG = 0xe6eb,
    PREF_RF_VCOCAL_CTRL_REG = 0x63,
};

/* The original global-merge block retains these two SDK globals. */
struct sr08_retained_rf_trims {
    uint8_t reserved_00_to_3b[0x3c];
    uint16_t iq_trim_bias_ctrl1_reg;
    uint16_t iq_trim_rf_mixer_ctrl1_reg;
};
_Static_assert(offsetof(struct sr08_retained_rf_trims, iq_trim_bias_ctrl1_reg) == 0x3c,
               "retained bias trim must remain at offset 0x3c");
_Static_assert(offsetof(struct sr08_retained_rf_trims, iq_trim_rf_mixer_ctrl1_reg) == 0x3e,
               "retained mixer trim must remain at offset 0x3e");

struct sr08_rf_bias_registers {
    uint16_t bias_ctrl1;
    uint16_t spare1;
};

__attribute__((used, section(".text.rf_regs"))) void rf_regs(void) {
    REG32(BLE_RADIOPWRUPDN_REG) = PREF_BLE_RADIOPWRUPDN_REG;
    REG16(RF_DC_OFFSET_CTRL3_REG) = PREF_RF_DC_OFFSET_CTRL3_REG;
    volatile struct sr08_rf_bias_registers *bias =
        (volatile struct sr08_rf_bias_registers *)BIAS_CTRL1_REG;
    bias->spare1 = (bias->spare1 & ~6u) | 2u;
    REG16(RF_VCOCAL_CTRL_REG) = PREF_RF_VCOCAL_CTRL_REG;
    const volatile struct sr08_retained_rf_trims *retained =
        (const volatile struct sr08_retained_rf_trims *)&merged_globals_5650;
    REG16(RF_MIXER_CTRL1_REG) = retained->iq_trim_rf_mixer_ctrl1_reg;
    bias->bias_ctrl1 = retained->iq_trim_bias_ctrl1_reg;
}
