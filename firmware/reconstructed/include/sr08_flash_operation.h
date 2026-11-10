#ifndef SR08_FLASH_OPERATION_H
#define SR08_FLASH_OPERATION_H

#include <stdint.h>

enum sr08_flash_operation { SR08_FLASH_READ = 0, SR08_FLASH_PROGRAM = 1, SR08_FLASH_ERASE = 2 };

uint32_t perform_flash_memory_operation(uint8_t *buffer, uint32_t flash_address, uint32_t byte_count,
                                        enum sr08_flash_operation operation);
void erase_flash_range(uint32_t flash_address, uint32_t byte_count);

#endif
