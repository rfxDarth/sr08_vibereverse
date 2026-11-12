/* gapc_get_dev_info_req_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_common/app_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link
 * inlined the default device-information callbacks (app_default_handlers.c).
 */
#include <string.h>
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define ASSERT_ERROR(x)

int gapc_get_dev_info_req_ind_handler(ke_msg_id_t msgid,
                                             struct gapc_get_dev_info_req_ind *param,
                                             ke_task_id_t const dest_id,
                                             ke_task_id_t const src_id)
{
    switch(param->req)
    {
        case GAPC_DEV_NAME:
        {
            ASSERT_ERROR(USER_DEVICE_NAME_LEN <= BD_NAME_SIZE);

            struct app_device_name device_name;

            CALLBACK_ARGS_1(user_app_callbacks.app_on_get_dev_name, &device_name)

            struct gapc_get_dev_info_cfm *cfm = KE_MSG_ALLOC_DYN(GAPC_GET_DEV_INFO_CFM,
                                                                 src_id,
                                                                 dest_id,
                                                                 gapc_get_dev_info_cfm,
                                                                 device_name.length);
            cfm->req = GAPC_DEV_NAME;
            cfm->info.name.length = device_name.length;
            memcpy(cfm->info.name.value, device_name.name , cfm->info.name.length);

            ke_msg_send(cfm);
        }
        break;

        case GAPC_DEV_APPEARANCE:
        {
            uint16_t appearance = 0x0000;

            CALLBACK_ARGS_1(user_app_callbacks.app_on_get_dev_appearance, &appearance)

            struct gapc_get_dev_info_cfm *cfm = KE_MSG_ALLOC(GAPC_GET_DEV_INFO_CFM,
                                                             src_id,
                                                             dest_id,
                                                             gapc_get_dev_info_cfm);
            cfm->req = GAPC_DEV_APPEARANCE;
            cfm->info.appearance = appearance;

            ke_msg_send(cfm);
        }
        break;

        case GAPC_DEV_SLV_PREF_PARAMS:
        {
            struct gap_slv_pref slv_params;

            struct gapc_get_dev_info_cfm *cfm = KE_MSG_ALLOC(GAPC_GET_DEV_INFO_CFM,
                                                             src_id,
                                                             dest_id,
                                                             gapc_get_dev_info_cfm);

            CALLBACK_ARGS_1(user_app_callbacks.app_on_get_dev_slv_pref_params, &slv_params)

            cfm->req = GAPC_DEV_SLV_PREF_PARAMS;
            cfm->info.slv_params.con_intv_min = slv_params.con_intv_min;
            cfm->info.slv_params.con_intv_max = slv_params.con_intv_max;
            cfm->info.slv_params.slave_latency = slv_params.slave_latency;
            cfm->info.slv_params.conn_timeout = slv_params.conn_timeout;

            ke_msg_send(cfm);
        }
        break;

        default: /* Do Nothing */ break;
    }

    return (KE_MSG_CONSUMED);
}
