/* Initialize measurement state for an eligible slot. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_state.h"

extern int initialize_display_config_or_run_handler(void);
extern void ke_state_set(uint32_t first, uint32_t second);
extern void initialize_measurement_state_unless_record_already_at_c538(void);

uint32_t initialize_measurement_for_enabled_slot(uint32_t unused_context_0, uint32_t unused_context_1,
                                                 uint32_t slot_id) {
    uint32_t slot_state;

    slot_state = ke_state_get(slot_id);
    if ((slot_state == 1) && ((slot_state = initialize_display_config_or_run_handler()) != 0)) {
        ke_state_set(4, 2);
        initialize_measurement_state_unless_record_already_at_c538();
    }
    return 0;
}
