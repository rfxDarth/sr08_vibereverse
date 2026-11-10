#ifndef SR08_ROM_SERVICES_H
#define SR08_ROM_SERVICES_H

#include <stdint.h>

uint32_t prf_get_task_from_id(uint32_t profile_id);
void rwip_wakeup_delay_set(uint32_t delay);

#endif
