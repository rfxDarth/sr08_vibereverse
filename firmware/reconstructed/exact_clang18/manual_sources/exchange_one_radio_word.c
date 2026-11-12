/* Exchange one byte with the I2C device: send command_value, issue a read and
 * return the received byte. A transmit abort is reported with V204's debug
 * print (source line 118) and gives 0. Register names are the DA14585's (SDK
 * datasheet header).
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_format.h"

#define I2C_DATA_CMD_REG        (*(volatile uint16_t *)0x50001310u)
#define I2C_CLR_TX_ABRT_REG     (*(volatile uint16_t *)0x50001354u)
#define I2C_TX_ABRT_SOURCE_REG  (*(volatile uint16_t *)0x50001380u)
#define I2C_CMD_READ            0x0100u
#define ABRT_7B_ADDR_NOACK      0x0001u

extern void wait_for_status_mask_0x02_set_minimum_8(void);
extern void wait_for_status_mask_0x04_set_minimum_32(void);
extern void wait_for_status_mask_0x20_clear_minimum_8(void);
extern void wait_i2c_rx_fifo_or_timeout(void);
extern const char i2c_ack_format[]; /* "%d,ack0x%x\n" */

uint8_t exchange_one_radio_word(uint32_t command_value)
{
    uint16_t response;

    wait_for_status_mask_0x02_set_minimum_8();
    I2C_DATA_CMD_REG = command_value;
    wait_for_status_mask_0x02_set_minimum_8();
    I2C_DATA_CMD_REG = I2C_CMD_READ;
    wait_for_status_mask_0x04_set_minimum_32();
    if (I2C_TX_ABRT_SOURCE_REG & ABRT_7B_ADDR_NOACK) {
        arch_printf((const uint8_t *)i2c_ack_format, 118, 1);
        (void)I2C_CLR_TX_ABRT_REG;
        response = 0;
    } else {
        (void)I2C_CLR_TX_ABRT_REG;
        wait_i2c_rx_fifo_or_timeout();
        response = I2C_DATA_CMD_REG;
    }
    wait_for_status_mask_0x04_set_minimum_32();
    wait_for_status_mask_0x20_clear_minimum_8();
    return response;
}
