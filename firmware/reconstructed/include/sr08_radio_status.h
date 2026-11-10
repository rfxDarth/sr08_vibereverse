#ifndef SR08_RADIO_STATUS_H
#define SR08_RADIO_STATUS_H

#include <stdint.h>

#define SR08_RADIO_STATUS_REGISTER ((volatile uint16_t *)0x50001304u)
#define SR08_RADIO_STATUS_READY_MASK 0x03ffu
#define SR08_RADIO_STATUS_READY_VALUE 0x0044u

void restore_radio_profile_before_command(void);
void fill_hardware_fifo_optionally_report_state_at_89b0(uint32_t command, uint8_t *destination, uint32_t byte_count);

/* Restore the configured profile before issuing a command when status is stale. */
#define SR08_ENSURE_RADIO_PROFILE_READY()                                                                              \
    do {                                                                                                               \
        if ((SR08_RADIO_STATUS_READY_MASK & *SR08_RADIO_STATUS_REGISTER) != SR08_RADIO_STATUS_READY_VALUE) {           \
            restore_radio_profile_before_command();                                                                    \
        }                                                                                                              \
    } while (0)

#endif
