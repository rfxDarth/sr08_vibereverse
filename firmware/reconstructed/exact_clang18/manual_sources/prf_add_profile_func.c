/* prf_add_profile_func (SDK prf.c): add a profile task from a GAPM_PROFILE_TASK_ADD_CMD. */
#include "firmware/reconstructed/include/sr08_sdk_prf.h"

uint8_t prf_add_profile_func(struct gapm_profile_task_add_cmd *params, ke_task_id_t *prf_task)
{
    uint8_t i;
    uint8_t status = GAP_ERR_NO_ERROR;
    const struct prf_task_cbs *cbs = prf_itf_get(params->prf_task_id);

    if (cbs == NULL) {
        status = GAP_ERR_INVALID_PARAM;
    }
    if (status == GAP_ERR_NO_ERROR) {
        for (i = 0; i < BLE_NB_PROFILES; i++) {
            if (prf_env.prf[i].id == params->prf_task_id) {
                status = GAP_ERR_NOT_SUPPORTED;
                break;
            }
        }
    }
    if (status == GAP_ERR_NO_ERROR) {
        for (i = 0; i < BLE_NB_PROFILES; i++) {
            if (prf_env.prf[i].id == TASK_ID_INVALID) {
                status = cbs->init(&(prf_env.prf[i]), &(params->start_hdl), params->app_task, params->sec_lvl,
                                   params->param);
                if (status == GAP_ERR_NO_ERROR) {
                    prf_env.prf[i].id = params->prf_task_id;
                    *prf_task = prf_env.prf[i].task;
                }
                break;
            }
        }
        if (i == BLE_NB_PROFILES) {
            status = GAP_ERR_INSUFF_RESOURCES;
        }
    }
    return status;
}
