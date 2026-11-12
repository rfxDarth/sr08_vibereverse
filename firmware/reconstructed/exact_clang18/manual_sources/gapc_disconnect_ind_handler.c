/* gapc_disconnect_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_common/app_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), with V204's
 * addition: the connection's encrypted flag is cleared. V204's link inlined
 * user_app_disconnect().
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define app_env (merged_globals_56d0.app_env)
#define GAP_INVALID_CONIDX (0xFF)

int gapc_disconnect_ind_handler(ke_msg_id_t const msgid,
                                       struct gapc_disconnect_ind const *param,
                                       ke_task_id_t const dest_id,
                                       ke_task_id_t const src_id)
{
    uint8_t state = ke_state_get(dest_id);
    uint8_t conidx = KE_IDX_GET(src_id);

    if (state == APP_CONNECTED)
    {
        app_env[0].encrypted = false;
        app_env[conidx].conidx = GAP_INVALID_CONIDX;
        app_env[conidx].connection_active = false;
        CALLBACK_ARGS_1(user_app_callbacks.app_on_disconnect, param)
    }
    else
    {
        // We are not in Connected State
        ASSERT_ERROR(0);
    }

    return (KE_MSG_CONSUMED);
}
