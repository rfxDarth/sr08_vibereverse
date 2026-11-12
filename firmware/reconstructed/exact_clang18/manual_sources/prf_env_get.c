/* prf_env_get (SDK prf.c): return the environment of the profile with identifier prf_id. */
#include "firmware/reconstructed/include/sr08_sdk_prf.h"

prf_env_t *prf_env_get(uint16_t prf_id)
{
    prf_env_t *env = NULL;
    uint8_t i;

    for (i = 0; i < BLE_NB_PROFILES; i++) {
        if (prf_env.prf[i].id == prf_id) {
            env = prf_env.prf[i].env;
            break;
        }
    }
    return env;
}
