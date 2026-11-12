/* custs1_task.c's gattc_att_info_req_ind_handler from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/ble_stack/profiles/custom/custs/src/custs1_task.c
 * (Copyright (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK; it has external linkage here, under V204's unit name.
 */
#include "firmware/reconstructed/include/sr08_sdk_custs1.h"

int custs1_gattc_att_info_req_ind_handler(ke_msg_id_t const msgid,
                                          struct gattc_att_info_req_ind *param,
                                          ke_task_id_t const dest_id,
                                          ke_task_id_t const src_id)
{
    uint8_t state = ke_state_get(dest_id);

    if (state == CUSTS1_IDLE)
    {
        // Extract the service start handle.
        struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
        // Allocate the attribute information request message to be processed by
        // the application.
        struct custs1_att_info_req *req = KE_MSG_ALLOC(CUSTS1_ATT_INFO_REQ,
                                                       TASK_APP,
                                                       dest_id,
                                                       custs1_att_info_req);
        // Fill the message.
        req->conidx  = KE_IDX_GET(src_id);
        ASSERT_ERROR((req->conidx) < BLE_CONNECTION_MAX);
        req->att_idx = param->handle - custs1_env->shdl;
        // Send the message to the application.
        ke_msg_send(req);
    }

    return (KE_MSG_CONSUMED);
}
