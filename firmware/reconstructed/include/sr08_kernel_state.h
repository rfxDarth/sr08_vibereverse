#ifndef SR08_KERNEL_STATE_H
#define SR08_KERNEL_STATE_H

#include <stdint.h>

/* Kernel task states are returned as a full word; high bits carry flags. */
extern uint32_t ke_state_get(uint32_t task_id);

#endif
