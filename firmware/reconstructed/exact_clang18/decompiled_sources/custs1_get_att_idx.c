/* custs1_get_att_idx() from the Dialog/Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/custom/custom_common.c (see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). */
#include "firmware/reconstructed/include/sr08_sdk_custs1.h"

uint8_t custs1_get_att_idx(uint16_t handle, uint8_t *att_idx)
{
    struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
    uint8_t status = PRF_APP_ERROR;

    if ((handle >= custs1_env->shdl) && (handle < custs1_env->shdl + custs1_env->max_nb_att))
    {
        *att_idx = handle - custs1_env->shdl;
        status = ATT_ERR_NO_ERROR;
    }

    return status;
}
