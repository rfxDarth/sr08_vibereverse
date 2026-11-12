/* suotar_status_update_req_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/suota/suotar/src/suotar_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here.
 */
#include "firmware/reconstructed/include/sr08_sdk_suotar.h"

int suotar_status_update_req_handler(ke_msg_id_t const msgid,
                                         struct suotar_status_update_req const *param,
                                         ke_task_id_t const dest_id,
                                         ke_task_id_t const src_id)
{
    struct suotar_env_tag *suotar_env = PRF_ENV_GET(SUOTAR, suotar);

    // Update the value in the attribute database
    uint8_t status = attmdb_att_set_value(suotar_env->suota_shdl + SUOTA_IDX_PATCH_STATUS_VAL,
                                  sizeof(uint8_t), 0, (uint8_t *) &param->status);
    ASSERT_ERROR(status == ATT_ERR_NO_ERROR);

    if (suotar_env->ntf_cfg != GATT_CCC_STOP_NTFIND)
    {
        // Allocate the GATT notification message
        struct gattc_send_evt_cmd *req = KE_MSG_ALLOC_DYN(GATTC_SEND_EVT_CMD,
                                         KE_BUILD_ID(TASK_GATTC, KE_IDX_GET(src_id)),
                                         dest_id, gattc_send_evt_cmd,
                                         sizeof(param->status));

        // Fill in the parameter structure
        req->operation = (suotar_env->ntf_cfg == GATT_CCC_START_NTF) ? GATTC_NOTIFY :
                                                 GATTC_INDICATE;
        req->seq_num = 0;
        req->handle = (suotar_env->suota_shdl + SUOTA_IDX_PATCH_STATUS_VAL);
        req->length = sizeof(param->status);
        memcpy(req->value, &param->status, req->length);

        // Send the event
        ke_msg_send(req);
    }

    return (KE_MSG_CONSUMED);
}
