#include "v204_accel.h"

#include "arch.h"
#include "gpio.h"
#include "i2c.h"

#define V204_ACCEL_I2C_ADDRESS 0x18u
#define V204_ACCEL_WHO_AM_I    0x0fu
#define V204_ACCEL_VARIANT_REG 0x70u
#define V204_ACCEL_EXPECTED_ID 0x11u
#define V204_ACCEL_VARIANT     0x28u
#define V204_ACCEL_OUTPUT_REG  0xa8u

static bool i2c_ready;

static const i2c_cfg_t v204_i2c_cfg = {
    .clock_cfg = {
        .ss_hcnt = 0x48,
        .ss_lcnt = 0x50,
        .fs_hcnt = 0x0a,
        .fs_lcnt = 0x17,
    },
    .restart_en = I2C_RESTART_ENABLE,
    .speed = I2C_SPEED_FAST,
    .mode = I2C_MODE_MASTER,
    .addr_mode = I2C_ADDRESSING_7B,
    .address = V204_ACCEL_I2C_ADDRESS,
    .tx_fifo_level = 1,
    .rx_fifo_level = 1,
};

static bool write_register(uint8_t reg, uint8_t value)
{
    uint8_t bytes[2] = {reg, value};
    i2c_abort_t abort_code = I2C_ABORT_NONE;
    uint16_t sent = i2c_master_transmit_buffer_sync(
        bytes, sizeof(bytes), &abort_code, I2C_F_WAIT_FOR_STOP);
    return sent == sizeof(bytes) && abort_code == I2C_ABORT_NONE;
}

static bool read_registers(uint8_t reg, uint8_t *data, uint16_t length)
{
    i2c_abort_t abort_code = I2C_ABORT_NONE;
    uint16_t sent = i2c_master_transmit_buffer_sync(
        &reg, 1, &abort_code, I2C_F_NONE);
    if (sent != 1 || abort_code != I2C_ABORT_NONE)
        return false;

    abort_code = I2C_ABORT_NONE;
    uint16_t received = i2c_master_receive_buffer_sync(
        data, length, &abort_code, I2C_F_NONE);
    return received == length && abort_code == I2C_ABORT_NONE;
}

static bool write_table(const v204_reg_write_t *table, uint8_t length)
{
    for (uint8_t i = 0; i < length; ++i) {
        if (!write_register(table[i].reg, table[i].value))
            return false;
    }
    return true;
}

bool v204_motion_sensor_init(uint8_t *who_am_i, uint8_t *variant)
{
    GPIO_ConfigurePin(GPIO_PORT_2, GPIO_PIN_3, INPUT, PID_I2C_SCL, false);
    GPIO_ConfigurePin(GPIO_PORT_2, GPIO_PIN_4, INPUT, PID_I2C_SDA, false);
    i2c_init(&v204_i2c_cfg);
    i2c_ready = true;

    uint8_t id = 0;
    uint8_t revision = 0;
    if (!read_registers(V204_ACCEL_WHO_AM_I, &id, 1))
        return false;
    if (who_am_i)
        *who_am_i = id;
    if (id != V204_ACCEL_EXPECTED_ID)
        return false;
    if (!read_registers(V204_ACCEL_VARIANT_REG, &revision, 1))
        return false;
    if (variant)
        *variant = revision;

    if (!write_table(v204_accel_common_init, 2))
        return false;
    arch_asm_delay_us(10000);

    if (revision != V204_ACCEL_VARIANT &&
        !write_register(v204_accel_variant_init.reg,
                        v204_accel_variant_init.value))
        return false;
    return write_table(v204_accel_init, 10);
}

bool v204_motion_sensor_read(v204_accel_t *sample)
{
    if (!i2c_ready || !sample)
        return false;

    uint8_t bytes[6];
    if (!read_registers(V204_ACCEL_OUTPUT_REG, bytes, sizeof(bytes)))
        return false;
    v204_decode_accel(bytes, sample);
    return true;
}
