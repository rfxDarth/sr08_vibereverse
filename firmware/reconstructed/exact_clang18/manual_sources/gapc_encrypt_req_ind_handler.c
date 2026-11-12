/* gapc_encrypt_req_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_sec/app_security_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The callback,
 * user_app_on_encrypt_req_ind, is inlined.
 */
#include "firmware/reconstructed/include/sr08_sdk_app_sec.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

int gapc_encrypt_req_ind_handler(ke_msg_id_t const msgid,
                                 struct gapc_encrypt_req_ind *param,
                                 ke_task_id_t const dest_id,
                                 ke_task_id_t const src_id)
{
    CALLBACK_ARGS_2(user_app_callbacks.app_on_encrypt_req_ind, KE_IDX_GET(src_id), param)

    return (KE_MSG_CONSUMED);
}
