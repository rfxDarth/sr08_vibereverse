/* The CUSTS1 profile run that V204's link-time-optimised armclang build placed
 * at 0x07fc57b8-0x07fc5db4: functions from the Dialog/Renesas DA145xx SDK
 * 6.0.18.1182.1 sdk/ble_stack/profiles/custom/custs/src/custs1.c, custs1_task.c
 * and custom_common.c (see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 *
 * The functions share literal pools across function boundaries, so they form
 * one translation unit. Bodies follow the SDK; the database loop index is widened to uint32_t
 * to reproduce V204 LTO scheduling for this fixed six-entry database; include/sr08_sdk_custs1.h maps
 * their names to V204's units. attm_svc_create_db_128() (attm_db_128.c) and
 * custs1_init_ccc_values() were inlined into custs1_init() by LTO.
 */
#include "firmware/reconstructed/include/sr08_sdk_custs1.h"



#define custs1_att_max_nb 6
#define custs1_services_size 1
#define custs1_services ((const uint8_t[]){0, 6})


void custs1_att_get_value(uint8_t att_idx, uint16_t *length, const uint8_t **data)
{
    struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
    // Check value if already present in service
    struct custs1_val_elmt *val = (struct custs1_val_elmt *)co_list_pick(&custs1_env->values);
    ASSERT_ERROR(data);
    ASSERT_ERROR(length);

    // loop until value found
    while (val != NULL)
    {
        // value is present in service
        if (val->att_idx == att_idx)
        {
            *length = val->length;
            *data = val->data;
            break;
        }

        val = (struct custs1_val_elmt *)val->hdr.next;
    }

    if (val == NULL)
    {
        *length = 0;
        *data = NULL;
    }
}

int custs1_att_info_rsp_handler(ke_msg_id_t const msgid,
                                       struct custs1_att_info_rsp const *param,
                                       ke_task_id_t const dest_id,
                                       ke_task_id_t const src_id)
{
    uint8_t state = ke_state_get(dest_id);

    if (state == CUSTS1_IDLE)
    {
        // Extract the service start handle.
        struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
        // Allocate the attribute information confirmation message.
        struct gattc_att_info_cfm *cfm;
        cfm = KE_MSG_ALLOC(GATTC_ATT_INFO_CFM, TASK_GATTC, dest_id, gattc_att_info_cfm);
        // Fill the message.
        cfm->handle = custs1_env->shdl + param->att_idx;
        cfm->length = param->length;
        cfm->status = param->status;
        // Send the confirmation message to GATTC.
        ke_msg_send(cfm);
    }

    return (KE_MSG_CONSUMED);
}

void custs1_att_set_value(uint8_t att_idx, uint16_t length, const uint8_t *data)
{
    struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
    // Check value if already present in service
    struct custs1_val_elmt *val = (struct custs1_val_elmt *)co_list_pick(&(custs1_env->values));
    // loop until value found
    while (val != NULL)
    {
        // value is present in service
        if (val->att_idx == att_idx)
        {
            // Value present but size changed, free old value
            if (length != val->length)
            {
                co_list_extract(&custs1_env->values, &val->hdr, 0);
                ke_free(val);
                val = NULL;
            }
            break;
        }

        val = (struct custs1_val_elmt *)val->hdr.next;
    }

    if (val == NULL)
    {
        // allocate value data
        val = (struct custs1_val_elmt *) ke_malloc(sizeof(struct custs1_val_elmt) + length, KE_MEM_ATT_DB);
        memset(val, 0, sizeof(struct custs1_val_elmt) + length);
        // insert value into the list
        co_list_push_back(&custs1_env->values, &val->hdr);
    }
    val->att_idx = att_idx;
    val->length = length;
    memcpy(val->data, data, length);

    return;
}

