/* gapc_bond_req_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_sec/app_security_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link
 * inlined the default pairing-request and LTK-exchange callbacks; it sets no
 * TK, IRK or CSRK callback.
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define app_env (merged_globals_56d0.app_env)
#define app_sec_env (merged_globals_53e4.app_sec_env)
#define NOKEY_PRESENT 0

int gapc_bond_req_ind_handler(ke_msg_id_t const msgid,
                                     struct gapc_bond_req_ind *param,
                                     ke_task_id_t const dest_id,
                                     ke_task_id_t const src_id)
{
    uint8_t conidx = KE_IDX_GET(src_id);
    switch(param->request)
    {
        // Bond Pairing request
        case GAPC_PAIRING_REQ:
        {
            app_env[conidx].pairing_in_progress = true;
            app_sec_env[conidx].valid_keys = NOKEY_PRESENT;
            CALLBACK_ARGS_2(user_app_callbacks.app_on_pairing_request, conidx, param)
        }
        break;

        // Retrieve Temporary Key (TK)
        case GAPC_TK_EXCH:
        {
            CALLBACK_ARGS_2(user_app_callbacks.app_on_tk_exch, conidx, param)
        }
        break;

        // Retrieve Identity Resolving Key (IRK)
        case GAPC_IRK_EXCH:
        {
            CALLBACK_ARGS_1(user_app_callbacks.app_on_irk_exch, param)
        }
        break;

        // Retrieve Connection Signature Resolving Key (CSRK)
        case GAPC_CSRK_EXCH:
        {
            CALLBACK_ARGS_2(user_app_callbacks.app_on_csrk_exch, conidx, param)
        }
        break;

        // Retrieve Long Term Key (LTK)
        case GAPC_LTK_EXCH:
        {
            CALLBACK_ARGS_2(user_app_callbacks.app_on_ltk_exch, conidx, param)
        }
        break;

        default:
        {
            ASSERT_ERROR(0);
        }
        break;
    }
    return (KE_MSG_CONSUMED);
}
