/* custs1_task.c's gattc_read_req_ind_handler from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/ble_stack/profiles/custom/custs/src/custs1_task.c
 * (Copyright (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), with
 * custs1_get_ccc_value(), which V204's link inlined. Both are static in the
 * SDK; the handler has external linkage here, under its prefixed unit name.
 */
#include "firmware/reconstructed/include/sr08_sdk_custs1.h"

static uint16_t custs1_get_ccc_value(uint8_t conidx, uint8_t att_idx)
{
    uint16_t length;
    const uint8_t *value;
    uint16_t ccc_value;

    ASSERT_ERROR(conidx < BLE_CONNECTION_MAX);

    custs1_att_get_value(att_idx, &length, &value);
    ASSERT_ERROR(length);
    ASSERT_ERROR(value);

    ccc_value = value[conidx];

    return ccc_value;
}

int custs1_gattc_read_req_ind_handler(ke_msg_id_t const msgid,
                                       struct gattc_read_req_ind const *param,
                                       ke_task_id_t const dest_id,
                                       ke_task_id_t const src_id)
{
    ke_state_t state = ke_state_get(dest_id);

    if(state == CUSTS1_IDLE)
    {
        struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
        struct gattc_read_cfm * cfm;
        uint8_t att_idx = 0;
        uint8_t conidx = KE_IDX_GET(src_id);
        // retrieve handle information
        uint8_t status = custs1_get_att_idx(param->handle, &att_idx);
        uint16_t length = 0;
        uint16_t ccc_val = 0;

        // If the attribute has been found, status is GAP_ERR_NO_ERROR
        if (status == GAP_ERR_NO_ERROR)
        {
            const struct cust_prf_func_callbacks *callbacks = custs_get_func_callbacks(TASK_ID_CUSTS1);

            if (callbacks->att_db[att_idx].uuid_size == ATT_UUID_16_LEN &&
                *(uint16_t *)callbacks->att_db[att_idx].uuid == ATT_DESC_CLIENT_CHAR_CFG)
            {
                ccc_val = custs1_get_ccc_value(conidx, att_idx);
                length = 2;
            }
            else
            {
                // Request value from application
                struct custs1_value_req_ind* req_ind = KE_MSG_ALLOC(CUSTS1_VALUE_REQ_IND,
                                                         prf_dst_task_get(&(custs1_env->prf_env), KE_IDX_GET(src_id)),
                                                         dest_id,
                                                         custs1_value_req_ind);

                req_ind->conidx  = KE_IDX_GET(src_id);
                req_ind->att_idx = att_idx;

                // Send message to application
                ke_msg_send(req_ind);

                // Put Service in a busy state
                ke_state_set(dest_id, CUSTS1_BUSY);

                return (KE_MSG_CONSUMED);
            }
        }

        // Send read response
        cfm = KE_MSG_ALLOC_DYN(GATTC_READ_CFM,
                               src_id,
                               dest_id,
                               gattc_read_cfm,
                               length);

        cfm->handle = param->handle;
        cfm->status = status;
        cfm->length = length;

        if (status == GAP_ERR_NO_ERROR)
        {
            memcpy(cfm->value, &ccc_val, length);
        }

        ke_msg_send(cfm);

        return (KE_MSG_CONSUMED);
    }
    // Postpone request if profile is in a busy state
    else
    {
        return (KE_MSG_SAVED);
    }
}
