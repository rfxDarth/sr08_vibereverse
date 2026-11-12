/* suotar_init and suotar_set_dle_params_in_db from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/ble_stack/profiles/suota/suotar/src/suotar.c (Copyright (C)
 * Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), with the defines
 * from suotar.h, suotar_task.h, attm.h and att.h that it uses
 * (SUOTA_VERSION_1_3). suotar_init is static in the SDK; V204 reaches it
 * through suotar_itf. V204's KE_MEM_NON_RETENTION heap index is 2.
 */
#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_sdk_suotar.h"

/* attm.h (DA14585 permission layout) */
enum {
    PERM_MASK_RD = 0x0007, PERM_POS_RD = 0,
    PERM_MASK_WR = 0x0038, PERM_POS_WR = 3,
    PERM_MASK_WRITE_COMMAND = 0x8000, PERM_POS_WRITE_COMMAND = 15,
    PERM_MASK_WRITE_REQ = 0x20000, PERM_POS_WRITE_REQ = 17,
};
#define ATT_UUID_16(uuid) (uuid)
#define ATT_UUID_16_ARR(uuid) {(uint8_t)(uuid), (uint8_t)(uuid >> 8)}

/* V204 heap index of KE_MEM_NON_RETENTION (the SDK 6.0.18 enum gives 3; hogpd_init
 * agrees, while KE_MEM_ENV and KE_MEM_ATT_DB keep 0 and 1). */
#define V204_KE_MEM_NON_RETENTION 2

/* suotar.h */
#define SUOTA_PD_CHAR_SIZE 244
/* suotar_task.h */
struct suotar_db_cfg
{
    /// Indicate if ext mem is supported or not
    uint8_t features;
};
extern const struct ke_state_handler suotar_default_handler;

/* suotar.c */
#define ATT_SVC_SUOTAR                   {0xF5, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}
#define SUOTA_MEM_DEV_UUID               {0x34, 0xcc, 0x54, 0xb9, 0xf9, 0x56, 0xc6, 0x91, 0x21, 0x40, 0xa6, 0x41, 0xa8, 0xca, 0x82, 0x80}
#define SUOTA_GPIO_MAP_UUID              {0x51, 0x86, 0xf0, 0x5a, 0x34, 0x42, 0x04, 0x88, 0x5f, 0x4b, 0xc3, 0x5e, 0xf0, 0x49, 0x42, 0x72}
#define SUOTA_MEM_INFO_UUID              {0xd4, 0x4f, 0x33, 0xfb, 0x92, 0x7c, 0x22, 0xa0, 0xfe, 0x45, 0xa1, 0x47, 0x25, 0xdb, 0x53, 0x6c}
#define SUOTA_PATCH_LEN_UUID             {0x31, 0xda, 0x3f, 0x67, 0x5b, 0x85, 0x83, 0x91, 0xd8, 0x49, 0x0c, 0x00, 0xa3, 0xb9, 0x84, 0x9d}
#define SUOTA_PATCH_DATA_UUID            {0xb2, 0x9c, 0x7b, 0xb1, 0xd0, 0x57, 0x16, 0x91, 0xa1, 0x4c, 0x16, 0xd5, 0xe8, 0x71, 0x78, 0x45}
#define SUOTA_SERV_STATUS_UUID           {0x88, 0x5c, 0x06, 0x6a, 0xeb, 0xb3, 0x0a, 0x99, 0xf5, 0x46, 0x8c, 0x79, 0x94, 0xdf, 0x78, 0x5f}
#define SUOTA_VERSION_UUID               {0x3a, 0x91, 0x3b, 0xdb, 0xc8, 0xac, 0x1d, 0xa2, 0x1b, 0x40, 0xe5, 0x0d, 0xb5, 0xe8, 0xb4, 0x64}
#define SUOTA_PATCH_DATA_CHAR_SIZE_UUID  {0x3b, 0xfb, 0x67, 0x52, 0x87, 0x8f, 0x54, 0x84, 0x9c, 0x4d, 0xbe, 0x77, 0xdd, 0xdf, 0xc3, 0x42}
#define SUOTA_MTU_UUID                   {0x3c, 0xe2, 0xfc, 0x3d, 0x90, 0xc4, 0xaf, 0xa3, 0xbb, 0x43, 0x3d, 0x82, 0xea, 0x1e, 0xde, 0xb7}

