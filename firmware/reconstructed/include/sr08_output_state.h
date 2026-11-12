#ifndef SR08_OUTPUT_STATE_H
#define SR08_OUTPUT_STATE_H

#include <stdint.h>

uint32_t spi_flash_is_busy(void);
void spi_set_bitmode(uint32_t mode_value);
uint32_t update_mode_dependent_output_state_during_flash_transfer(uint32_t transaction_value);
uint16_t spi_flash_read_status_reg(void);
int spi_flash_wait_till_ready(void);
void update_state_bits_and_publish_empty_status(uint32_t clear_bits, uint32_t bits_to_update);

#endif
