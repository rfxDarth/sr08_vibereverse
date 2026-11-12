/* hogpd_get_att_handle from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"

uint16_t hogpd_get_att_handle(struct hogpd_env_tag *hogpd_env, uint8_t svc_idx, uint8_t att_idx, uint8_t report_idx)
{
    uint16_t handle = HOGPD_INVALID_HANDLE;
    uint8_t i = 0;

    // Sanity check
    if ((svc_idx < hogpd_env->hids_nb) && (att_idx < HOGPD_IDX_NB)
        && ((att_idx < HOGPD_ATT_UNIQ_NB) || (report_idx < hogpd_env->svcs[svc_idx].nb_report))) {
        handle = hogpd_env->start_hdl;

        for (i = 0; i < svc_idx; i++) {
            // update start handle for next service - only useful if multiple service, else not used.
            handle += hogpd_env->svcs[i].nb_att;
        }

        // increment index according to expected index
        if (att_idx < HOGPD_ATT_UNIQ_NB) {
            handle += att_idx;

            // check if Keyboard feature active
            if ((hogpd_env->svcs[svc_idx].features & HOGPD_CFG_KEYBOARD) == 0) {
                if (att_idx > HOGPD_IDX_BOOT_KB_OUT_REPORT_VAL) {
                    handle -= HIDS_KEYBOARD_ATT_NB;
                }
                // Error Case
                else if ((att_idx >= HOGPD_IDX_BOOT_KB_IN_REPORT_CHAR)
                         && (att_idx <= HOGPD_IDX_BOOT_KB_OUT_REPORT_VAL)) {
                    handle = HOGPD_INVALID_HANDLE;
                }
            }

            // check if Mouse feature active
            if ((hogpd_env->svcs[svc_idx].features & HOGPD_CFG_MOUSE) == 0) {
                if (att_idx > HOGPD_IDX_BOOT_MOUSE_IN_REPORT_NTF_CFG) {
                    handle -= HIDS_MOUSE_ATT_NB;
                }
                // Error Case
                else if ((att_idx >= HOGPD_IDX_BOOT_MOUSE_IN_REPORT_CHAR)
                         && (att_idx <= HOGPD_IDX_BOOT_MOUSE_IN_REPORT_NTF_CFG)) {
                    handle = HOGPD_INVALID_HANDLE;
                }
            }

            // check if Protocol Mode feature active
            if ((hogpd_env->svcs[svc_idx].features & HOGPD_CFG_PROTO_MODE) == 0) {
                if (att_idx > HOGPD_IDX_PROTO_MODE_VAL) {
                    handle -= HIDS_PROTO_MODE_ATT_NB;
                }
                // Error Case
                else if ((att_idx >= HOGPD_IDX_PROTO_MODE_CHAR)
                         && (att_idx <= HOGPD_IDX_PROTO_MODE_VAL)) {
                    handle = HOGPD_INVALID_HANDLE;
                }
            }

            // check if Ext Ref feature active
            if ((hogpd_env->svcs[svc_idx].features & HOGPD_CFG_MAP_EXT_REF) == 0) {
                if (att_idx > HOGPD_IDX_REPORT_MAP_EXT_REP_REF) {
                    handle -= 2;
                } else if (att_idx > HOGPD_IDX_INCL_SVC) {
                    handle -= 1;
                }
                // Error Case
                else if ((att_idx == HOGPD_IDX_INCL_SVC)
                         || (att_idx == HOGPD_IDX_REPORT_MAP_EXT_REP_REF)) {
                    handle = HOGPD_INVALID_HANDLE;
                }
            }
        } else {
            handle += hogpd_env->svcs[svc_idx].report_hdl_offset;

            // increment attribute handle with other reports
            for (i = 0; i < report_idx; i++) {
                handle += HIDS_REPORT_MANDATORY_ATT_NB;
                // check if report has notifications
                if ((hogpd_env->svcs[svc_idx].features & (HOGPD_CFG_REPORT_NTF_EN << i)) != 0) {
                    handle += HIDS_REPORT_IN_ATT_NB;
                }
            }

            // check if notification is requested
            if ((att_idx == HOGPD_IDX_REPORT_NTF_CFG)
                && ((hogpd_env->svcs[svc_idx].features & (HOGPD_CFG_REPORT_NTF_EN << report_idx)) != 0)) {
                handle = HOGPD_INVALID_HANDLE;
            } else {
                // increment handle with attribute index
                handle += att_idx - HOGPD_ATT_UNIQ_NB;
            }
        }
    }

    return handle;
}
