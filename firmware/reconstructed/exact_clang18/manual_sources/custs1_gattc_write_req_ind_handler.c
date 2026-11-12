/* custs1_task.c's gattc_write_req_ind_handler from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/ble_stack/profiles/custom/custs/src/custs1_task.c
 * (Copyright (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK; it has external linkage here, under its prefixed unit
 * name.
 */
#include "firmware/reconstructed/include/sr08_sdk_custs1.h"

int custs1_gattc_write_req_ind_handler(ke_msg_id_t const msgid,
                                        const struct gattc_write_req_ind *param,
                                        ke_task_id_t const dest_id,
                                        ke_task_id_t const src_id)
{
    struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
    struct gattc_write_cfm * cfm;
    uint8_t att_idx = 0;
    uint8_t conidx = KE_IDX_GET(src_id);
    // retrieve handle information
    uint8_t status = custs1_get_att_idx(param->handle, &att_idx);
    att_perm_type perm;

    ASSERT_ERROR(param->offset == 0);
    // If the attribute has been found, status is ATT_ERR_NO_ERROR
    if (status == ATT_ERR_NO_ERROR)
    {
        const struct cust_prf_func_callbacks *callbacks = custs_get_func_callbacks(TASK_ID_CUSTS1);

        if (callbacks->att_db[att_idx].uuid_size == ATT_UUID_16_LEN &&
            *(uint16_t *)callbacks->att_db[att_idx].uuid == ATT_DESC_CLIENT_CHAR_CFG)
        {
            struct attm_elmt elem = {0};

            // Find the handle of the Characteristic Value
            uint16_t value_hdl = get_value_handle(param->handle);
            ASSERT_ERROR(value_hdl);

            // Get permissions to identify if it is NTF or IND.
            attmdb_att_get_permission(value_hdl, &perm, 0, &elem);
            status = check_client_char_cfg(PERM_IS_SET(perm, NTF, ENABLE), param);

            if (status == ATT_ERR_NO_ERROR)
            {
                custs1_set_ccc_value(conidx, att_idx, *(uint16_t *)param->value);
            }
        }
        else
        {
            if (callbacks != NULL && callbacks->value_wr_validation_func != NULL)
            {
                status = callbacks->value_wr_validation_func(att_idx, param->offset, param->length, (uint8_t *)&param->value[0]);
            }

            struct attm_elmt elmt = ATT_ELEMT_INIT;
            attmdb_get_attribute(param->handle, &elmt);

            // Check if data present in database
            if ((status == ATT_ERR_NO_ERROR) && (PERM_GET(elmt.info.att->info.max_lengh, RI) == 0))
            {
                // Set value in the database
                status = attmdb_att_set_value(param->handle, param->length, param->offset, (uint8_t *)&param->value[0]);
            }
        }

        if (status == ATT_ERR_NO_ERROR)
        {
            // Inform APP
            struct custs1_val_write_ind *req_id = KE_MSG_ALLOC_DYN(CUSTS1_VAL_WRITE_IND,
                                                                    prf_dst_task_get(&(custs1_env->prf_env), KE_IDX_GET(src_id)),
                                                                    dest_id,
                                                                    custs1_val_write_ind,
                                                                    param->length);
            memcpy(req_id->value, param->value, param->length);
            req_id->handle = att_idx;
            req_id->length = param->length;
            req_id->conidx = conidx;

            ke_msg_send(req_id);
        }
    }

    //Send write response
    cfm = KE_MSG_ALLOC(GATTC_WRITE_CFM, src_id, dest_id, gattc_write_cfm);
    cfm->handle = param->handle;
    cfm->status = status;
    ke_msg_send(cfm);

    return (KE_MSG_CONSUMED);
}
