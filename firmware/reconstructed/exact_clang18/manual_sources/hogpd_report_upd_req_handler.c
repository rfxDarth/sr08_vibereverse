/* hogpd_report_upd_req_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The handler is
 * static in the SDK and has external linkage here. V204's vendor added the
 * lines marked below.
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"

int hogpd_report_upd_req_handler(ke_msg_id_t const msgid,
                                        struct hogpd_report_upd_req const *param,
                                        ke_task_id_t const dest_id,
                                        ke_task_id_t const src_id)
{
    int msg_status = KE_MSG_CONSUMED;
    uint8_t state = ke_state_get(dest_id);
    /* Vendor addition. */
    struct hogpd_env_tag *hogpd_env = PRF_ENV_GET(HOGPD, hogpd);

    // check that task is in idle state
    if((state & HOGPD_REQ_BUSY) == HOGPD_IDLE)
    {
        // Status
        uint8_t status = PRF_ERR_INVALID_PARAM;
        // Check provided values and check if connection exists
        if((param->conidx > BLE_CONNECTION_MAX)
                || (gapc_get_conhdl(param->conidx) == GAP_INVALID_CONHDL))
        {
            status = (param->conidx > BLE_CONNECTION_MAX) ? GAP_ERR_INVALID_PARAM : PRF_ERR_REQ_DISALLOWED;
        }
        else
        {
            status = hogpd_ntf_send(param->conidx, &(param->report));
        }

        // an error occurs inform application
        if (status != GAP_ERR_NO_ERROR)
        {
            /* Vendor addition. */
            if (hogpd_env->reports_in_flight != 0)
            {
                hogpd_env->reports_in_flight--;
            }
            // send report update response
            struct hogpd_report_upd_rsp *rsp = KE_MSG_ALLOC(HOGPD_REPORT_UPD_RSP,
                                                            src_id, dest_id, hogpd_report_upd_rsp);
            rsp->conidx = param->conidx;
            rsp->status = status;
            ke_msg_send(rsp);
        }
        // go in a busy state
        else
        {
            ke_state_set(dest_id, state | HOGPD_REQ_BUSY);
        }
    }
    // else process it later
    else
    {
        msg_status = KE_MSG_SAVED;
    }

    return (msg_status);
}
