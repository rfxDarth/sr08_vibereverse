/* gapc_set_dev_info_req_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_common/app_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link
 * inlined the default device-information callbacks (app_default_handlers.c).
 */
#include <string.h>
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define ASSERT_ERROR(x)

int gapc_set_dev_info_req_ind_handler(ke_msg_id_t msgid,
                                             struct gapc_set_dev_info_req_ind *param,
                                             ke_task_id_t const dest_id,
                                             ke_task_id_t const src_id)
{
    uint8_t status = GAP_ERR_REJECTED;
    uint8_t conidx = KE_IDX_GET(src_id);

    CALLBACK_ARGS_2(user_app_callbacks.app_on_set_dev_info, param, &status)

    // Set Device configuration
    struct gapc_set_dev_info_cfm* cfm = KE_MSG_ALLOC(GAPC_SET_DEV_INFO_CFM,
                                                     KE_BUILD_ID(TASK_GAPC, conidx),
                                                     TASK_APP,
                                                     gapc_set_dev_info_cfm);

    // Local device accept or reject device info modification
    cfm->status = status;
    cfm->req = param->req;

    // Send message
    ke_msg_send(cfm);

    return (KE_MSG_CONSUMED);
}
