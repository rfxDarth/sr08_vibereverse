/* hogpd_ntf_send from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link-time
 * optimisation inlined it into hogpd_report_upd_req_handler().
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"
uint8_t hogpd_ntf_send(uint8_t conidx, const struct hogpd_report_info* report)
{
    struct hogpd_env_tag* hogpd_env = PRF_ENV_GET(HOGPD, hogpd);
    uint8_t  status = GAP_ERR_NO_ERROR;
    uint16_t handle = ATT_INVALID_HANDLE;
    uint8_t  att_idx = HOGPD_IDX_NB;
    uint16_t max_report_len= 0;
    uint16_t feature_mask = 0;
    uint8_t exp_prot_mode = 0;

    // According to the report type retrieve:
    // - Attribute index
    // - Attribute max length
    // - Feature to use
    // - Expected protocol mode
    switch(report->type)
    {
        // An Input Report
        case HOGPD_REPORT:
        {
            att_idx = HOGPD_IDX_REPORT_VAL;
            max_report_len = HOGPD_REPORT_MAX_LEN;
            feature_mask = HOGPD_CFG_REPORT_NTF_EN << report->idx;
            exp_prot_mode = HOGP_REPORT_PROTOCOL_MODE;
        }break;
        // Boot Keyboard input report
        case HOGPD_BOOT_KEYBOARD_INPUT_REPORT:
        {
            att_idx = HOGPD_IDX_BOOT_KB_IN_REPORT_VAL;
            max_report_len = HOGPD_BOOT_REPORT_MAX_LEN;
            feature_mask = HOGPD_CFG_KEYBOARD;
            exp_prot_mode = HOGP_BOOT_PROTOCOL_MODE;
        }break;
        // Boot Mouse input report
        case HOGPD_BOOT_MOUSE_INPUT_REPORT:
        {
            att_idx = HOGPD_IDX_BOOT_MOUSE_IN_REPORT_VAL;
            max_report_len = HOGPD_BOOT_REPORT_MAX_LEN;
            feature_mask = HOGPD_CFG_MOUSE;
            exp_prot_mode = HOGP_BOOT_PROTOCOL_MODE;
        }break;

        default: /* Nothing to do */ break;
    }

    handle = hogpd_get_att_handle(hogpd_env, report->hid_idx, att_idx, report->idx);

    // check if attribute is found
    if(handle == ATT_INVALID_HANDLE)
    {
        // check if it's an unsupported feature
        if((feature_mask != 0) && (report->hid_idx < hogpd_env->hids_nb)
                && (report->idx < hogpd_env->svcs[report->hid_idx].nb_report)
                && ((hogpd_env->svcs[report->hid_idx].features & feature_mask) == 0))
        {
            status = PRF_ERR_FEATURE_NOT_SUPPORTED;
        }
        // or an invalid param
        else
        {
            status = PRF_ERR_INVALID_PARAM;
        }
    }
    // check if length is valid
    else if(report->length > max_report_len)
    {
        status = PRF_ERR_UNEXPECTED_LEN;
    }
    // check if notification is enabled
    else if ((hogpd_env->svcs[report->hid_idx].ntf_cfg[conidx] & feature_mask) == 0)
    {
        status = PRF_ERR_NTF_DISABLED;
    }
    // check if protocol mode is valid
    else if((hogpd_env->svcs[report->hid_idx].proto_mode != exp_prot_mode)
            && ((hogpd_env->svcs[report->hid_idx].features & HOGPD_CFG_PROTO_MODE) != 0))
    {
        status = PRF_ERR_REQ_DISALLOWED;
    }

    if(status == GAP_ERR_NO_ERROR)
    {
        // Allocate the GATT notification message
        struct gattc_send_evt_cmd *report_ntf = KE_MSG_ALLOC_DYN(GATTC_SEND_EVT_CMD,
                KE_BUILD_ID(TASK_GATTC, conidx), prf_src_task_get(&(hogpd_env->prf_env), conidx),
                gattc_send_evt_cmd, report->length);

        // Fill in the parameter structure
        report_ntf->operation = GATTC_NOTIFY;
        report_ntf->handle    = handle;
        // pack measured value in database
        report_ntf->length    = report->length;
        memcpy(report_ntf->value, report->value, report->length);
        // send notification to peer device
        ke_msg_send(report_ntf);
    }

    return status;
}