void custs1_cleanup(struct prf_task_env *env, uint8_t conidx, uint8_t reason)
{
    int att_idx;
    struct custs1_env_tag *custs1_env = (struct custs1_env_tag *)env->env;

    // Find all ccc fields and clean them
    for (att_idx = 1; att_idx < custs1_att_max_nb; att_idx++)
    {
        // Find only CCC characteristics
        if (custs1_att_db[att_idx].uuid_size == ATT_UUID_16_LEN &&
            *(uint16_t *)custs1_att_db[att_idx].uuid == ATT_DESC_CLIENT_CHAR_CFG)
        {
            // Clear CCC value
            custs1_set_ccc_value(conidx, att_idx, 0);
        }
    }

    ke_state_set(prf_src_task_get(&(custs1_env->prf_env), conidx), CUSTS1_IDLE);
}

void custs1_create(struct prf_task_env *env, uint8_t conidx)
{
    int att_idx;
    ASSERT_ERROR(conidx < BLE_CONNECTION_MAX);

    // Find all ccc fields and clean them
    for (att_idx = 1; att_idx < custs1_att_max_nb; att_idx++)
    {
        // Find only CCC characteristics
        if (custs1_att_db[att_idx].uuid_size == ATT_UUID_16_LEN &&
            *(uint16_t *)custs1_att_db[att_idx].uuid == ATT_DESC_CLIENT_CHAR_CFG)
        {
            // Clear CCC value
            custs1_set_ccc_value(conidx, att_idx, 0);
        }
    }
}

void custs1_destroy(struct prf_task_env *env)
{
    struct custs1_env_tag *custs1_env = (struct custs1_env_tag *)env->env;

    // remove all values present in list
    while (!co_list_is_empty(&(custs1_env->values)))
    {
        struct co_list_hdr *hdr = co_list_pop_front(&(custs1_env->values));
        ke_free(hdr);
    }

    // free profile environment variables
    env->env = NULL;
    ke_free(custs1_env);
}

void custs1_exe_operation(void)
{
    struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
    ASSERT_ERROR(custs1_env->operation != NULL);
    bool notification_sent = false;
    const uint8_t *ccc_values;
    uint16_t length;

    struct custs1_val_ntf_ind_req *app_req = (struct custs1_val_ntf_ind_req *)ke_msg2param(custs1_env->operation);

    custs1_att_get_value(custs1_env->ccc_idx, &length, &ccc_values);
    ASSERT_ERROR(length == BLE_CONNECTION_MAX);

    // loop on all connections
    while (!notification_sent && custs1_env->cursor < BLE_CONNECTION_MAX)
    {
        struct gattc_send_evt_cmd *req;
        uint8_t cursor = custs1_env->cursor++;

        // Check if notification or indication is set for connection
        if ((app_req->notification && ((ccc_values[cursor] & PRF_CLI_START_NTF) == 0)) ||
            (!app_req->notification && ((ccc_values[cursor] & PRF_CLI_START_IND) == 0)))
            continue;

        notification_sent = true;

        // Allocate the GATT notification message
        req = KE_MSG_ALLOC_DYN(GATTC_SEND_EVT_CMD,
            KE_BUILD_ID(TASK_GATTC, cursor), custs1_env->operation->dest_id, gattc_send_evt_cmd, app_req->length);

        // Fill in the parameter structure
        req->operation = app_req->notification ? GATTC_NOTIFY : GATTC_INDICATE;
        req->handle = custs1_env->shdl + app_req->handle;
        req->length = app_req->length;
        memcpy(req->value, app_req->value, app_req->length);

        // Send the event
        ke_msg_send(req);
    }

    // check if operation finished
    if (!notification_sent)
    {
        if (app_req->notification)
        {
            // Inform the application that the notification PDU has been sent over the air.
            struct custs1_val_ntf_cfm *cfm = KE_MSG_ALLOC(CUSTS1_VAL_NTF_CFM,
                                                          custs1_env->operation->src_id, custs1_env->operation->dest_id,
                                                          custs1_val_ntf_cfm);
            cfm->handle = app_req->handle;
            cfm->status = GAP_ERR_NO_ERROR;
            ke_msg_send(cfm);
        }
        else
        {
            // Inform the application that the indication has been confirmed by the peer device.
            struct custs1_val_ind_cfm *cfm = KE_MSG_ALLOC(CUSTS1_VAL_IND_CFM,
                                                          custs1_env->operation->src_id, custs1_env->operation->dest_id,
                                                          custs1_val_ind_cfm);
            cfm->handle = app_req->handle;
            cfm->status = GAP_ERR_NO_ERROR;
            ke_msg_send(cfm);
        }
        ke_free(custs1_env->operation);
        custs1_env->operation = NULL;
        ke_state_set(prf_src_task_get(&(custs1_env->prf_env), 0), CUSTS1_IDLE);
    }
}

