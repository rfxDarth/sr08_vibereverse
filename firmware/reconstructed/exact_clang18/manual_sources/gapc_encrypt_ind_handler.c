/* gapc_encrypt_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_sec/app_security_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204 sets no
 * app_on_encrypt_ind callback, so the callback call folds away.
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_app_sec.h"
#include "firmware/reconstructed/include/sr08_sdk_kernel.h"

#define app_sec_env (merged_globals_53e4.app_sec_env)

int gapc_encrypt_ind_handler(ke_msg_id_t const msgid,
                             struct gapc_encrypt_ind *param,
                             ke_task_id_t const dest_id,
                             ke_task_id_t const src_id)
{
    uint8_t conidx = KE_IDX_GET(src_id);
    app_sec_env[conidx].auth = param->auth;

    return (KE_MSG_CONSUMED);
}
