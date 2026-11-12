/* gapc_cmp_evt_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_common/app_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), as V204's vendor
 * changed it: a rejected connection-parameter update is reported on the UART
 * and retried, with longer intervals when the peer rejected them. V204 sets no
 * app_on_update_params_complete callback.
 */
#include "firmware/reconstructed/include/sr08_device_settings.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

/* rwble_hl_error.h */
#define CO_ERROR_NO_ERROR                    0x00
#define LL_ERR_DIFF_TRANSACTION_COLLISION    0xBA

/* gapc_task.h */
enum { GAPC_UPDATE_PARAMS = 0x09 };

struct gapc_cmp_evt
{
    uint8_t operation;
    uint8_t status;
};

extern void arch_printf(const char *format, ...);
extern void gate_periodic_record_creation_sensor_mode_at_2dc4(void);

int gapc_cmp_evt_handler(ke_msg_id_t const msgid,
                         struct gapc_cmp_evt const *param,
                         ke_task_id_t const dest_id,
                         ke_task_id_t const src_id)
{
    switch(param->operation)
    {
        // reset completed
        case GAPC_UPDATE_PARAMS:
        {
            if ((param->status != CO_ERROR_NO_ERROR))
            {
                arch_printf("up params error=%x\n", param->status);
                switch (param->status)
                {
                    case GAP_ERR_REJECTED:
                        if (device_settings.conn_intv_max < 20)
                        {
                            device_settings.conn_intv_max += 6;
                        }
                        if (device_settings.conn_intv_min < 20)
                        {
                            device_settings.conn_intv_min += 6;
                        }
                        // fall through
                    case LL_ERR_DIFF_TRANSACTION_COLLISION:
                        gate_periodic_record_creation_sensor_mode_at_2dc4();
                        break;
                }
            }
            else
            {
                CALLBACK_ARGS_0(user_app_callbacks.app_on_update_params_complete)
            }
        }
        break;

        default:
        {
            if(param->status != GAP_ERR_NO_ERROR)
            {
                ASSERT_ERROR(0); // unexpected error
            }
            if (app_process_catch_rest_cb != NULL)
            {
                app_process_catch_rest_cb(msgid, param, dest_id, src_id);
            }
        }
        break;
    }

    return (KE_MSG_CONSUMED);
}