uint16_t custs1_get_att_handle(uint8_t att_idx)
{
    struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
    uint16_t handle = ATT_INVALID_HDL;

    if (att_idx < custs1_env->max_nb_att)
    {
        handle = custs1_env->shdl + att_idx;
    }

    return handle;
}

uint8_t custs1_get_att_idx(uint16_t handle, uint8_t *att_idx)
{
    struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
    uint8_t status = PRF_APP_ERROR;

    if ((handle >= custs1_env->shdl) && (handle < custs1_env->shdl + custs1_env->max_nb_att))
    {
        *att_idx = handle - custs1_env->shdl;
        status = ATT_ERR_NO_ERROR;
    }

    return status;
}

__attribute__((always_inline)) static inline
uint8_t attm_svc_create_db_128(uint8_t svc_idx, uint16_t *shdl, uint8_t *cfg_flag, uint8_t max_nb_att,
                               uint8_t *att_tbl, ke_task_id_t const dest_id,
                               const struct attm_desc_128 *att_db, uint8_t svc_perm)
{
    int32_t db_cfg;
    uint8_t nb_att = 0;
    uint8_t status;
    uint32_t i;
    uint8_t att_idx = 0;
    struct gattm_svc_desc *svc_desc = NULL;
    const uint16_t att_decl_char = ATT_DECL_CHARACTERISTIC;

    if (cfg_flag != NULL)
    {
        // Number of attributes is limited to 32
        memcpy(&db_cfg, cfg_flag, sizeof(uint32_t));
    }
    else
    {
        // Set all bits to 1
        db_cfg = -1;
    }

    // Compute number of attributes and maximal payload size
    for (i = svc_idx + 1; i < max_nb_att; i++)
    {
        // check within db_cfg flag if attribute is enabled or not
        if (((db_cfg >> i) & 1) == 1)
        {
            nb_att++;
        }
    }

    // Allocate database descriptor
    svc_desc = (struct gattm_svc_desc *) ke_malloc(sizeof(struct gattm_svc_desc) +
                                nb_att * sizeof(struct gattm_att_desc),
                                2 /* V204 attribute-database allocation class */);

    svc_desc->start_hdl = *shdl;
    svc_desc->task_id = dest_id;

    if (att_db[svc_idx].uuid_size == ATT_UUID_16_LEN)
    {
        svc_desc->perm = svc_perm | PERM_VAL(SVC_UUID_LEN, PERM_UUID_16);
    }
    else if (att_db[svc_idx].uuid_size == ATT_UUID_32_LEN)
    {
        svc_desc->perm = svc_perm | PERM_VAL(SVC_UUID_LEN, PERM_UUID_32);
    }
    else
    {
        svc_desc->perm = svc_perm | PERM_VAL(SVC_UUID_LEN, PERM_UUID_128);
    }

    *(struct att_uuid_128 *)(&svc_desc->uuid) = *(struct att_uuid_128 *)att_db[svc_idx].value;

    for (i = svc_idx + 1; i < max_nb_att; i++)
    {
        // check within db_cfg flag if attribute is enabled or not
        if (((db_cfg >> i) & 1) == 1)
        {
            // Add attribute
            if (att_db[i].uuid_size == ATT_UUID_16_LEN)
            {
                svc_desc->atts[att_idx] = (struct gattm_att_desc) {
                    .uuid = {att_db[i].uuid[0], att_db[i].uuid[1]},
                    .perm = att_db[i].perm | PERM_VAL(UUID_LEN, PERM_UUID_16),
                    .max_len = att_db[i].max_length
                };
            }
            else if (att_db[i].uuid_size == ATT_UUID_32_LEN)
            {
                svc_desc->atts[att_idx] = (struct gattm_att_desc) {
                    .uuid = {att_db[i].uuid[0], att_db[i].uuid[1], att_db[i].uuid[2], att_db[i].uuid[3]},
                    .perm = att_db[i].perm | PERM_VAL(UUID_LEN, PERM_UUID_32),
                    .max_len = att_db[i].max_length
                };
            }
            else if (att_db[i].uuid_size == ATT_UUID_128_LEN)
            {
                memcpy(svc_desc->atts[att_idx].uuid, att_db[i].uuid, sizeof(struct att_uuid_128));
                svc_desc->atts[att_idx].perm = att_db[i].perm | PERM_VAL(UUID_LEN, PERM_UUID_128);
                svc_desc->atts[att_idx].max_len = att_db[i].max_length;
            }
            att_idx++;
        }
    }
    svc_desc->nb_att = att_idx;

    status = attmdb_add_service(svc_desc);
    if (status == ATT_ERR_NO_ERROR)
    {
        *shdl = svc_desc->start_hdl;
        att_idx = 0;

        for (i = svc_idx + 1; i < max_nb_att && (status == ATT_ERR_NO_ERROR); i++)
        {
            // check within db_cfg flag if attribute is enabled or not
            if (((db_cfg >> i) & 1) == 0)
                continue;
            att_idx++;

            // If attribute is marked with RI, or is empty don't store it in DB
            if (att_db[i].max_length & PERM(RI, ENABLE) || att_db[i].length == 0)
                continue;

            if(att_db[i].uuid_size == ATT_UUID_16_LEN &&
              (memcmp(att_db[i].uuid, &att_decl_char, sizeof(att_decl_char)) == 0))
                  continue;

            status = attmdb_att_set_value(svc_desc->start_hdl + att_idx,
                                        att_db[i].length, 0, att_db[i].value);
        }
    }

    ke_free(svc_desc);

    return status;
}

