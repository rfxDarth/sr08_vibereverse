/* get_value_handle and check_client_char_cfg from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/ble_stack/profiles/custom/custom_common.c (Copyright (C)
 * Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link
 * inlined them into their callers.
 */
#include "firmware/reconstructed/include/sr08_sdk_custs1.h"

int check_client_char_cfg(bool is_notification, const struct gattc_write_req_ind *param)
{
    uint8_t status = GAP_ERR_NO_ERROR;
    uint16_t ntf_cfg = 0;

    if (param->length != sizeof(uint16_t))
    {
        status =  ATT_ERR_INVALID_ATTRIBUTE_VAL_LEN;
    }
    else
    {
        ntf_cfg = *((uint16_t*)param->value);

        if (is_notification)
        {
            if ( (ntf_cfg != PRF_CLI_STOP_NTFIND) && (ntf_cfg != PRF_CLI_START_NTF) )
            {
                status =  PRF_ERR_INVALID_PARAM;
            }
        }
        else
        {
            if ( (ntf_cfg != PRF_CLI_STOP_NTFIND) && (ntf_cfg != PRF_CLI_START_IND) )
            {
                status =  PRF_ERR_INVALID_PARAM;
            }
        }
    }

    return status;
}

uint16_t get_value_handle(uint16_t cfg_handle)
{
    uint8_t uuid[ATT_UUID_128_LEN];
    uint8_t uuid_len;
    uint16_t handle = cfg_handle;
    struct attm_svc *srv;

    srv = attmdb_get_service(handle);

    /* Iterate back the database to find the  characteristic declaration.
    ** According to spec (3.3 CHARACTERISTIC DEFINITION):
    ** "The Characteristic Value declaration shall exist immediately following
    ** the characteristic declaration"
    */
    while ((handle >= srv->svc.start_hdl) && (handle <= srv->svc.end_hdl))
    {
        struct attm_elmt elmt;

        // Retrieve UUID
        attmdb_get_attribute(handle, &elmt);
        attmdb_get_uuid(&elmt, &uuid_len, uuid, false, false);

        // check for Characteristic declaration
        if (*(uint16_t *)&uuid[0] == ATT_DECL_CHARACTERISTIC)
            return handle + 1;

        handle--;
    }

    return 0;  //Should not reach this point. something is wrong with the database
}
