/* i2c_init() from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/driver/i2c/i2c.c (Copyright (C) 2018-2019 Dialog
 * Semiconductor; see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt),
 * as V204's vendor code uses it: the controller is always set up as master
 * (i2c_setup_master() inlined) and the I2C interrupt is not enabled. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_da14585.h"

#define CLK_PER_REG 0x50000004
#define I2C_ENABLE 0x0020
#define I2C_CON_REG 0x50001300
#define I2C_TAR_REG 0x50001304
#define I2C_INTR_MASK_REG 0x50001330
#define I2C_SS_SCL_HCNT_REG 0x50001314
#define I2C_SS_SCL_LCNT_REG 0x50001318
#define I2C_FS_SCL_HCNT_REG 0x5000131c
#define I2C_FS_SCL_LCNT_REG 0x50001320
#define I2C_RX_TL_REG 0x50001338
#define I2C_TX_TL_REG 0x5000133c
#define I2C_ENABLE_REG 0x5000136c
#define I2C_MASTER_MODE 0x0001
#define I2C_SPEED 0x0006
#define I2C_10BITADDR_MASTER 0x0010
#define I2C_RESTART_EN 0x0020
#define I2C_SLAVE_DISABLE 0x0040
#define IC_TAR 0x03ff
#define RX_TL 0x001f
#define CTRL_ENABLE 0x0001

typedef enum { I2C_RESTART_DISABLE, I2C_RESTART_ENABLE } i2c_restart_t;
typedef enum { I2C_ADDRESSING_7B, I2C_ADDRESSING_10B } i2c_addressing_t;

typedef struct {
    uint16_t ss_hcnt;
    uint16_t ss_lcnt;
    uint16_t fs_hcnt;
    uint16_t fs_lcnt;
} i2c_clock_cfg_t;

typedef struct {
    i2c_clock_cfg_t clock_cfg;
    i2c_restart_t restart_en;
    uint8_t speed;
    uint8_t mode;
    i2c_addressing_t addr_mode;
    uint16_t address;
    uint8_t tx_fifo_level;
    uint8_t rx_fifo_level;
} i2c_cfg_t;

#define GLOBAL_INT_DISABLE()                                                                                            \
    do {                                                                                                               \
        uint32_t __l_irq_rest = __builtin_arm_rsr("primask");                                                          \
        __builtin_arm_wsr("primask", 1);
#define GLOBAL_INT_RESTORE()                                                                                            \
        if (__l_irq_rest == 0)                                                                                         \
            __builtin_arm_wsr("primask", 0);                                                                           \
        else                                                                                                           \
            __builtin_arm_wsr("primask", 1);                                                                           \
    } while (0)

static void i2c_setup_master(i2c_restart_t restart, i2c_addressing_t addr_mode, uint16_t target_addr)
{
    // Set Master mode
    SetBits16(I2C_CON_REG, I2C_MASTER_MODE, 1);
    SetBits16(I2C_CON_REG, I2C_SLAVE_DISABLE, 1);

    /// Force enable Restart condition with a 10-bit target address.
    SetBits16(I2C_CON_REG, I2C_RESTART_EN, addr_mode == I2C_ADDRESSING_10B ? I2C_RESTART_ENABLE : restart);

    SetBits16(I2C_CON_REG, I2C_10BITADDR_MASTER, addr_mode);

    SetBits16(I2C_TAR_REG, IC_TAR, target_addr);
}

void program_peripheral_registers_from_descriptor(const i2c_cfg_t *cfg)
{
    // Disable interrupts
    GLOBAL_INT_DISABLE();

    //Enable i2c clock to R/W i2c registers
    SetBits16(CLK_PER_REG, I2C_ENABLE, 1);

    // Enable interrupts
    GLOBAL_INT_RESTORE();

    SetBits16(I2C_ENABLE_REG, CTRL_ENABLE, 0);

    // There is a two ic_clk delay when enabling or disabling the controller
    while ((GetWord16(I2C_ENABLE_REG) & CTRL_ENABLE) != 0);

    SetWord16(I2C_INTR_MASK_REG, 0x0000);

    // SCL clock settings
    SetWord16(I2C_SS_SCL_HCNT_REG, cfg->clock_cfg.ss_hcnt);
    SetWord16(I2C_SS_SCL_LCNT_REG, cfg->clock_cfg.ss_lcnt);

    SetWord16(I2C_FS_SCL_HCNT_REG, cfg->clock_cfg.fs_hcnt);
    SetWord16(I2C_FS_SCL_LCNT_REG, cfg->clock_cfg.fs_lcnt);

    // Set speed mode
    SetBits16(I2C_CON_REG, I2C_SPEED, cfg->speed);

    // Set fifo levels
    SetBits16(I2C_TX_TL_REG, RX_TL, cfg->tx_fifo_level - 1);
    SetBits16(I2C_RX_TL_REG, RX_TL, cfg->rx_fifo_level - 1);

    // Setup I2C master
    i2c_setup_master(cfg->restart_en, cfg->addr_mode, cfg->address);

    SetBits16(I2C_ENABLE_REG, CTRL_ENABLE, 1);
    // There is a two ic_clk delay when enabling or disabling the controller
    while ((GetWord16(I2C_ENABLE_REG) & CTRL_ENABLE) == 0);
}
