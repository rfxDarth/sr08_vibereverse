/* app_task.c's gapm_device_ready_ind_handler from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/app_modules/src/app_common/app_task.c (Copyright (C)
 * Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here.
 */
#include "firmware/reconstructed/include/sr08_sdk_app.h"

int gapm_device_ready_ind_handler(ke_msg_id_t const msgid,
                                         void const *param,
                                         ke_task_id_t const dest_id,
                                         ke_task_id_t const src_id)
{
    if (ke_state_get(dest_id) == APP_DISABLED)
    {
        // reset the lower layers.
        app_gapm_reset_op();
    }
    else
    {
        // APP_DISABLED state is used to wait the GAP_READY_EVT message
        ASSERT_ERROR(0);
    }

    return (KE_MSG_CONSUMED);
}
