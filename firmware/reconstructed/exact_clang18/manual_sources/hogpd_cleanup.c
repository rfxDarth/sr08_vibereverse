/* hogpd_cleanup from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here. V204 also clears the HID
 * link state, the pending report count and a timing-record byte, and returns
 * the task to HOGPD_IDLE.
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"
#include "firmware/reconstructed/include/sr08_sdk_prf.h"
#include "firmware/reconstructed/include/sr08_radio_configuration.h"
#include "firmware/reconstructed/include/sr08_timing_record.h"

void hogpd_cleanup(struct prf_task_env* env, uint8_t conidx, uint8_t reason)
{
    struct hogpd_env_tag* hogpd_env = (struct hogpd_env_tag*) env->env;
    uint8_t svc_idx;
    ASSERT_ERROR(conidx < BLE_CONNECTION_MAX);

    /* Vendor. */
    device_control_state.hid_link_state = 0;

    // Reset the notification configuration to ensure that no notification will be sent on
    // a disconnected link
    for (svc_idx = 0; svc_idx < hogpd_env->hids_nb; svc_idx++)
    {
        hogpd_env->svcs[svc_idx].ntf_cfg[conidx] = 0;
    }

    /* Vendor. */
    hogpd_env->reports_in_flight = 0;
    ke_state_set(env->task, HOGPD_IDLE);
    ((uint8_t *)sr08_timing_records)[176] = 0;
}
