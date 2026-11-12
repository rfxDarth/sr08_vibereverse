/* Read byte_count bytes from the I2C device after sending command: queue one
 * read command per byte, report a transmit abort with V204's debug print
 * (source line 158), then collect the received bytes into destination.
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

void fill_hardware_fifo_optionally_report_state_at_89b0(uint32_t command, uint8_t *destination, uint16_t byte_count)
{
    wait_for_status_mask_0x02_set_minimum_8();
    I2C_DATA_CMD_REG = command;
    for (uint16_t i = 0; i < byte_count; i++) {
        wait_for_status_mask_0x02_set_minimum_8();
        I2C_DATA_CMD_REG = I2C_CMD_READ;
    }
    wait_for_status_mask_0x04_set_minimum_32();
    if (I2C_TX_ABRT_SOURCE_REG & ABRT_7B_ADDR_NOACK)
        arch_printf((const uint8_t *)i2c_ack_format, 158, 1);
    (void)I2C_CLR_TX_ABRT_REG;
    for (uint16_t i = 0; i < byte_count; i++) {
        wait_i2c_rx_fifo_or_timeout();
        *destination++ = I2C_DATA_CMD_REG;
    }
    wait_for_status_mask_0x04_set_minimum_32();
    wait_for_status_mask_0x20_clear_minimum_8();
}
