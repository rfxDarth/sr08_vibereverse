/* hogpd_task.c's gattc_write_req_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here.
 */
#include <string.h>
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"

int hogpd_gattc_write_req_ind_handler(ke_msg_id_t const msgid,
                                      struct gattc_write_req_ind const *param,
                                      ke_task_id_t const dest_id,
                                      ke_task_id_t const src_id)
{
    int msg_status = KE_MSG_CONSUMED;
    uint8_t state = ke_state_get(dest_id);

    // check that task is in idle state
    if((state & HOGPD_OP_BUSY) == HOGPD_IDLE)
    {
        uint8_t hid_idx, att_idx, report_idx;

        // used to know if gatt_write confirmation should be sent immediately
        uint8_t conidx = KE_IDX_GET(src_id);

        struct hogpd_env_tag* hogpd_env = PRF_ENV_GET(HOGPD, hogpd);
        // retrieve attribute requested
        uint8_t status = hogpd_get_att_idx(hogpd_env, param->handle, &hid_idx, &att_idx, &report_idx);


        // prepare operation info
        hogpd_env->op.conidx    = conidx;
        hogpd_env->op.operation = HOGPD_OP_NO;
        hogpd_env->op.handle    = param->handle;

        if(status == GAP_ERR_NO_ERROR)
        {

            // check which attribute is requested by peer device
            switch(att_idx)
            {
                // Control point value updated
                case HOGPD_IDX_HID_CTNL_PT_VAL:
                {
                    // send control point indication
                    struct hogpd_ctnl_pt_ind *cp_ind = KE_MSG_ALLOC(HOGPD_CTNL_PT_IND,
                                                                prf_dst_task_get(&(hogpd_env->prf_env), conidx), dest_id,
                                                                hogpd_ctnl_pt_ind);
                    cp_ind->conidx      = conidx;
                    cp_ind->hid_idx     = hid_idx;
                    cp_ind->hid_ctnl_pt = param->value[0];
                    ke_msg_send(cp_ind);
                }break;

                // Modification of protocol mode requested
                case HOGPD_IDX_PROTO_MODE_VAL:
                {
                    // send control point indication
                    struct hogpd_proto_mode_req_ind *prot_ind = KE_MSG_ALLOC(HOGPD_PROTO_MODE_REQ_IND,
                                                                prf_dst_task_get(&(hogpd_env->prf_env), conidx), dest_id,
                                                                hogpd_proto_mode_req_ind);
                    prot_ind->conidx      = conidx;
                    prot_ind->operation   = HOGPD_OP_PROT_UPDATE;
                    prot_ind->hid_idx     = hid_idx;
                    prot_ind->proto_mode  = param->value[0];
                    ke_msg_send(prot_ind);

                    hogpd_env->op.operation = HOGPD_OP_PROT_UPDATE;
                }break;

                // Modification of report value requested
                case HOGPD_IDX_BOOT_KB_IN_REPORT_VAL:
                case HOGPD_IDX_BOOT_KB_OUT_REPORT_VAL:
                case HOGPD_IDX_BOOT_MOUSE_IN_REPORT_VAL:
                case HOGPD_IDX_REPORT_VAL:
                {
                    // send report indication
                    struct hogpd_report_req_ind *report_ind = KE_MSG_ALLOC_DYN(HOGPD_REPORT_REQ_IND,
                            prf_dst_task_get(&(hogpd_env->prf_env), conidx), dest_id,
                            hogpd_report_req_ind, param->length);

                    report_ind->conidx         = conidx;
                    report_ind->operation      = HOGPD_OP_REPORT_WRITE;
                    report_ind->report.length  = param->length;
                    report_ind->report.hid_idx = hid_idx;
                    report_ind->report.idx     = report_idx;

                    memcpy(report_ind->report.value, param->value, param->length);

                    // retrieve report type
                    switch(att_idx)
                    {
                        // An Input Report
                        case HOGPD_IDX_BOOT_KB_IN_REPORT_VAL:
                        {
                            report_ind->report.type = HOGPD_BOOT_KEYBOARD_INPUT_REPORT;
                        }break;
                        // Boot Keyboard input report
                        case HOGPD_IDX_BOOT_KB_OUT_REPORT_VAL:
                        {
                            report_ind->report.type = HOGPD_BOOT_KEYBOARD_OUTPUT_REPORT;
                        }break;
                        // Boot Mouse input report
                        case HOGPD_IDX_BOOT_MOUSE_IN_REPORT_VAL:
                        {
                            report_ind->report.type = HOGPD_BOOT_MOUSE_INPUT_REPORT;
                        }break;
                        // Normal report
                        case HOGPD_IDX_REPORT_VAL:
                        {
                            report_ind->report.type = HOGPD_REPORT;
                        }break;

                        default:
                        {
                            ASSERT_ERROR(0);
                        }break;
                    }

                    ke_msg_send(report_ind);

                    hogpd_env->op.operation = HOGPD_OP_REPORT_WRITE;
                }break;

                // Notification configuration update
                case HOGPD_IDX_BOOT_KB_IN_REPORT_NTF_CFG:
                case HOGPD_IDX_BOOT_MOUSE_IN_REPORT_NTF_CFG:
                case HOGPD_IDX_REPORT_NTF_CFG:
                {
                    uint16_t ntf_cfg = co_read16p(param->value);
                    status = hogpd_ntf_cfg_ind_send(conidx, hid_idx, att_idx, report_idx, ntf_cfg);
                }break;

                default:
                {
                    status = PRF_APP_ERROR;
                } break;
            }
        }

        // check if peer operation is over
        if(hogpd_env->op.operation == HOGPD_OP_NO)
        {
            //Send write response
            struct gattc_write_cfm * cfm = KE_MSG_ALLOC(GATTC_WRITE_CFM, src_id, dest_id, gattc_write_cfm);
            cfm->handle = param->handle;
            cfm->status = status;
            ke_msg_send(cfm);
        }
        else
        {
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
