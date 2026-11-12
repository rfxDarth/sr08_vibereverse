/* V204's user_app_connection (user_callback_config.h's app_on_connection),
 * recovered from its inlined copy in gapc_connection_req_ind_handler. It is
 * the SDK's peripheral template version (projects/target_apps/template/
 * empty_peripheral_template/src/user_empty_peripheral_template.c, Renesas
 * DA145xx SDK 6.0.18.1182.1; Copyright (C) Dialog Semiconductor / Renesas
 * Electronics Corporation; see third_party/renesas_sdk_6.0.18.1182.1/
 * dialog_license.txt) with V204's additions: the connection parameters are
 * reported on the UART and stored, and the sensor side is notified. V204
 * prefers a 100 ms interval (80 double slots), no latency and a 6 s timeout.
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define app_env (merged_globals_56d0.app_env)
#define app_connection_idx SR08_MERGED_SCALAR(merged_globals_5650.app_connection_idx)
#define app_adv_data_update_timer_used SR08_MERGED_SCALAR(merged_globals_5650.app_adv_data_update_timer_used)
#define app_param_update_request_timer_used \
    SR08_MERGED_SCALAR(merged_globals_5650.app_param_update_request_timer_used)

#define GAP_INVALID_CONIDX              (0xFF)
#define APP_PARAM_UPDATE_REQUEST_TO     (600)

/* user_config.h */
static const struct
{
    uint16_t intv_min;
    uint16_t intv_max;
    uint16_t latency;
    uint16_t time_out;
} user_connection_param_conf = {
    .intv_min = MS_TO_DOUBLESLOTS(100),
    .intv_max = MS_TO_DOUBLESLOTS(100),
    .latency = 0,
    .time_out = MS_TO_TIMERUNITS(6000),
};

extern void arch_printf(const char *format, ...);
extern void update_device_settings_and_timeout_if_value_low(uint16_t con_interval, uint16_t con_latency,
                                                            uint16_t sup_to);
extern void reset_related_capture_sensor_state_control_at_4fc8(int);
extern void param_update_request_timer_cb(void);


void user_app_connection(uint8_t connection_idx, struct gapc_connection_req_ind const *param)
{
    if (app_env[connection_idx].conidx != GAP_INVALID_CONIDX)
    {
        app_connection_idx = connection_idx;

        arch_printf("cp %d,%d,%d\n", param->con_interval, param->con_latency, param->sup_to);
        update_device_settings_and_timeout_if_value_low(param->con_interval, param->con_latency, param->sup_to);

        // Stop the advertising data update timer
        app_easy_timer_cancel(app_adv_data_update_timer_used);

        // Check if the parameters of the established connection are the preferred ones.
        // If not then schedule a connection parameter update request.
        if ((param->con_interval < user_connection_param_conf.intv_min) ||
            (param->con_interval > user_connection_param_conf.intv_max) ||
            (param->con_latency != user_connection_param_conf.latency) ||
            (param->sup_to != user_connection_param_conf.time_out))
        {
            // Connection params are not these that we expect
            app_param_update_request_timer_used = app_easy_timer(APP_PARAM_UPDATE_REQUEST_TO, param_update_request_timer_cb);
        }
    }
    else
    {
        // No connection has been established, restart advertising
        user_app_adv_start();
    }

    default_app_on_connection(connection_idx, param);
    reset_related_capture_sensor_state_control_at_4fc8(1);
}