static void suotar_set_dle_params_in_db(uint16_t suota_shdl)
{
    uint8_t version = SUOTA_VERSION;
    uint16_t pd_char_size = SUOTA_PD_CHAR_SIZE;
    //Set SUOTA version into DB
    attmdb_att_set_value(suota_shdl + SUOTA_IDX_VERSION_VAL,
                         sizeof(uint8_t),
                         0,
                         &version);
    //Set PATCH_DATA_CHAR_SIZE value
    attmdb_att_set_value(suota_shdl + SUOTA_IDX_PATCH_DATA_CHAR_SIZE_VAL,
                         sizeof(uint16_t),
                         0,
                         (uint8_t*)&pd_char_size);
}

__attribute__((used, section(".text.register_custom_gatt_service_and_initialize_state")))
uint8_t register_custom_gatt_service_and_initialize_state(struct prf_task_env* env, uint16_t* start_hdl, uint16_t app_task,
                            uint8_t sec_lvl, struct suotar_db_cfg* params)
{
    struct suotar_env_tag* suotar_env = NULL;
    struct gattm_svc_desc *svc_desc = NULL;
    uint8_t att_idx = 0;
    uint8_t status;

    // Allocate database descriptor
    svc_desc = (struct gattm_svc_desc *) ke_malloc(sizeof(struct gattm_svc_desc) + \
                                // No need for svc declaration, thus (SUOTA_IDX_NB - 1)
                                (SUOTA_IDX_NB - 1) * sizeof(struct gattm_att_desc), \
                                V204_KE_MEM_NON_RETENTION);

    /*---------------------------------------------------*
     * SUOTAR Service Creation
     *---------------------------------------------------*/
    svc_desc->start_hdl = *start_hdl;
    svc_desc->task_id = env->task;
    svc_desc->perm = ((sec_lvl & PERM_MASK_SVC_AUTH) | (sec_lvl & PERM_MASK_SVC_EKS) | \
                        PERM(SVC_PRIMARY, ENABLE) | PERM(SVC_MI, DISABLE) | \
                        PERM_VAL(SVC_UUID_LEN, PERM_UUID_16));
    struct att_uuid_128 temp =
    {
        .uuid = ATT_SVC_SUOTAR
    };
    memcpy((struct att_uuid_128 *)(&svc_desc->uuid), &temp, sizeof(svc_desc->uuid) / sizeof(svc_desc->uuid[0]));

    // Char. decl. and value attribute for patch_mem_dev
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = ATT_UUID_16_ARR(ATT_DECL_CHARACTERISTIC), .perm = 0, .max_len = 0 };
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = SUOTA_MEM_DEV_UUID,
            .perm = PERM(RD, ENABLE) | PERM(WR, ENABLE) | PERM(WRITE_REQ, ENABLE) | \
                    PERM_VAL(UUID_LEN, PERM_UUID_128),
            .max_len = sizeof(uint32_t) };

    // Char. decl. and value attribute for gpio_map
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = ATT_UUID_16_ARR(ATT_DECL_CHARACTERISTIC), .perm = 0, .max_len = 0 };
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = SUOTA_GPIO_MAP_UUID,
            .perm = PERM(RD, ENABLE) | PERM(WR, ENABLE) | PERM(WRITE_REQ, ENABLE) | \
                    PERM_VAL(UUID_LEN, PERM_UUID_128),
            .max_len = sizeof(uint32_t) };

    // Char. decl. and value attribute for patch_mem info
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = ATT_UUID_16_ARR(ATT_DECL_CHARACTERISTIC), .perm = 0, .max_len = 0 };
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = SUOTA_MEM_INFO_UUID,
            .perm = PERM(RD, ENABLE) | PERM_VAL(UUID_LEN, PERM_UUID_128),
            .max_len = sizeof(uint32_t) };

    // Char. decl. and value attribute for patch_len
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = ATT_UUID_16_ARR(ATT_DECL_CHARACTERISTIC), .perm = 0, .max_len = 0 };
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = SUOTA_PATCH_LEN_UUID,
            .perm = PERM(RD, ENABLE) | PERM(WR, ENABLE) | PERM(WRITE_REQ, ENABLE) | \
                    PERM_VAL(UUID_LEN, PERM_UUID_128),
            .max_len = sizeof(uint16_t) };

    // Char. decl. and value attribute for patch_data
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = ATT_UUID_16_ARR(ATT_DECL_CHARACTERISTIC), .perm = 0, .max_len = 0 };
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = SUOTA_PATCH_DATA_UUID,
            .perm = PERM(RD, ENABLE) | PERM(WR, ENABLE) | PERM(WRITE_REQ, ENABLE) | \
                    PERM(WRITE_COMMAND, ENABLE) | \
                    PERM_VAL(UUID_LEN, PERM_UUID_128),
            .max_len = sizeof(uint8_t) * SUOTA_PD_CHAR_SIZE };

    // Char. decl., value attribute and CCC for patch_status
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = ATT_UUID_16_ARR(ATT_DECL_CHARACTERISTIC), .perm = 0, .max_len = 0 };
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = SUOTA_SERV_STATUS_UUID,
            .perm = PERM(RD, ENABLE) | PERM(NTF, ENABLE) | \
                    PERM_VAL(UUID_LEN, PERM_UUID_128),
            .max_len = sizeof(uint8_t) };
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = ATT_UUID_16_ARR(ATT_DESC_CLIENT_CHAR_CFG),
            .perm = PERM(RD, ENABLE) | PERM(WR, ENABLE) | PERM(WRITE_REQ, ENABLE) | \
                    PERM(WRITE_COMMAND, ENABLE) | PERM_VAL(UUID_LEN, PERM_UUID_16),
            .max_len = 0 };

    // Char. decl. and value attribute for version
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = ATT_UUID_16_ARR(ATT_DECL_CHARACTERISTIC), .perm = 0, .max_len = 0 };
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = SUOTA_VERSION_UUID,
            .perm = PERM(RD, ENABLE) | PERM_VAL(UUID_LEN, PERM_UUID_128),
            .max_len = sizeof(uint8_t) };

    // Char. decl. and value attribute for patch_data_char_size
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = ATT_UUID_16_ARR(ATT_DECL_CHARACTERISTIC), .perm = 0, .max_len = 0 };
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = SUOTA_PATCH_DATA_CHAR_SIZE_UUID,
            .perm = PERM(RD, ENABLE) | PERM_VAL(UUID_LEN, PERM_UUID_128),
            .max_len = sizeof(uint16_t) };

    // Char. decl. and value attribute for mtu
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = ATT_UUID_16_ARR(ATT_DECL_CHARACTERISTIC), .perm = 0, .max_len = 0 };
    svc_desc->atts[att_idx++] = (struct gattm_att_desc) {
            .uuid = SUOTA_MTU_UUID,
            .perm = PERM(RD, ENABLE) | PERM_VAL(UUID_LEN, PERM_UUID_128),
            .max_len = PERM(RI, ENABLE) | sizeof(uint16_t) };

    // Count all attributes and create database
    svc_desc->nb_att = att_idx;
    status = attmdb_add_service(svc_desc);

    if (status == ATT_ERR_NO_ERROR)
    {
        // Allocate SUOTAR required environment variable
        suotar_env = (struct suotar_env_tag*) \
                        ke_malloc(sizeof(struct suotar_env_tag), KE_MEM_ENV);
        memset(suotar_env, 0 , sizeof(struct suotar_env_tag));

        suotar_env->suota_shdl        = svc_desc->start_hdl;
        suotar_env->features          = params->features;
        suotar_env->ntf_cfg           = GATT_CCC_STOP_NTFIND;
        suotar_env->prf_env.app_task  = app_task
            | (PERM_GET(sec_lvl, SVC_MI) ? PERM(PRF_MI, ENABLE) : PERM(PRF_MI, DISABLE));
        suotar_env->prf_env.prf_task  = env->task | PERM(PRF_MI, DISABLE);

        // Initialize environment variable
        env->id                     = TASK_ID_SUOTAR;
        env->desc.idx_max           = SUOTAR_IDX_MAX;
        env->desc.state             = suotar_env->state;
        env->desc.default_handler   = &suotar_default_handler;
        env->env = (prf_env_t*) suotar_env;

        // Set start handle to first allocated service value
        *start_hdl = suotar_env->suota_shdl;

        // Service is ready, go into an Idle state
        ke_state_set(env->task, SUOTAR_IDLE);

        suotar_set_dle_params_in_db(suotar_env->suota_shdl);
    }

    ke_free(svc_desc);
    return status;
}
