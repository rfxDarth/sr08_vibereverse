/* Erase the requested flash range through the shared flash operation routine. */
#include <stdint.h>

#include "firmware/reconstructed/include/sr08_flash_operation.h"

void erase_flash_range(uint32_t flash_address, uint32_t byte_count)

{
    perform_flash_memory_operation(0, flash_address, byte_count, SR08_FLASH_ERASE);
}