__attribute__((always_inline)) static inline
void custs1_init_ccc_values(const struct attm_desc_128 *att_db, int max_nb_att)
{
    // Default values 0 means no notification
    uint8_t ccc_values[BLE_CONNECTION_MAX] = {0};
    int i;

    // Start form 1, skip service description
    for (i = 1; i < max_nb_att; i++)
    {
        // Find only CCC characteristics
        if (att_db[i].uuid_size == ATT_UUID_16_LEN &&
            *(uint16_t *)att_db[i].uuid == ATT_DESC_CLIENT_CHAR_CFG)
        {
            // Set default values for all possible connections
            custs1_att_set_value(i, sizeof(ccc_values), ccc_values);
        }
    }
}

uint8_t custs1_init(struct prf_task_env *env, uint16_t *start_hdl, uint16_t app_task, uint8_t sec_lvl, struct custs1_db_cfg *params)
{
    //------------------ create the attribute database for the profile -------------------

    // DB Creation Status
    uint8_t status = ATT_ERR_NO_ERROR;

    //-------------------- allocate memory required for the profile  ---------------------
    struct custs1_env_tag *custs1_env = (struct custs1_env_tag *) ke_malloc(sizeof(struct custs1_env_tag), KE_MEM_ATT_DB);
    memset(custs1_env, 0, sizeof(struct custs1_env_tag));

    // allocate CUSTS1 required environment variable
    env->env = (prf_env_t *)custs1_env;

    // Loop through the user defined services to generate the database
    for (uint8_t i = 0; i < custs1_services_size; i++)
    {
        // Create the service
        status = attm_svc_create_db_128(custs1_services[i],
                                        start_hdl,
                                        NULL,
                                        custs1_services[i+1],
                                        NULL,
                                        env->task,
                                        custs1_att_db,
                                        (sec_lvl & PERM_MASK_SVC_AUTH) | (sec_lvl & PERM_MASK_SVC_EKS) | PERM(SVC_PRIMARY, ENABLE));

        // Retain the handle of the first service in the profile
        if (i == 0)
        {
            custs1_env->shdl = *start_hdl;
        }

        // Prepare for the next service in the profile
        *start_hdl += custs1_services[i+1] - custs1_services[i];

        // Exit the for() loop if an error occurred while generating the service
        if (status != ATT_ERR_NO_ERROR)
        {
            break;
        }
    }

    if (status == ATT_ERR_NO_ERROR)
    {
        custs1_env->max_nb_att = custs1_att_max_nb;
        custs1_env->prf_env.app_task = app_task | (PERM_GET(sec_lvl, SVC_MI) ? PERM(PRF_MI, ENABLE) : PERM(PRF_MI, DISABLE));
        custs1_env->prf_env.prf_task = env->task | PERM(PRF_MI, DISABLE);

        // initialize environment variable
        env->id                     = TASK_ID_CUSTS1;
        env->desc.idx_max           = CUSTS1_IDX_MAX;
        env->desc.state             = custs1_env->state;
        env->desc.default_handler   = &custs1_default_handler;
        co_list_init(&(custs1_env->values));
        custs1_init_ccc_values(custs1_att_db, custs1_att_max_nb);

        // profile is ready, go into an Idle state
        ke_state_set(env->task, CUSTS1_IDLE);
    }

    return status;
}

