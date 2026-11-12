/* default_app_on_set_dev_config_complete and the device-information
 * defaults from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/app_modules/src/app_default_hnd/app_default_handlers.c
 * (Copyright (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), without the
 * controller-privacy branches V204's address mode leaves out. V204's link
 * inlined them into the app_task.c handlers.
 */
#include <string.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define device_info (merged_globals_574c.device_info)
#define app_env (merged_globals_56d0.app_env)
#define GAP_INVALID_CONIDX (0xFF)

void default_app_on_set_dev_config_complete(void)
{
    // Add the first required service in the database
    if (app_db_init_start())
    {
        // No more service to add, start advertising
        CALLBACK_ARGS_0(user_default_app_operations.default_operation_adv)
    }
}

void default_app_on_get_dev_name(struct app_device_name* device_name)
{
    device_name->length = device_info.dev_name.length;
    memcpy(device_name->name, device_info.dev_name.name , device_name->length);
}

void default_app_on_get_dev_appearance(uint16_t* appearance)
{
    *appearance = device_info.appearance;
}

void default_app_on_get_dev_slv_pref_params(struct gap_slv_pref* slv_params)
{
    slv_params->con_intv_min = MS_TO_DOUBLESLOTS(10);
    slv_params->con_intv_max = MS_TO_DOUBLESLOTS(20);
    slv_params->slave_latency = 0;
    slv_params->conn_timeout = MS_TO_TIMERUNITS(1250);
}

void default_app_on_set_dev_info(struct gapc_set_dev_info_req_ind const *param, uint8_t* status)
{
    switch (param->req)
    {
        case GAPC_DEV_NAME:
        {
            device_info.dev_name.length = param->info.name.length;
            memcpy(device_info.dev_name.name, param->info.name.value, device_info.dev_name.length);
            *status = GAP_ERR_NO_ERROR;
        }
        break;
        case GAPC_DEV_APPEARANCE:
        {
            device_info.appearance = param->info.appearance;
            *status = GAP_ERR_NO_ERROR;
        }
        break;
        default:
        {
            *status = GAP_ERR_REJECTED;
        }
        break;
    }
}

/* V204 has no advertising timeout, no profile enable functions and no
 * security request on connection, so only the advertising restart remains. */
void default_app_on_connection(uint8_t conidx, struct gapc_connection_req_ind const *param)
{
    if (app_env[conidx].conidx != GAP_INVALID_CONIDX)
    {
    }
    else
    {
       // No connection has been established, restart advertising
       CALLBACK_ARGS_0(user_default_app_operations.default_operation_adv)
    }
}

extern void app_easy_security_send_pairing_rsp(uint8_t conidx, struct gapc_bond_req_ind const *param);
extern void app_sec_gen_ltk(uint8_t conidx, uint8_t key_size);
extern void app_easy_security_set_ltk_exch_from_sec_env(uint8_t conidx);
extern void app_easy_security_ltk_exch(uint8_t conidx);

void default_app_on_pairing_request(uint8_t conidx, struct gapc_bond_req_ind const *param)
{
    app_easy_security_send_pairing_rsp(conidx, param);
}

void default_app_on_ltk_exch(uint8_t conidx, struct gapc_bond_req_ind const *param)
{
    // generate ltk and store it to sec_env
    app_sec_gen_ltk(conidx, param->data.key_size);
    //copy the parameters in the message
    app_easy_security_set_ltk_exch_from_sec_env(conidx);
    //send the message
    app_easy_security_ltk_exch(conidx);
}
