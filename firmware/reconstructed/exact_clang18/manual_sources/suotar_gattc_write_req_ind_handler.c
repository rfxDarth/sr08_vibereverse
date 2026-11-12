/* SDK 6.0.18.1182.1 suotar_task.c, see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt. */
#include "firmware/reconstructed/include/sr08_sdk_suotar.h"
int suotar_gattc_write_req_ind_handler(ke_msg_id_t const msgid,
                                       struct gattc_write_req_ind const *param,
                                       ke_task_id_t const dest_id,
                                       ke_task_id_t const src_id)
{
    int msg_status = KE_MSG_CONSUMED;

    if(ke_state_get(dest_id) == SUOTAR_IDLE)
    {
        // Allocate write confirmation message.
        struct gattc_write_cfm *cfm = KE_MSG_ALLOC(GATTC_WRITE_CFM, src_id, dest_id,
                                                   gattc_write_cfm);

        struct suotar_env_tag *suotar_env = PRF_ENV_GET(SUOTAR, suotar);
        uint8_t att_idx = param->handle - suotar_env->suota_shdl;
        uint8_t conidx = KE_IDX_GET(src_id);

        // Fill in the parameter structure
        cfm->handle = param->handle;
        cfm->status = PRF_APP_ERROR;

        if (att_idx == SUOTA_IDX_PATCH_MEM_DEV_VAL)
        {
            cfm->status = attmdb_att_set_value(param->handle, param->length,
                                               param->offset,
                                               (uint8_t *) &param->value[0]);

            // Inform APP. Allocate the Patch Mem value change indication
            struct suotar_patch_mem_dev_ind *ind = KE_MSG_ALLOC(SUOTAR_PATCH_MEM_DEV_IND,
                                        prf_dst_task_get(&(suotar_env->prf_env), conidx),
                                        TASK_ID_SUOTAR, suotar_patch_mem_dev_ind);

            // Fill in the parameter structure
            ind->conhdl = gapc_get_conhdl(conidx);

            ind->mem_dev  = 0;
            ind->mem_dev  = (uint32_t) (param->value[3] << 24);
            ind->mem_dev |= (uint32_t) (param->value[2] << 16);
            ind->mem_dev |= (uint32_t) (param->value[1] << 8);
            ind->mem_dev |= (uint32_t) (param->value[0]);
            ind->char_code = SUOTAR_PATCH_MEM_DEV_CHAR;

            // Send the message
            ke_msg_send(ind);
        }
        else if (att_idx == SUOTA_IDX_GPIO_MAP_VAL)
        {
            cfm->status = attmdb_att_set_value(param->handle, param->length,
                                               param->offset,
                                               (uint8_t *) &param->value[0]);

            // Inform APP. Allocate the Patch Data value change indication
            struct suotar_gpio_map_ind *ind = KE_MSG_ALLOC(SUOTAR_GPIO_MAP_IND,
                                        prf_dst_task_get(&(suotar_env->prf_env), conidx),
                                        TASK_ID_SUOTAR, suotar_gpio_map_ind);

            // Fill in the parameter structure
            ind->conhdl = gapc_get_conhdl(conidx);

            ind->gpio_map  = 0;
            ind->gpio_map  = (uint32_t) (param->value[3] << 24);
            ind->gpio_map |= (uint32_t) (param->value[2] << 16);
            ind->gpio_map |= (uint32_t) (param->value[1] << 8);
            ind->gpio_map |= (uint32_t) (param->value[0]);
            ind->char_code = SUOTAR_GPIO_MAP_CHAR;

            // Send the message
            ke_msg_send(ind);
        }
        else if (att_idx == SUOTA_IDX_PATCH_DATA_VAL )
        {
            cfm->status = attmdb_att_set_value(param->handle, param->length,
                                               param->offset,
                                               (uint8_t *) &param->value[0]);

            // Inform APP. Allocate the Patch Data value change indication
            struct suotar_patch_data_ind *ind = KE_MSG_ALLOC_DYN(SUOTAR_PATCH_DATA_IND,
                                        prf_dst_task_get(&(suotar_env->prf_env), conidx),
                                        TASK_ID_SUOTAR, suotar_patch_data_ind, param->length);

            // Fill in the parameter structure
            ind->conhdl = gapc_get_conhdl(conidx);

            memcpy(ind->pd, &param->value[0], param->length);
            /* Preserve V204's byte-store order before the message is sent. */
            ((volatile struct suotar_patch_data_ind *)ind)->len = param->length;
            ((volatile struct suotar_patch_data_ind *)ind)->char_code = SUOTAR_PATCH_DATA_CHAR;

            // Send the message
            ke_msg_send(ind);
        }
        else if (att_idx == SUOTA_IDX_PATCH_LEN_VAL)
        {
            cfm->status = attmdb_att_set_value(param->handle, param->length,
                                               param->offset,
                                               (uint8_t *) &param->value[0]);

            // Inform APP. Allocate the Patch Data value change indication
            struct suotar_patch_len_ind *ind = KE_MSG_ALLOC(SUOTAR_PATCH_LEN_IND,
                                        prf_dst_task_get(&(suotar_env->prf_env), conidx),
                                        TASK_ID_SUOTAR, suotar_patch_len_ind);

            // Fill in the parameter structure
            ind->conhdl = gapc_get_conhdl(conidx);

            ind->len  = 0;
            ind->len  = (uint16_t) (param->value[1] << 8);
            ind->len |= (uint16_t) (param->value[0]);
            ind->char_code = SUOTAR_PATCH_LEN_CHAR;

            // Send the message
            ke_msg_send(ind);
        }
        else if (att_idx == SUOTA_IDX_PATCH_STATUS_NTF_CFG)
        {
            suotar_env->ntf_cfg = co_read16p(&param->value[0]);
            cfm->status = ATT_ERR_NO_ERROR;
        }
        else
        {
            cfm->status = ATT_ERR_APP_ERROR;
        }

        ke_msg_send(cfm);
    }
    else if(ke_state_get(dest_id) == SUOTAR_BUSY)
    {
        msg_status = KE_MSG_SAVED;
    }

    return msg_status;
}

