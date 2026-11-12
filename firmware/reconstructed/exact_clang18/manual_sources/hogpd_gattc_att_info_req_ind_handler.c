/* hogpd_task.c's gattc_att_info_req_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The handler is
 * static in the SDK and has external linkage here.
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"

int hogpd_gattc_att_info_req_ind_handler(ke_msg_id_t const msgid,
                                      struct gattc_att_info_req_ind const *param,
                                      ke_task_id_t const dest_id,
                                      ke_task_id_t const src_id)
{
    uint8_t hid_idx, att_idx, report_idx;
    struct gattc_att_info_cfm * cfm;
    struct hogpd_env_tag* hogpd_env = PRF_ENV_GET(HOGPD, hogpd);
    // retrieve attribute requested
    uint8_t status = hogpd_get_att_idx(hogpd_env, param->handle, &hid_idx, &att_idx, &report_idx);

    //Send write response
    cfm = KE_MSG_ALLOC(GATTC_ATT_INFO_CFM, src_id, dest_id, gattc_att_info_cfm);
    cfm->handle = param->handle;

    if(status == GAP_ERR_NO_ERROR)
    {
        // check which attribute is requested by peer device
        switch(att_idx)
        {
            case HOGPD_IDX_BOOT_KB_IN_REPORT_VAL:
            case HOGPD_IDX_BOOT_KB_OUT_REPORT_VAL:
            case HOGPD_IDX_BOOT_MOUSE_IN_REPORT_VAL:
            case HOGPD_IDX_REPORT_VAL:
            {
                cfm->length = 0;
            }break;

            // Notification configuration
            case HOGPD_IDX_BOOT_KB_IN_REPORT_NTF_CFG:
            case HOGPD_IDX_BOOT_MOUSE_IN_REPORT_NTF_CFG:
            case HOGPD_IDX_REPORT_NTF_CFG:
            {
                cfm->length = 2;
            }break;

            default:
            {
                cfm->length = 0;
                status = ATT_ERR_WRITE_NOT_PERMITTED;
            } break;
        }
    }

    cfm->status = status;

    ke_msg_send(cfm);

    return (KE_MSG_CONSUMED);
}
