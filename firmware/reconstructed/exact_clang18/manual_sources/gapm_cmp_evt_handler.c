/* app_task.c's gapm_cmp_evt_handler from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/app_modules/src/app_common/app_task.c (Copyright (C)
 * Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here. V204's link inlined the
 * device configuration (lto_support/app.c) and the configured callbacks
 * (sr08_user_config.h).
 */
#include "firmware/reconstructed/include/sr08_user_config.h"

#define BLE_APP_SEC 1
#define EXCLUDE_DLG_SEC 0

int gapm_cmp_evt_handler(ke_msg_id_t const msgid,
                                struct gapm_cmp_evt const *param,
                                ke_task_id_t const dest_id,
                                ke_task_id_t const src_id)
{
    switch(param->operation)
    {
        // reset completed
        case GAPM_RESET:
        {
            if(param->status != GAP_ERR_NO_ERROR)
            {
                ASSERT_ERROR(0); // unexpected error
            }
            else
            {
                // set device configuration
                app_easy_gap_dev_configure();
            }
        }
        break;

        // device configuration updated
        case GAPM_SET_DEV_CONFIG:
        {
            if(param->status != GAP_ERR_NO_ERROR)
            {
                ASSERT_ERROR(0); // unexpected error
            }
            else
            {
                CALLBACK_ARGS_0(user_app_callbacks.app_on_set_dev_config_complete)
            }
        }
        break;

        // Non connectable advertising completed
        case GAPM_ADV_NON_CONN:
        {
            CALLBACK_ARGS_1(user_app_callbacks.app_on_adv_nonconn_complete, param->status)
        }
        break;

        // Undirected connectable advertising completed
        case GAPM_ADV_UNDIRECT:
        {
            CALLBACK_ARGS_1(user_app_callbacks.app_on_adv_undirect_complete, param->status)
        }
        break;

        // Directed connectable advertising completed
        case GAPM_ADV_DIRECT:
        case GAPM_ADV_DIRECT_LDC:
        {
            CALLBACK_ARGS_1(user_app_callbacks.app_on_adv_direct_complete, param->status)
        }
        break;

        case GAPM_SCAN_ACTIVE:
        case GAPM_SCAN_PASSIVE:
        {
            CALLBACK_ARGS_1(user_app_callbacks.app_on_scanning_completed, param->status)
        }
        break;

        case GAPM_CONNECTION_DIRECT:
            if (param->status == GAP_ERR_CANCELED)
            {
                CALLBACK_ARGS_0(user_app_callbacks.app_on_connect_failed)
            }
        break;

#if (BLE_APP_SEC) && (!EXCLUDE_DLG_SEC)
        case GAPM_RESOLV_ADDR:
            if (param->status == GAP_ERR_NOT_FOUND)
            {
                CALLBACK_ARGS_1(user_app_callbacks.app_on_addr_resolve_failed, KE_IDX_GET(src_id))
            }
        break;
#if !defined (__DA14531_01__)
// Controller Privacy Completion Events
#if (USER_CFG_ADDRESS_MODE == APP_CFG_CNTL_PRIV_RPA_PUB) || (USER_CFG_ADDRESS_MODE == APP_CFG_CNTL_PRIV_RPA_RAND)
        case GAPM_GET_RAL_SIZE:
        case GAPM_GET_RAL_LOC_ADDR:
        case GAPM_GET_RAL_PEER_ADDR:
        case GAPM_ADD_DEV_IN_RAL:
        case GAPM_RMV_DEV_FRM_RAL:
        case GAPM_CLEAR_RAL:
        {
            CALLBACK_ARGS_1(user_app_callbacks.app_on_ral_cmp_evt, param)
        }
        break;
#endif // Controller Privacy Completion Events
#endif // __DA14531_01__
#endif // (BLE_APP_SEC)

        case GAPM_CANCEL:
        default:
            if (app_process_catch_rest_cb != NULL)
            {
                app_process_catch_rest_cb(msgid, param, dest_id, src_id);
            }
        break;
    }

    return (KE_MSG_CONSUMED);
}
