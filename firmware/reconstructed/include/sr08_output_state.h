#ifndef SR08_OUTPUT_STATE_H
#define SR08_OUTPUT_STATE_H

#include <stdint.h>

uint32_t map_record_flag_to_status_mask(void);
void set_ring_s_output_mode_and_enable(uint32_t mode_value);
uint32_t update_mode_dependent_output_state_during_flash_transfer(uint32_t transaction_value);
uint16_t initialize_output_state_for_mode_five_hundred(void);
int poll_output_state_table_and_report_count_advance(void);
void update_state_bits_and_publish_empty_status(uint32_t clear_bits, uint32_t bits_to_update);

#endif