void custs1_set_ccc_value(uint8_t conidx, uint8_t att_idx, uint16_t ccc)
{
    uint16_t length;
    const uint8_t *value;
    uint8_t new_value[BLE_CONNECTION_MAX];
    ASSERT_ERROR(conidx < BLE_CONNECTION_MAX);

    custs1_att_get_value(att_idx, &length, &value);
    ASSERT_ERROR(length);
    ASSERT_ERROR(value);
    memcpy(new_value, value, length);
    // For now there are only two valid values for ccc, store just one byte other is 0 anyway
    new_value[conidx] = (uint8_t)ccc;
    custs1_att_set_value(att_idx, length, new_value);
}

int custs1_val_ind_req_handler(ke_msg_id_t const msgid,
                                      struct custs1_val_ind_req const *param,
                                      ke_task_id_t const dest_id,
                                      ke_task_id_t const src_id)
{
    struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
    uint16_t ccc_hdl;
    uint16_t handle = custs1_env->shdl + param->handle;
    uint8_t ccc_idx;
    uint8_t status;

    uint8_t state = ke_state_get(dest_id);
    if (state == CUSTS1_BUSY)
    {
        return KE_MSG_SAVED;
    }

    // Find the handle of the Characteristic Client Configuration
    ccc_hdl = get_cfg_handle(handle);
    ASSERT_ERROR(ccc_hdl);

    // Convert handle to index
    status = custs1_get_att_idx(ccc_hdl, &ccc_idx);
    ASSERT_ERROR(status == ATT_ERR_NO_ERROR);

    ke_state_set(dest_id, CUSTS1_BUSY);
    custs1_env->operation = ke_param2msg(param);
    custs1_env->cursor = 0;
    custs1_env->ccc_idx = ccc_idx;

    // Trigger indication
    custs1_exe_operation();

    return KE_MSG_NO_FREE;
}

int custs1_val_ntf_req_handler(ke_msg_id_t const msgid,
                                      struct custs1_val_ntf_ind_req const *param,
                                      ke_task_id_t const dest_id,
                                      ke_task_id_t const src_id)
{
    struct custs1_env_tag *custs1_env = PRF_ENV_GET(CUSTS1, custs1);
    uint16_t ccc_hdl;
    uint16_t handle = custs1_env->shdl + param->handle;
    uint8_t ccc_idx;
    uint8_t status;

    uint8_t state = ke_state_get(dest_id);
    if (state == CUSTS1_BUSY)
    {
        return KE_MSG_SAVED;
    }

    // Find the handle of the Characteristic Client Configuration
    ccc_hdl = get_cfg_handle(handle);
    ASSERT_ERROR(ccc_hdl);

    // Convert handle to index
    status = custs1_get_att_idx(ccc_hdl, &ccc_idx);
    ASSERT_ERROR(status == ATT_ERR_NO_ERROR);

    ke_state_set(dest_id, CUSTS1_BUSY);
    custs1_env->operation = ke_param2msg(param);
    custs1_env->cursor = 0;
    custs1_env->ccc_idx = ccc_idx;

    // Trigger notification
    custs1_exe_operation();

    return KE_MSG_NO_FREE;
}

