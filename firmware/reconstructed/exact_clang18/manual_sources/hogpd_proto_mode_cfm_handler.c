/* hogpd_proto_mode_cfm_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The handler is
 * static in the SDK and has external linkage here.
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"

int hogpd_proto_mode_cfm_handler(ke_msg_id_t const msgid,
                                    struct hogpd_proto_mode_cfm const *param,
                                    ke_task_id_t const dest_id,
                                    ke_task_id_t const src_id)
{

    uint8_t state = ke_state_get(dest_id);

    // check that an operation is ongoing
    if((state & HOGPD_OP_BUSY) == HOGPD_OP_BUSY)
    {
        uint16_t handle = ATT_INVALID_HANDLE;
        uint8_t  status = PRF_APP_ERROR;
        struct hogpd_env_tag* hogpd_env = PRF_ENV_GET(HOGPD, hogpd);

        // check received status
        if(param->status != GAP_ERR_NO_ERROR)
        {
            status = param->status;
        }
        // perform operation sanity check
        else if((hogpd_env->op.operation == HOGPD_OP_PROT_UPDATE) && (param->conidx == hogpd_env->op.conidx))
        {
            // retrieve handle
            handle = hogpd_get_att_handle(hogpd_env, param->hid_idx, HOGPD_IDX_PROTO_MODE_VAL, 0);

            // check if answer correspond to expected one
            if(handle == hogpd_env->op.handle)
            {
                status = GAP_ERR_NO_ERROR;
                hogpd_env->svcs[param->hid_idx].proto_mode = param->proto_mode;
            }
        }

        // read operation/something failed
        if(hogpd_env->op.operation == HOGPD_OP_REPORT_READ)
        {
            //Send read response
            struct gattc_read_cfm * rd_cfm = KE_MSG_ALLOC(GATTC_READ_CFM,
                    KE_BUILD_ID(TASK_GATTC,  hogpd_env->op.conidx), dest_id, gattc_read_cfm);
            rd_cfm->handle = hogpd_env->op.handle;
            rd_cfm->status = status;
            ke_msg_send(rd_cfm);
        }
        // write operation
        else
        {
            //Send write response
            struct gattc_write_cfm * wr_cfm = KE_MSG_ALLOC(GATTC_WRITE_CFM,
                    KE_BUILD_ID(TASK_GATTC,  hogpd_env->op.conidx), dest_id, gattc_write_cfm);
            wr_cfm->handle = hogpd_env->op.handle;
            wr_cfm->status = status;
            ke_msg_send(wr_cfm);
        }

        // cleanup environment
        hogpd_env->op.operation = HOGPD_OP_NO;
        hogpd_env->op.handle    = ATT_INVALID_HDL;
        hogpd_env->op.conidx    = 0xFF;

        // go back in idle state
        ke_state_set(dest_id, state & ~HOGPD_OP_BUSY);
    }

    return KE_MSG_CONSUMED;
}
