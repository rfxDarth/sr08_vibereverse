/* Erase the requested flash range and return the flash driver's status. */
#include "firmware/reconstructed/include/sr08_flash_operation.h"

/* Keep the frozen entry's section while the old ABI name remains an alias. */
__attribute__((used, section(".text.erase_flash_range"))) uint32_t erase_flash_range_status(uint32_t flash_address,
                                                                                            uint32_t byte_count) {
    return perform_flash_memory_operation(0, flash_address, byte_count, SR08_FLASH_ERASE);
}
