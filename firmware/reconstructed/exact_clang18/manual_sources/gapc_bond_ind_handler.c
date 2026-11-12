/* gapc_bond_ind_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_sec/app_security_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link
 * inlined user_app_on_pairing_succeeded and the catch-rest callback. Its
 * address mode uses no resolving list, and ENABLE_SMP_SECURE is set.
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define app_env (merged_globals_56d0.app_env)
#define app_sec_env (merged_globals_53e4.app_sec_env)
#define ENABLE_SMP_SECURE 1
#define BD_ADDR_LEN 6
#define USER_CFG_ADDRESS_MODE 0
#define APP_CFG_CNTL_PRIV_RPA_PUB 1
#define APP_CFG_CNTL_PRIV_RPA_RAND 2

extern void app_easy_gap_disconnect(uint8_t conidx);

int gapc_bond_ind_handler(ke_msg_id_t const msgid,
                                 struct gapc_bond_ind *param,
                                 ke_task_id_t const dest_id,
                                 ke_task_id_t const src_id)
{
    uint8_t conidx = KE_IDX_GET(src_id);
    switch(param->info)
    {
        // Bond Pairing request
        case GAPC_PAIRING_SUCCEED:
        {
            // Save Authentication level
            app_sec_env[conidx].auth = (enum gap_auth) param->data.auth;

            if (app_sec_env[conidx].auth & GAP_AUTH_BOND)
            {
                memcpy(&app_sec_env[conidx].peer_bdaddr.addr, app_env[conidx].peer_addr.addr, BD_ADDR_LEN);
                app_sec_env[conidx].peer_bdaddr.addr_type = app_env[conidx].peer_addr_type;
            }
            CALLBACK_ARGS_1(user_app_callbacks.app_on_pairing_succeeded, conidx)
            app_env[conidx].pairing_in_progress = false;
        }
        break;

        case GAPC_PAIRING_FAILED:
        {
            app_env[conidx].pairing_in_progress = false;
            // Clear bond data
            app_sec_env[conidx].auth = GAP_AUTH_NONE;
            // Disconnect
            app_easy_gap_disconnect(conidx);
        }
        break;

        case (GAPC_IRK_EXCH):
            // Store Remote IRK to security environment
            app_sec_env[conidx].rirk = param->data.irk;
            app_sec_env[conidx].valid_keys |= RIRK_PRESENT;
#if !defined (__DA14531_01__)
#if (USER_CFG_ADDRESS_MODE == APP_CFG_CNTL_PRIV_RPA_PUB) || (USER_CFG_ADDRESS_MODE == APP_CFG_CNTL_PRIV_RPA_RAND)
            struct gap_ral_dev_info dev_info;
            memcpy(&dev_info.addr, &param->data.irk.addr.addr.addr, BD_ADDR_LEN*sizeof(uint8_t));
            dev_info.addr_type = param->data.irk.addr.addr_type;
            memcpy(&dev_info.peer_irk, &param->data.irk.irk.key, KEY_LEN*sizeof(uint8_t));
            memcpy(&dev_info.local_irk, user_gapm_conf.irk, KEY_LEN*sizeof(uint8_t));
            app_easy_security_ral_op(APP_RMV_DEV_FRM_RAL, &dev_info);
            app_easy_security_ral_op(APP_ADD_DEV_IN_RAL, &dev_info);
#endif
#endif // __DA14531_01__
        break;

        case (GAPC_CSRK_EXCH):
            // Store Remote CSRK to security environment
            app_sec_env[conidx].rcsrk = param->data.csrk;
            app_sec_env[conidx].valid_keys |= RCSRK_PRESENT;
        break;

        case (GAPC_LTK_EXCH):
#if (ENABLE_SMP_SECURE)
            // In case of Secure Connection (ediv = 0), store LTK to app_sec_env
            if (param->data.ltk.ediv == 0)
            {
                app_sec_env[conidx].ltk = param->data.ltk;
                app_sec_env[conidx].valid_keys |= LTK_PRESENT;
                #if defined (CFG_PRINTF)
                // Print LTK for debugging (e.g. when using a sniffer)
                arch_printf(" \r\n LTK: 0x");
                for (int count = 0; count < sizeof(struct gap_sec_key); count ++)
                    arch_printf("%02x", app_sec_env[conidx].ltk.ltk.key[15 - count]);
                #endif
            }
            // In case of Legacy Pairing (ediv != 0) RLTK has been sent by initiator for future reversed-role usage
            else
#endif // ENABLE_SMP_SECURE
            {
                app_sec_env[conidx].rltk = param->data.ltk;
                app_sec_env[conidx].valid_keys |= RLTK_PRESENT;
            }
        break;

        default:
        {
            if (app_process_catch_rest_cb != NULL)
            {
                app_process_catch_rest_cb(msgid, param, dest_id, src_id);
            }
        }
        break;
    }
    return (KE_MSG_CONSUMED);
}
