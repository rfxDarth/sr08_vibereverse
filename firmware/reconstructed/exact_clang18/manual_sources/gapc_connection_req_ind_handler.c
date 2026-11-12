/* gapc_connection_req_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_common/app_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link
 * inlined user_app_connection().
 */
#include <string.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define app_env (merged_globals_56d0.app_env)
#define app_sec_env (merged_globals_53e4.app_sec_env)
#define GAP_INVALID_CONIDX (0xFF)
#define BD_ADDR_LEN 6
#define BLE_APP_SEC 1

extern void app_easy_gap_confirm(uint8_t conidx, enum gap_auth auth, uint8_t svc_changed_ind_enable);

int gapc_connection_req_ind_handler(ke_msg_id_t const msgid,
                                           struct gapc_connection_req_ind const *param,
                                           ke_task_id_t const dest_id,
                                           ke_task_id_t const src_id)
{
    // Connection Index
    if (ke_state_get(dest_id) == APP_CONNECTABLE)
    {
        uint8_t conidx = KE_IDX_GET(src_id);
        ASSERT_WARNING(conidx < APP_EASY_MAX_ACTIVE_CONNECTION);
        app_env[conidx].conidx = conidx;

        if (conidx != GAP_INVALID_CONIDX)
        {
            app_env[conidx].connection_active = true;
            ke_state_set(TASK_APP, APP_CONNECTED);
            // Retrieve the connection info from the parameters
            app_env[conidx].conhdl = param->conhdl;
            app_env[conidx].peer_addr_type = param->peer_addr_type;
            memcpy(app_env[conidx].peer_addr.addr, param->peer_addr.addr, BD_ADDR_LEN);
            #if (BLE_APP_SEC)
                // send connection confirmation
                app_easy_gap_confirm(conidx, (enum gap_auth) app_sec_env[conidx].auth, 1);
            #else
                app_easy_gap_confirm(conidx, GAP_AUTH_REQ_NO_MITM_NO_BOND, 1);
            #endif
        }
        CALLBACK_ARGS_2(user_app_callbacks.app_on_connection, conidx, param)
    }
    else
    {
        // APP_CONNECTABLE state is used to wait the GAP_LE_CREATE_CONN_REQ_CMP_EVT message
        ASSERT_ERROR(0);
    }

    return (KE_MSG_CONSUMED);
}
