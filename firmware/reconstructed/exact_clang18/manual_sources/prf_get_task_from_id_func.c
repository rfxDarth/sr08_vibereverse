/* prf_get_task_from_id_func (SDK prf.c): map a profile task identifier to its task number. */
#include "firmware/reconstructed/include/sr08_sdk_prf.h"

ke_task_id_t prf_get_task_from_id_func(ke_msg_id_t id)
{
    ke_task_id_t task = TASK_NONE;
    uint8_t idx = KE_IDX_GET(id);
    uint8_t i;
    id = KE_TYPE_GET(id);

    for (i = 0; i < BLE_NB_PROFILES; i++) {
        if (prf_env.prf[i].id == id) {
            task = prf_env.prf[i].task;
            break;
        }
    }
    return KE_BUILD_ID(task, idx);
}
