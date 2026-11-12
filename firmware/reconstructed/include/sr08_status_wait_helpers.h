#ifndef SR08_STATUS_WAIT_HELPERS_H
#define SR08_STATUS_WAIT_HELPERS_H

#include <stdint.h>

/* Returns minimum_elapsed in r0 after status matches OR the timeout elapses.
 * This is not a minimum-duration delay: matching status exits immediately. */
uint32_t wait_requested_status_mask_minimum_elapsed_at_8a78(uint32_t status_address, uint32_t mask,
                                                            uint32_t clear_instead_of_set, uint32_t minimum_elapsed);
/* Canonical void API: matching status ends the wait immediately. The legacy
 * names above/below remain declarations for the independently maintained tree. */
void poll_status_until_match_or_ble_timeout(uint32_t status_address, uint32_t mask,
                                           uint32_t clear_instead_of_set, uint32_t timeout);
void wait_i2c_rx_fifo_or_timeout(void);

void wait_for_status_mask_0x02_set_minimum_8(void);
/* The fixed-address wrapper ignores incoming r0; call sites use both forms. */
void wait_for_status_mask_0x04_set_minimum_32();
void wait_for_status_mask_0x20_clear_minimum_8();
uint32_t wait_for_any_status_bit_or_elapsed_200(uint32_t status_snapshot);

#endif
