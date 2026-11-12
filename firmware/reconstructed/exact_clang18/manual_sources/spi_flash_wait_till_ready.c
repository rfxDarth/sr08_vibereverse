/* SPI flash readiness polling, from the Renesas DA145xx SDK 6.0.18.1182.1
 * spi_flash.c. See third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt.
 * V204's reconstructed interface retains the widened signed status return;
 * both possible values (0 and -1) have the SDK's sign-extended representation.
 */
#include "firmware/reconstructed/include/sr08_output_state.h"
enum { SPI_FLASH_WAIT = 2000000, SPI_FLASH_SR_BUSY = 1 };
int spi_flash_wait_till_ready(void)
{
    for (uint32_t count = 0; count < SPI_FLASH_WAIT; ++count)
        if ((spi_flash_read_status_reg() & SPI_FLASH_SR_BUSY) == 0)
            return 0;
    return -1;
}
