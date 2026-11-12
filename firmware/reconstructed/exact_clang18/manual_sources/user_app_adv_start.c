/* user_app_adv_start (user_callback_config.h's default_operation_adv) from the
 * Renesas DA145xx SDK 6.0.18.1182.1 peripheral template, user_peripheral.c
 * (Copyright (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), as V204 has it:
 * the manufacturer data is not added, and advertising is not started while
 * the vendor measurement state is 1 or 2. V204's link inlined app.c's
 * app_easy_gap_undirected_advertise_get_active() and
 * app_easy_gap_undirected_advertise_start(); adv_cmd is app.c's static,
 * merged into the block at 0x07fd5650.
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define app_adv_data_update_timer_used SR08_MERGED_SCALAR(merged_globals_5650.app_adv_data_update_timer_used)
#define measurement_state SR08_MERGED_SCALAR(merged_globals_5650.measurement_state)
#define adv_cmd SR08_MERGED_SCALAR(merged_globals_5650.adv_cmd)

#define APP_ADV_DATA_UPDATE_TO (3000) // 3000*10ms = 30sec

extern void adv_data_update_timer_cb(void);
extern struct gapm_start_advertise_cmd *app_easy_gap_undirected_advertise_start_create_msg(void);

/* app_mid.h */
static inline void app_advertise_start_msg_send(struct gapm_start_advertise_cmd* cmd)
{
    ke_msg_send(cmd);
}

/* app.c */
static inline struct gapm_start_advertise_cmd* app_easy_gap_undirected_advertise_get_active(void)
{
    return app_easy_gap_undirected_advertise_start_create_msg();
}

static inline void app_easy_gap_undirected_advertise_start(void)
{
    struct gapm_start_advertise_cmd* cmd;
    cmd = app_easy_gap_undirected_advertise_start_create_msg();

    // Send the message
    app_advertise_start_msg_send(cmd);
    adv_cmd = NULL ;

    // We are now connectable
    ke_state_set(TASK_APP, APP_CONNECTABLE);
}

void user_app_adv_start(void)
{
    if (measurement_state == 1 || measurement_state == 2)
        return;

    // Schedule the next advertising data update
    app_adv_data_update_timer_used = app_easy_timer(APP_ADV_DATA_UPDATE_TO, adv_data_update_timer_cb);

    struct gapm_start_advertise_cmd* cmd;
    cmd = app_easy_gap_undirected_advertise_get_active();
    (void)cmd;

    app_easy_gap_undirected_advertise_start();
}
