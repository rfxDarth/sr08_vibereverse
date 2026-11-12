/* Write one sensor register over I2C: send `register_address` then `value`,
 * wait for the transfer to finish, report a transmit abort with V204's debug
 * print (source line 234) and clear the abort status, returning the read.
 * Register names are the DA14585's (SDK datasheet header). */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_format.h"

#define I2C_DATA_CMD_REG        (*(volatile uint16_t *)0x50001310u)
#define I2C_CLR_TX_ABRT_REG     (*(volatile uint16_t *)0x50001354u)
#define I2C_TX_ABRT_SOURCE_REG  (*(volatile uint16_t *)0x50001380u)
#define ABRT_7B_ADDR_NOACK      0x0001u

extern void wait_for_status_mask_0x02_set_minimum_8(void);
extern void wait_for_status_mask_0x04_set_minimum_32(void);
extern void wait_for_status_mask_0x20_clear_minimum_8(void);
extern const char i2c_ack_format[]; /* "%d,ack0x%x\n" */

uint16_t process_two_packed_input_bytes_update_at_8ad8(uint32_t register_address, uint32_t value)
{
    uint8_t bytes[2] = {(uint8_t)register_address, (uint8_t)value};
    const uint8_t *next = bytes;

    uint16_t count = 2;
    do {
        wait_for_status_mask_0x02_set_minimum_8();
        I2C_DATA_CMD_REG = *next++;
    } while (--count != 0);
    wait_for_status_mask_0x04_set_minimum_32();
    wait_for_status_mask_0x20_clear_minimum_8();
    if (I2C_TX_ABRT_SOURCE_REG & ABRT_7B_ADDR_NOACK)
        arch_printf((const uint8_t *)i2c_ack_format, 234, 1);
    return I2C_CLR_TX_ABRT_REG;
}
