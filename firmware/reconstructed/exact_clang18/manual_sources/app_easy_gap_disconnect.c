/* app_easy_gap_disconnect from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_common/app.c (Copyright (C) Dialog Semiconductor /
 * Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"

#define app_env (merged_globals_56d0.app_env)

void app_easy_gap_disconnect(uint8_t conidx)
{
    struct gapc_disconnect_cmd *cmd = app_disconnect_msg_create(conidx);

    cmd->reason = CO_ERROR_REMOTE_USER_TERM_CON;
    app_env[conidx].connection_active=false;

    // Send the message
    app_disconnect_msg_send(cmd);
}
