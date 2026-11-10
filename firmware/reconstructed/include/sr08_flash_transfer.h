#ifndef SR08_FLASH_TRANSFER_H
#define SR08_FLASH_TRANSFER_H

#include <stdint.h>

/* Send a transaction word through the flash controller and return readback. */
uint32_t transfer_flash_controller_word(uint32_t transaction_value);

#endif
