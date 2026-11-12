/* hogpd_get_att_idx from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"

uint8_t hogpd_get_att_idx(struct hogpd_env_tag* hogpd_env, uint16_t handle, uint8_t *svc_idx, uint8_t *att_idx, uint8_t *report_idx)
{
    uint16_t hdl_cursor = hogpd_env->start_hdl;
    uint8_t status = PRF_APP_ERROR;

    // invalid index
    *att_idx = HOGPD_IDX_NB;

    // Browse list of services
    // handle must be greater than current index
    for(*svc_idx = 0 ; (*svc_idx < hogpd_env->hids_nb) && (handle >= hdl_cursor) ; (*svc_idx)++)
    {
        // check if handle is on current service
        if(handle >= (hdl_cursor + hogpd_env->svcs[*svc_idx].nb_att))
        {
            hdl_cursor += hogpd_env->svcs[*svc_idx].nb_att;
            continue;
        }

        // if we are here, we are sure that handle is valid
        status = GAP_ERR_NO_ERROR;
        *report_idx = 0;

        // check if handle is in reports or not
        if(handle < (hdl_cursor + hogpd_env->svcs[*svc_idx].report_hdl_offset))
        {
            if(handle == hdl_cursor)
            {
                *att_idx = HOGPD_IDX_SVC;
                break;
            }

            // check if Ext Ref feature active
            if((hogpd_env->svcs[*svc_idx].features & HOGPD_CFG_MAP_EXT_REF) != 0)
            {
                hdl_cursor += 1;
                if(handle == hdl_cursor)
                {
                    *att_idx = HOGPD_IDX_INCL_SVC;
                    break;
                }
            }

            // check if handle is in mandatory range
            hdl_cursor += HIDS_MANDATORY_ATT_NB;
            if(handle <= hdl_cursor)
            {
                *att_idx = HOGPD_IDX_REPORT_MAP_VAL - (hdl_cursor - handle - 1);
                break;
            }

            // check if Ext Ref feature active
            if((hogpd_env->svcs[*svc_idx].features & HOGPD_CFG_MAP_EXT_REF) != 0)
            {
                hdl_cursor += 1;
                if(handle == hdl_cursor)
                {
                    *att_idx = HOGPD_IDX_REPORT_MAP_EXT_REP_REF;
                    break;
                }
            }

            // check if Protocol Mode feature active
            if((hogpd_env->svcs[*svc_idx].features & HOGPD_CFG_PROTO_MODE) != 0)
            {
                hdl_cursor += HIDS_PROTO_MODE_ATT_NB;
                if(handle <= hdl_cursor)
                {
                    *att_idx = HOGPD_IDX_PROTO_MODE_VAL - (hdl_cursor - handle - 1);
                    break;
                }
            }

            // check if Keyboard feature active
            if((hogpd_env->svcs[*svc_idx].features & HOGPD_CFG_KEYBOARD) != 0)
            {
                hdl_cursor += HIDS_KEYBOARD_ATT_NB;
                if(handle <= hdl_cursor)
                {
                    *att_idx = HOGPD_IDX_BOOT_KB_OUT_REPORT_VAL - (hdl_cursor - handle - 1);
                    break;
                }
            }

            // check if Mouse feature active
            if((hogpd_env->svcs[*svc_idx].features & HOGPD_CFG_MOUSE) != 0)
            {
                hdl_cursor += HIDS_MOUSE_ATT_NB;
                if(handle <= hdl_cursor)
                {
                    *att_idx = HOGPD_IDX_BOOT_MOUSE_IN_REPORT_NTF_CFG - (hdl_cursor - handle - 1);
                    break;
                }
            }

            // not expected
            ASSERT_ERROR(0);
        }
        else
        {
            // add handle offset
            hdl_cursor += hogpd_env->svcs[*svc_idx].report_hdl_offset;

            for(*report_idx = 0 ; (*report_idx < hogpd_env->svcs[*svc_idx].nb_report) ; (*report_idx)++)
            {
                hdl_cursor += HIDS_REPORT_MANDATORY_ATT_NB;
                if(handle <= hdl_cursor)
                {
                    *att_idx = HOGPD_IDX_REPORT_REP_REF - (hdl_cursor - handle - 1);
                    break;
                }

                if((hogpd_env->svcs[*svc_idx].features & (HOGPD_CFG_REPORT_NTF_EN << *report_idx)) != 0)
                {
                    hdl_cursor += HIDS_REPORT_IN_ATT_NB;
                    if(handle == hdl_cursor)
                    {
                        *att_idx = HOGPD_IDX_REPORT_NTF_CFG;
                        break;
                    }
                }
            }

            // not expected
            ASSERT_ERROR(*att_idx != HOGPD_IDX_NB);
        }
        // loop not expected here
        break;
    }

    return status;
}

