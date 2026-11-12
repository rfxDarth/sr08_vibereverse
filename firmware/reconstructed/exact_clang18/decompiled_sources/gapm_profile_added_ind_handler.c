/* Initialize measurement state for an eligible slot. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_kernel_state.h"

extern int app_db_init_next(void);
extern void ke_state_set(uint32_t first, uint32_t second);
extern void user_app_adv_start(void);

uint32_t gapm_profile_added_ind_handler(uint32_t unused_context_0, uint32_t unused_context_1,
                                                 uint32_t slot_id) {
    uint32_t slot_state;

    slot_state = ke_state_get(slot_id);
    if ((slot_state == 1) && ((slot_state = app_db_init_next()) != 0)) {
        ke_state_set(4, 2);
        user_app_adv_start();
    }
    return 0;
}
