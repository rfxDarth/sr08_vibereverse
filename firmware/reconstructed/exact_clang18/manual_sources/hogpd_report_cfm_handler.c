/* hogpd_report_cfm_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The handler is
 * static in the SDK and has external linkage here.
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"

int hogpd_report_cfm_handler(ke_msg_id_t const msgid,
                                    struct hogpd_report_cfm const *param,
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
        else if((param->operation == hogpd_env->op.operation) && (param->conidx == hogpd_env->op.conidx))
        {
            // retrieve attribute index.
            uint8_t att_idx = 0;
            switch(param->report.type)
            {
                case HOGPD_REPORT:
                {
                    att_idx = HOGPD_IDX_REPORT_VAL;
                }break;
                case HOGPD_REPORT_MAP:
                {
                    att_idx = HOGPD_IDX_REPORT_MAP_VAL;
                }break;
                case HOGPD_BOOT_KEYBOARD_INPUT_REPORT:
                {
                    att_idx = HOGPD_IDX_BOOT_KB_IN_REPORT_VAL;
                }break;
                case HOGPD_BOOT_KEYBOARD_OUTPUT_REPORT:
                {
                    att_idx = HOGPD_IDX_BOOT_KB_OUT_REPORT_VAL;
                }break;
                case HOGPD_BOOT_MOUSE_INPUT_REPORT:
                {
                    att_idx = HOGPD_IDX_BOOT_MOUSE_IN_REPORT_VAL;
                }break;
                default: /* Nothing to do */ break;
            }

            // retrieve handle
            handle = hogpd_get_att_handle(hogpd_env, param->report.hid_idx, att_idx, param->report.idx);

            // check if answer correspond to expected one
            if(handle == hogpd_env->op.handle)
            {
                status = GAP_ERR_NO_ERROR;
            }
        }

        // read operation
        if(hogpd_env->op.operation == HOGPD_OP_REPORT_READ)
        {
            uint16_t length = (status == GAP_ERR_NO_ERROR) ? param->report.length : 0;
            //Send read response
            struct gattc_read_cfm * rd_cfm = KE_MSG_ALLOC_DYN(GATTC_READ_CFM,
                    KE_BUILD_ID(TASK_GATTC,  hogpd_env->op.conidx), dest_id, gattc_read_cfm, length);
            rd_cfm->handle = hogpd_env->op.handle;
            rd_cfm->status = status;
            rd_cfm->length = length;

            if(status == GAP_ERR_NO_ERROR)
            {
                memcpy(rd_cfm->value, param->report.value, length);
            }

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
