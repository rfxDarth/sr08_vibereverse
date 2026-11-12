/* Return zero when the flash is idle, or the V204 status word for busy (-14). */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_output_state.h"

uint32_t spi_flash_is_busy(void)

{
    uint32_t initialized_state;

    initialized_state = spi_flash_read_status_reg();
    return (initialized_state & 1) != 0 ? 0xfffffff2u : 0;
}
