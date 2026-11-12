/* hogpd_task.c's gattc_cmp_evt_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here. V204's vendor added the
 * block marked below.
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"

int hogpd_gattc_cmp_evt_handler(ke_msg_id_t const msgid,  struct gattc_cmp_evt const *param,
                                 ke_task_id_t const dest_id, ke_task_id_t const src_id)
{
    if(param->operation == GATTC_NOTIFY)
    {
        uint8_t conidx = KE_IDX_GET(src_id);
        struct hogpd_env_tag* hogpd_env = PRF_ENV_GET(HOGPD, hogpd);

        /* Vendor addition. */
        if (hogpd_env->reports_in_flight != 0)
        {
            hogpd_env->reports_in_flight--;
        }

        // send report update response
        struct hogpd_report_upd_rsp *rsp = KE_MSG_ALLOC(HOGPD_REPORT_UPD_RSP,
                                                         prf_dst_task_get(&(hogpd_env->prf_env), conidx),
                                                         dest_id, hogpd_report_upd_rsp);
        rsp->conidx = conidx;
        rsp->status = param->status;
        ke_msg_send(rsp);

        // go back in to idle mode
        ke_state_set(dest_id, ke_state_get(dest_id) & ~HOGPD_REQ_BUSY);
    } // else ignore the message

    return (KE_MSG_CONSUMED);
}
