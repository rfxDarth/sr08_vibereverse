/* hogpd_enable_req_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The handler is
 * static in the SDK and has external linkage here. V204's vendor added the
 * block marked below.
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"
#include "firmware/reconstructed/include/sr08_timing_record.h"

int hogpd_enable_req_handler(ke_msg_id_t const msgid,
                                    struct hogpd_enable_req const *param,
                                    ke_task_id_t const dest_id,
                                    ke_task_id_t const src_id)
{
    // Counter for HIDS instance
    uint8_t svc_idx;
    uint8_t status = GAP_ERR_NO_ERROR;

    struct hogpd_env_tag* hogpd_env = PRF_ENV_GET(HOGPD, hogpd);

    ASSERT_ERROR(hogpd_env!=NULL);

    // Check provided values and check if connection exists
    if((param->conidx > BLE_CONNECTION_MAX)
            || (gapc_get_conhdl(param->conidx) == GAP_INVALID_CONHDL))
    {
        // an error occurs, trigg it.
        status = (param->conidx > BLE_CONNECTION_MAX) ? GAP_ERR_INVALID_PARAM : PRF_ERR_REQ_DISALLOWED;
    }
    else
    {
        for (svc_idx = 0; svc_idx < hogpd_env->hids_nb; svc_idx++)
        {
            // Retrieve notification configuration
            hogpd_env->svcs[svc_idx].ntf_cfg[param->conidx]   = param->ntf_cfg[svc_idx];
        }
        /* Vendor addition. */
        if (sr08_shared_context.mode_11 == 2)
        {
            ((uint8_t *)sr08_timing_records)[176] = 0;
        }
    }

    // Send back response
    struct hogpd_enable_rsp* rsp = KE_MSG_ALLOC(HOGPD_ENABLE_RSP, src_id, dest_id, hogpd_enable_rsp);
    rsp->conidx = param->conidx;
    rsp->status = status;
    ke_msg_send(rsp);

    return (KE_MSG_CONSUMED);
}

