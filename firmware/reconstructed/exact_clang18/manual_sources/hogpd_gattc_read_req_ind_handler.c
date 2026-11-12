/* hogpd_task.c's gattc_read_req_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here.
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"

int hogpd_gattc_read_req_ind_handler(ke_msg_id_t const msgid,
                                      struct gattc_read_req_ind const *param,
                                      ke_task_id_t const dest_id,
                                      ke_task_id_t const src_id)
{
    int msg_status = KE_MSG_CONSUMED;
    uint8_t state = ke_state_get(dest_id);

    // check that task is in idle state
    if((state & HOGPD_OP_BUSY) == HOGPD_IDLE)
    {
        uint8_t hid_idx, att_idx, report_idx;
        bool finished = true;
        uint8_t report_type = 0;
        uint16_t value = 0;
        uint16_t length = 0;

        struct hogpd_env_tag* hogpd_env = PRF_ENV_GET(HOGPD, hogpd);

        // used to know if gatt_write confirmation should be sent immediately
        uint8_t conidx = KE_IDX_GET(src_id);

        // retrieve attribute requested
        uint8_t status = hogpd_get_att_idx(hogpd_env, param->handle, &hid_idx, &att_idx, &report_idx);

        if(status == GAP_ERR_NO_ERROR)
        {
            // check which attribute is requested by peer device
            switch(att_idx)
            {
                //  ------------ READ report value requested
                case HOGPD_IDX_BOOT_KB_IN_REPORT_VAL:
                {
                    report_type = HOGPD_BOOT_KEYBOARD_INPUT_REPORT;
                    finished = false;
                }break;
                case HOGPD_IDX_BOOT_KB_OUT_REPORT_VAL:
                {
                    report_type = HOGPD_BOOT_KEYBOARD_OUTPUT_REPORT;
                    finished = false;
                }break;
                case HOGPD_IDX_BOOT_MOUSE_IN_REPORT_VAL:
                {
                    report_type = HOGPD_BOOT_MOUSE_INPUT_REPORT;
                    finished = false;
                }break;
                case HOGPD_IDX_REPORT_VAL:
                {
                    report_type = HOGPD_REPORT;
                    finished = false;
                }break;
                case HOGPD_IDX_REPORT_MAP_VAL:
                {
                    report_type = HOGPD_REPORT_MAP;
                    finished = false;
                }break;

                //  ------------ READ active protocol mode
                case HOGPD_IDX_PROTO_MODE_VAL:
                {
                    value =  hogpd_env->svcs[hid_idx].proto_mode;
                    length = sizeof(uint8_t);
                }break;

                //  ------------ READ Notification configuration
                case HOGPD_IDX_BOOT_KB_IN_REPORT_NTF_CFG:
                {
                    value = ((hogpd_env->svcs[hid_idx].ntf_cfg[conidx] & HOGPD_CFG_KEYBOARD) != 0)
                            ? PRF_CLI_START_NTF : PRF_CLI_STOP_NTFIND;

                    length = sizeof(uint16_t);
                }break;
                case HOGPD_IDX_BOOT_MOUSE_IN_REPORT_NTF_CFG:
                {
                    value = ((hogpd_env->svcs[hid_idx].ntf_cfg[conidx] & HOGPD_CFG_MOUSE) != 0)
                            ? PRF_CLI_START_NTF : PRF_CLI_STOP_NTFIND;
                    length = sizeof(uint16_t);
                }break;
                case HOGPD_IDX_REPORT_NTF_CFG:
                {
                    value = ((hogpd_env->svcs[hid_idx].ntf_cfg[conidx] & (HOGPD_CFG_REPORT_NTF_EN << report_idx)) != 0)
                            ? PRF_CLI_START_NTF : PRF_CLI_STOP_NTFIND;
                    length = sizeof(uint16_t);
                }break;

                default:
                {
                    status = PRF_APP_ERROR;
                } break;
            }
        }

        // check if peer operation is over
        if(finished)
        {
            //Send write response
            struct gattc_read_cfm * cfm = KE_MSG_ALLOC_DYN(GATTC_READ_CFM, src_id, dest_id, gattc_read_cfm, length);
            cfm->handle = param->handle;
            cfm->status = status;
            cfm->length = length;
            memcpy(cfm->value, &value, length);
            ke_msg_send(cfm);
        }
        else
        {
            // send report indication
            struct hogpd_report_req_ind *report_ind = KE_MSG_ALLOC(HOGPD_REPORT_REQ_IND,
                    prf_dst_task_get(&(hogpd_env->prf_env), conidx), dest_id,
                    hogpd_report_req_ind);

            report_ind->conidx         = conidx;
            report_ind->operation      = HOGPD_OP_REPORT_READ;
            report_ind->report.length  = 0;
            report_ind->report.hid_idx = hid_idx;
            report_ind->report.type    = report_type;
            report_ind->report.idx     = report_idx;

            ke_msg_send(report_ind);

            hogpd_env->op.conidx    = conidx;
            hogpd_env->op.operation = HOGPD_OP_REPORT_READ;
            hogpd_env->op.handle    = param->handle;

            // go into operation busy state
            ke_state_set(dest_id, state | HOGPD_OP_BUSY);
        }
    }
    // else process it later
    else
    {
        msg_status = KE_MSG_SAVED;
    }

    return (msg_status);
}
