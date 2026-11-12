/* app_easy_gap_confirm from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_common/app.c (Copyright (C) Dialog Semiconductor /
 * Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). Every V204 caller
 * passes svc_changed_ind_enable = 1, which V204's link propagated into it.
 */
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"

void app_easy_gap_confirm(uint8_t conidx, enum gap_auth auth, uint8_t svc_changed_ind_enable)
{
    // confirm connection
    struct gapc_connection_cfm *cfm = app_connect_cfm_msg_create(conidx);

    cfm->auth = auth;
    cfm->svc_changed_ind_enable = svc_changed_ind_enable;

    // Send the message
    ke_msg_send(cfm);
}
