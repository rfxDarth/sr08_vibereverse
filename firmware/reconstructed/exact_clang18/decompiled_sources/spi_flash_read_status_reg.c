/* Read SPI flash status with command 0x05 in the high byte of the transaction. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_output_state.h"

uint16_t spi_flash_read_status_reg(void)

{
    spi_set_bitmode(1);
    return update_mode_dependent_output_state_during_flash_transfer(0x500);
}
