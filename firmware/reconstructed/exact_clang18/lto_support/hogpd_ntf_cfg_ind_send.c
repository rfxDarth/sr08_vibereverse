/* hogpd_ntf_cfg_ind_send from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link-time
 * optimisation inlined it into hogpd_gattc_write_req_ind_handler(). V204 adds
 * one check before the indication is sent: while a connected peer has not
 * encrypted the link (and is not pairing), the write fails with
 * ATT_ERR_INSUFF_AUTHEN, although the configuration has already been updated.
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

#define app_env (merged_globals_56d0.app_env)
#define ATT_ERR_INSUFF_AUTHEN 0x05

uint8_t hogpd_ntf_cfg_ind_send(uint8_t conidx, uint8_t svc_idx, uint8_t att_idx, uint8_t report_idx, uint16_t ntf_cfg)
{
    // Status
    uint8_t status = GAP_ERR_NO_ERROR;
    uint16_t mask = 0;

    struct hogpd_env_tag* hogpd_env = PRF_ENV_GET(HOGPD, hogpd);

    // set notification config update mask
    switch(att_idx)
    {
        // An Input Report
        case HOGPD_IDX_REPORT_NTF_CFG:
        {
            mask = HOGPD_CFG_REPORT_NTF_EN << report_idx;
        }break;
        // Boot Keyboard input report
        case HOGPD_IDX_BOOT_KB_IN_REPORT_NTF_CFG:
        {
            mask = HOGPD_CFG_KEYBOARD;
        }break;
        // Boot Mouse input report
        case HOGPD_IDX_BOOT_MOUSE_IN_REPORT_NTF_CFG:
        {
            mask = HOGPD_CFG_MOUSE;
        }break;

        default:
        {
            ASSERT_ERROR(0);
        }break;
    }

    // Stop notification
    if (ntf_cfg == PRF_CLI_STOP_NTFIND)
    {
        hogpd_env->svcs[svc_idx].ntf_cfg[conidx] &= ~mask;
    }
    // Start notification
    else if(ntf_cfg == PRF_CLI_START_NTF)
    {
        hogpd_env->svcs[svc_idx].ntf_cfg[conidx] |= mask;
    }
    // Provided value is incorrect
    else
    {
        status = PRF_APP_ERROR;
    }

    /* Vendor: refuse while a connected peer has not encrypted the link. */
    if (app_env[conidx].connection_active && !app_env[conidx].pairing_in_progress && !app_env[conidx].encrypted)
    {
        status = ATT_ERR_INSUFF_AUTHEN;
    }

    // inform application about updated notification configuration
    if(status == GAP_ERR_NO_ERROR)
    {
        // Allocate the GATT notification message
        struct hogpd_ntf_cfg_ind *ntf_cfg_ind = KE_MSG_ALLOC(HOGPD_NTF_CFG_IND,
                                                    prf_dst_task_get(&(hogpd_env->prf_env), conidx),
                                                    prf_src_task_get(&(hogpd_env->prf_env), conidx),
                                                    hogpd_ntf_cfg_ind);

        // Fill in the parameter structure
        ntf_cfg_ind->conidx = conidx;

        for(svc_idx = 0 ; svc_idx < HOGPD_NB_HIDS_INST_MAX; svc_idx++)
        {
            ntf_cfg_ind->ntf_cfg[svc_idx] = hogpd_env->svcs[svc_idx].ntf_cfg[conidx];
        }

        // send indication to application
        ke_msg_send(ntf_cfg_ind);
    }

    return status;
}
