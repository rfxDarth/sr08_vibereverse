/* prf_get_id_from_task_func (SDK prf.c): map a profile task number to its task identifier. */
#include "firmware/reconstructed/include/sr08_sdk_prf.h"

ke_task_id_t prf_get_id_from_task_func(ke_msg_id_t task)
{
    ke_task_id_t id = TASK_ID_INVALID;
    uint8_t idx = KE_IDX_GET(task);
    uint8_t i;
    task = KE_TYPE_GET(task);

    for (i = 0; i < BLE_NB_PROFILES; i++) {
        if (prf_env.prf[i].task == task) {
            id = prf_env.prf[i].id;
            break;
        }
    }
    return KE_BUILD_ID(id, idx);
}
