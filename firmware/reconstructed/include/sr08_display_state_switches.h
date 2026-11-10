#ifndef SR08_DISPLAY_STATE_SWITCHES_H
#define SR08_DISPLAY_STATE_SWITCHES_H

#include <stdint.h>
#include "firmware/reconstructed/include/sr08_display_state.h"

extern void switch_display_state_and_run_hooks(uint32_t state);
void switch_to_display_state_zero_if_fourteen(void);

#endif
