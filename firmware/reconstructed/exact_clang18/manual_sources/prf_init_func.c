/* prf_init_func (SDK prf.c): create the profile tasks at boot, or destroy every profile on reset.
 * The explicit profile pointer reproduces the loop form of V204's link-time-optimised build.
 */
#include "firmware/reconstructed/include/sr08_sdk_prf.h"

void prf_init_func(bool reset)
{
    struct prf_task_env *prf = prf_env.prf;
    uint32_t i;

    if (!reset) {
        uint32_t task;
        for (task = TASK_RFU_5 + 1; task != TASK_RFU_5 + 1 + BLE_NB_PROFILES; prf++, task++) {
            prf->env = NULL;
            prf->task = task;
            prf->id = TASK_ID_INVALID;

            prf->desc.default_handler = NULL;
            prf->desc.state = NULL;
            prf->desc.idx_max = 0;

            prf->desc.state_max = 0;
            prf->desc.state_handler = NULL;

            ke_task_create(prf->task, &(prf->desc));
        }
    } else {
        for (i = 0; i < BLE_NB_PROFILES; i++, prf++) {
            const struct prf_task_cbs *cbs = prf_itf_get(prf->id);
            if (cbs != NULL) {
                cbs->destroy(prf);
            }
            prf->id = TASK_ID_INVALID;
            prf->desc.default_handler = NULL;
            prf->desc.state = NULL;
            prf->desc.idx_max = 0;

            ke_task_msg_flush(KE_TYPE_GET(prf->task));
        }
    }
}
