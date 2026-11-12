/* prf_cleanup_func (SDK prf.c): run every profile's connection cleanup callback.
 * The explicit profile pointer reproduces the loop form of V204's link-time-optimised build.
 */
#include "firmware/reconstructed/include/sr08_sdk_prf.h"

void prf_cleanup_func(uint8_t conidx, uint8_t reason)
{
    struct prf_task_env *prf = prf_env.prf;
    uint32_t i;

    for (i = 0; i < BLE_NB_PROFILES; i++, prf++) {
        const struct prf_task_cbs *cbs = prf_itf_get(prf->id);
        if (cbs != NULL) {
            cbs->cleanup(prf, conidx, reason);
        }
    }
}
