/* suotar_task.c's gattc_read_req_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/suota/suotar/src/suotar_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here, under V204's unit name.
 */
#include "firmware/reconstructed/include/sr08_sdk_suotar.h"

int suotar_gattc_read_req_ind_handler(ke_msg_id_t const msgid,
                                      struct gattc_read_req_ind const *param,
                                      ke_task_id_t const dest_id,
                                      ke_task_id_t const src_id)
{
    int msg_status = KE_MSG_CONSUMED;

    if(ke_state_get(dest_id) == SUOTAR_IDLE)
    {
        struct suotar_env_tag *suotar_env = PRF_ENV_GET(SUOTAR, suotar);
        uint8_t att_idx = param->handle - suotar_env->suota_shdl;
        uint8_t status = PRF_APP_ERROR;
        struct gattc_read_cfm* cfm;

        att_size_t length = 0;
        uint8_t *value = NULL;
#if SUOTA_VERSION >= SUOTA_VERSION_1_3
        uint16_t mtu = 0;
#endif

        // Get the requested attribute value
        if (att_idx == SUOTA_IDX_PATCH_STATUS_NTF_CFG)
        {
            status = ATT_ERR_NO_ERROR;
            length = sizeof(uint16_t);
            value = (uint8_t *) &suotar_env->ntf_cfg;
        }
#if SUOTA_VERSION >= SUOTA_VERSION_1_3
        else if(att_idx == SUOTA_IDX_MTU_VAL)
        {
            status = ATT_ERR_NO_ERROR;
            length = sizeof(uint16_t);
            mtu = gattc_get_mtu(KE_IDX_GET(src_id));
            value = (uint8_t*)&mtu;
        }
#endif
        else
        {
            status = attmdb_get_value(param->handle, &length, &value);
        }

        // Send data to peer device
        cfm = KE_MSG_ALLOC_DYN(GATTC_READ_CFM, src_id, dest_id, gattc_read_cfm, length);
        cfm->handle = param->handle;
        cfm->status = status;
        cfm->length = length;

        if (length > 0)
        {
            memcpy(cfm->value, value, length);
        }

        ke_msg_send(cfm);
    }
    else if(ke_state_get(dest_id) == SUOTAR_BUSY)
    {
        msg_status = KE_MSG_SAVED;
    }

    return msg_status;
}
