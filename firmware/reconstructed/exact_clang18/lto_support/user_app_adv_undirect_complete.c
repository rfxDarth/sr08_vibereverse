/* V204's undirected-advertising completion callback, which V204's link
 * inlined into gapm_cmp_evt_handler(). It has the body of the SDK 6.0.18.1182.1
 * template's user_app_adv_undirect_complete()
 * (projects/target_apps/ble_examples/ble_app_peripheral/src/user_peripheral.c;
 * Copyright (C) Dialog Semiconductor, see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#include "firmware/reconstructed/include/sr08_user_config.h"

void user_app_adv_undirect_complete(uint8_t status)
{
    // If advertising was canceled then update advertising data and start advertising again
    if (status == GAP_ERR_CANCELED)
    {
        user_app_adv_start();
    }
}
