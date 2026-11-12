/* adv_data_update_timer_cb from the Renesas DA145xx SDK 6.0.18.1182.1
 * peripheral template, user_peripheral.c (Copyright (C) Dialog Semiconductor /
 * Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), as V204 has it:
 * the manufacturer-data update and app_easy_gap_update_adv_data() call are
 * left out, so it only reschedules itself.
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_user_config.h"

#define app_adv_data_update_timer_used SR08_MERGED_SCALAR(merged_globals_5650.app_adv_data_update_timer_used)

#define APP_ADV_DATA_UPDATE_TO (3000) // 3000*10ms = 30sec

void adv_data_update_timer_cb(void)
{
    app_adv_data_update_timer_used = app_easy_timer(APP_ADV_DATA_UPDATE_TO, adv_data_update_timer_cb);
}
