/* hogpd_init from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/hogp/hogpd/src/hogpd.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here. Declarations it needs are
 * copied from attm.h, attm_db.h, att.h, hogp_common.h and hogpd_task.h.
 */
#include <string.h>
#include "firmware/reconstructed/include/sr08_sdk_attm.h"
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"
#include "firmware/reconstructed/include/sr08_sdk_prf.h"

#define HIDS_CFG_FLAG_MANDATORY_MASK    ((uint32_t)0x000FD)
#define HIDS_CFG_FLAG_MAP_EXT_MASK      ((uint32_t)0x00102)
#define HIDS_CFG_FLAG_PROTO_MODE_MASK   ((uint32_t)0x00600)
#define HIDS_CFG_FLAG_KEYBOARD_MASK     ((uint32_t)0x0F800)
#define HIDS_CFG_FLAG_MOUSE_MASK        ((uint32_t)0x70000)
// number of attribute index for a report
#define HIDS_REPORT_NB_IDX              (4)

#define HOGPD_ATT_MAX (HOGPD_ATT_UNIQ_NB + (4 * (HOGPD_NB_REPORT_INST_MAX)))
#define HOGPD_IDX_MAX (0x01)
#define ATT_SVC_HID 0x1812
#define ATT_ERR_NO_ERROR 0x00
/* V204 heap index of KE_MEM_NON_RETENTION (the SDK enum gives 3). */
#define V204_KE_MEM_NON_RETENTION 2

enum {
    PERM_MASK_RD = 0x0007, PERM_POS_RD = 0,
    PERM_MASK_WR = 0x0038, PERM_POS_WR = 3,
    PERM_MASK_WRITE_COMMAND = 0x8000, PERM_POS_WRITE_COMMAND = 15,
    PERM_MASK_WRITE_REQ = 0x20000, PERM_POS_WRITE_REQ = 17,
};

/// Internal 16bits UUID service description
struct attm_desc
{
    /// 16 bits UUID LSB First
    uint16_t uuid;
    /// Attribute Permissions (@see enum attm_perm_mask)
    att_perm_type perm;
    /// Attribute Max Size (@see enum attm_value_perm_mask)
    /// note: for characteristic declaration contains handle offset
    /// note: for included service, contains target service handle
    uint16_t max_size;
};

enum hogpd_report_cfg
{
    HOGPD_CFG_REPORT_IN     = 0x01,
    HOGPD_CFG_REPORT_OUT    = 0x02,
    HOGPD_CFG_REPORT_FEAT   = 0x03,
    HOGPD_CFG_REPORT_WR     = 0x10,
};

struct hids_report_ref
{
    uint8_t report_id;
    uint8_t report_type;
};

struct hids_hid_info
{
    uint16_t bcdHID;
    uint8_t  bCountryCode;
    uint8_t  flags;
};

struct hogpd_ext_ref
{
    uint16_t inc_svc_hdl;
    uint16_t rep_ref_uuid;
};

struct hogpd_hids_cfg
{
    uint8_t svc_features;
    uint8_t report_nb;
    uint8_t report_char_cfg[HOGPD_NB_REPORT_INST_MAX];
    uint8_t report_id[HOGPD_NB_REPORT_INST_MAX];
    struct hids_hid_info hid_info;
    struct hogpd_ext_ref ext_ref;
};

struct hogpd_db_cfg
{
    uint8_t hids_nb;
    struct hogpd_hids_cfg cfg[HOGPD_NB_HIDS_INST_MAX];
};

extern const struct attm_desc hids_att_db[HOGPD_IDX_NB];
extern const struct ke_state_handler hogpd_default_handler;

uint8_t attm_svc_create_db(uint16_t *shdl, uint16_t uuid, uint8_t *cfg_flag, uint8_t max_nb_att,
                           uint8_t *att_tbl, ke_task_id_t const dest_id,
                           const struct attm_desc *att_db, uint8_t svc_perm);
uint8_t attmdb_reserve_handle_range(uint16_t* start_hdl, uint8_t nb_att);

__attribute__((used, section(".text.hogpd_init")))
uint8_t hogpd_init(struct prf_task_env* env, uint16_t* start_hdl, uint16_t app_task, uint8_t sec_lvl,  struct hogpd_db_cfg* params)
{
    struct hogpd_env_tag* hogpd_env = NULL;
    // Service content flag - Without Report Characteristics
    uint32_t cfg_flag[HOGPD_NB_HIDS_INST_MAX][(HOGPD_ATT_MAX/32) +1];
    // Start handle used to allocate service.
    uint16_t shdl;

    // Total number of attributes
    uint8_t tot_nb_att = 0;

    // array of service description used to allocate the service
    struct attm_desc * hids_db[HOGPD_NB_HIDS_INST_MAX];
    // Status
    uint8_t status = GAP_ERR_NO_ERROR;
    // Service Instance Counter, Counter
    uint8_t svc_idx, report_idx;
    // Report Char. Report Ref value
    struct hids_report_ref report_ref;

    //-------------------- allocate memory required for the profile  ---------------------
    hogpd_env = (struct hogpd_env_tag* ) ke_malloc(sizeof(struct hogpd_env_tag), KE_MEM_ATT_DB);

    // ensure that everything is initialized
    memset(hids_db, 0, sizeof(hids_db));
    memset(cfg_flag, 0, sizeof(cfg_flag));
    memset(hogpd_env, 0, sizeof(struct hogpd_env_tag));


    // Check number of HID instances
    if ((params->hids_nb == 0) || (params->hids_nb > HOGPD_NB_HIDS_INST_MAX))
    {
        // Invalid number of service instances
        status = PRF_ERR_INVALID_PARAM;
    }

    // For each required HIDS instance
    for (svc_idx = 0; ((svc_idx < params->hids_nb) && (status == GAP_ERR_NO_ERROR)); svc_idx++)
    {
        // Check number of Report Char. instances
        if (params->cfg[svc_idx].report_nb > HOGPD_NB_REPORT_INST_MAX)
        {
            // Too many Report Char. Instances
            status = PRF_ERR_INVALID_PARAM;
            break;
        }

        // retrieve features
        hogpd_env->svcs[svc_idx].features  = params->cfg[svc_idx].svc_features & HOGPD_CFG_MASK;
        hogpd_env->svcs[svc_idx].nb_report = params->cfg[svc_idx].report_nb;

        hids_db[svc_idx] = (struct attm_desc *) ke_malloc(HOGPD_ATT_MAX * sizeof(struct attm_desc), V204_KE_MEM_NON_RETENTION);

        cfg_flag[svc_idx][0]             = HIDS_CFG_FLAG_MANDATORY_MASK;
        hogpd_env->svcs[svc_idx].nb_att += HIDS_MANDATORY_ATT_NB;

        // copy default definition of the HID attribute database
        memcpy(hids_db[svc_idx], hids_att_db, sizeof(struct attm_desc) * HOGPD_ATT_UNIQ_NB);

        //--------------------------------------------------------------------
        // Compute cfg_flag[i] without Report Characteristics
        //--------------------------------------------------------------------
        if ((params->cfg[svc_idx].svc_features & HOGPD_CFG_MAP_EXT_REF) == HOGPD_CFG_MAP_EXT_REF)
        {
            cfg_flag[svc_idx][0]            |= HIDS_CFG_FLAG_MAP_EXT_MASK;
            hogpd_env->svcs[svc_idx].nb_att += HIDS_MAP_EXT_ATT_NB;
            // store reference handle in database
            hids_db[svc_idx][HOGPD_IDX_INCL_SVC].max_size = params->cfg[svc_idx].ext_ref.inc_svc_hdl;
        }

        if ((params->cfg[svc_idx].svc_features & HOGPD_CFG_PROTO_MODE) == HOGPD_CFG_PROTO_MODE)
        {
            cfg_flag[svc_idx][0]            |= HIDS_CFG_FLAG_PROTO_MODE_MASK;
            hogpd_env->svcs[svc_idx].nb_att += HIDS_PROTO_MODE_ATT_NB;
        }

        if ((params->cfg[svc_idx].svc_features & HOGPD_CFG_KEYBOARD) == HOGPD_CFG_KEYBOARD)
        {
            cfg_flag[svc_idx][0]            |= HIDS_CFG_FLAG_KEYBOARD_MASK;
            hogpd_env->svcs[svc_idx].nb_att += HIDS_KEYBOARD_ATT_NB;

            if ((params->cfg[svc_idx].svc_features & HOGPD_CFG_BOOT_KB_WR) == HOGPD_CFG_BOOT_KB_WR)
            {
                // Adds write permissions on report
                hids_db[svc_idx][HOGPD_IDX_BOOT_KB_IN_REPORT_VAL].perm |= (PERM(WR, ENABLE) | PERM(WRITE_REQ, ENABLE));
            }
        }

        if ((params->cfg[svc_idx].svc_features & HOGPD_CFG_MOUSE) == HOGPD_CFG_MOUSE)
        {
            cfg_flag[svc_idx][0]            |= HIDS_CFG_FLAG_MOUSE_MASK;
            hogpd_env->svcs[svc_idx].nb_att += HIDS_MOUSE_ATT_NB;

            if ((params->cfg[svc_idx].svc_features & HOGPD_CFG_BOOT_MOUSE_WR) == HOGPD_CFG_BOOT_MOUSE_WR)
            {
                // Adds write permissions on report
                hids_db[svc_idx][HOGPD_IDX_BOOT_MOUSE_IN_REPORT_VAL].perm |= (PERM(WR, ENABLE) | PERM(WRITE_REQ, ENABLE));
            }
        }

        // set report handle offset
        hogpd_env->svcs[svc_idx].report_hdl_offset = hogpd_env->svcs[svc_idx].nb_att;

        //--------------------------------------------------------------------
        // Update cfg_flag_rep[i] with Report Characteristics
        //--------------------------------------------------------------------
        for (report_idx = 0; report_idx < params->cfg[svc_idx].report_nb; report_idx++)
        {
            att_perm_type perm = 0;
            uint16_t report_offset = HIDS_REPORT_NB_IDX*report_idx;

            // update config for current report
            cfg_flag[svc_idx][(HOGPD_IDX_REPORT_CHAR + report_offset) / 32]    |= (1 << ((HOGPD_IDX_REPORT_CHAR + report_offset) % 32));
            cfg_flag[svc_idx][(HOGPD_IDX_REPORT_VAL + report_offset) / 32]     |= (1 << ((HOGPD_IDX_REPORT_VAL + report_offset) % 32));
            cfg_flag[svc_idx][(HOGPD_IDX_REPORT_REP_REF + report_offset) / 32] |= (1 << ((HOGPD_IDX_REPORT_REP_REF + report_offset) % 32));
            hogpd_env->svcs[svc_idx].nb_att += HIDS_REPORT_MANDATORY_ATT_NB;

            // copy default definition of the HID report database
            memcpy(&(hids_db[svc_idx][HOGPD_IDX_REPORT_CHAR + report_offset]), &(hids_att_db[HOGPD_IDX_REPORT_CHAR]), sizeof(struct attm_desc) * HIDS_REPORT_NB_IDX);

            // according to the report type, update value property
            switch (params->cfg[svc_idx].report_char_cfg[report_idx] & HOGPD_CFG_REPORT_FEAT)
            {
                // Input Report
                case HOGPD_CFG_REPORT_IN:
                {
                    // add notification permission on report
                    perm = PERM(RD, ENABLE) | PERM(NTF, ENABLE);
                    // Report Char. supports NTF => Client Characteristic Configuration Descriptor
                    cfg_flag[svc_idx][(HOGPD_IDX_REPORT_NTF_CFG + report_offset) / 32] |= (1 << ((HOGPD_IDX_REPORT_NTF_CFG + report_offset) % 32));
                    hogpd_env->svcs[svc_idx].nb_att += HIDS_REPORT_IN_ATT_NB;

                    // update feature flag
                    hogpd_env->svcs[svc_idx].features |= (HOGPD_CFG_REPORT_NTF_EN << report_idx);

                    // check if attribute value could be written
                    if ((params->cfg[svc_idx].report_char_cfg[report_idx] & HOGPD_CFG_REPORT_WR) == HOGPD_CFG_REPORT_WR)
                    {
                        perm |= PERM(WR, ENABLE) | PERM(WRITE_REQ, ENABLE);
                    }
                } break;

                // Output Report
                case HOGPD_CFG_REPORT_OUT:
                {
                    perm = PERM(RD, ENABLE) | PERM(WR, ENABLE)| PERM(WRITE_REQ, ENABLE) | PERM(WRITE_COMMAND, ENABLE);
                } break;

                // Feature Report
                case HOGPD_CFG_REPORT_FEAT:
                {
                    perm = PERM(RD, ENABLE) | PERM(WR, ENABLE) | PERM(WRITE_REQ, ENABLE);
                } break;

                default:
                {
                    status = PRF_ERR_INVALID_PARAM;
                } break;
            }

            hids_db[svc_idx][HOGPD_IDX_REPORT_VAL + (HIDS_REPORT_NB_IDX*report_idx)].perm  = perm;
        }

        // increment total number of attributes to allocate.
        tot_nb_att += hogpd_env->svcs[svc_idx].nb_att;
    }

    // Check that attribute list can be allocated.
    if(status == ATT_ERR_NO_ERROR)
    {
        status = attmdb_reserve_handle_range(start_hdl, tot_nb_att);
    }

    // used start handle calculated when handle range reservation has been performed
    shdl = *start_hdl;
    hogpd_env->start_hdl = *start_hdl;
    hogpd_env->hids_nb   = params->hids_nb;
    // Initialize the Report ID
    report_ref.report_id = 0;

    // allocate services
    for (svc_idx = 0; ((svc_idx < params->hids_nb) && (status == GAP_ERR_NO_ERROR)); svc_idx++)
    {
        uint16_t handle;
        status = attm_svc_create_db(&shdl, ATT_SVC_HID, (uint8_t *)&(cfg_flag[svc_idx][0]),
                                    HOGPD_ATT_MAX, NULL, env->task, hids_db[svc_idx],
                                    (sec_lvl & PERM_MASK_SVC_AUTH) | (sec_lvl & PERM_MASK_SVC_EKS) | PERM(SVC_PRIMARY, ENABLE));
        // update start handle for next service
        shdl += hogpd_env->svcs[svc_idx].nb_att;

        // Set HID Information Char. Value
        if(status == GAP_ERR_NO_ERROR)
        {
            handle = hogpd_get_att_handle(hogpd_env, svc_idx, HOGPD_IDX_HID_INFO_VAL, 0);
            ASSERT_ERROR(handle != ATT_INVALID_HDL);
            status = attmdb_att_set_value(handle, sizeof(struct hids_hid_info), 0, (uint8_t *)&params->cfg[svc_idx].hid_info);
        }

        // Set Report Map Char. External Report Ref value
        if((status == GAP_ERR_NO_ERROR)
                && ((params->cfg[svc_idx].svc_features & HOGPD_CFG_MAP_EXT_REF) == HOGPD_CFG_MAP_EXT_REF))
        {
            handle = hogpd_get_att_handle(hogpd_env, svc_idx, HOGPD_IDX_REPORT_MAP_EXT_REP_REF, 0);
            ASSERT_ERROR(handle != ATT_INVALID_HDL);
            status = attmdb_att_set_value(handle, sizeof(uint16_t), 0, (uint8_t *)&params->cfg[svc_idx].ext_ref.rep_ref_uuid);
        }

        // Set Report External Ref value
        for(report_idx = 0 ; (status == GAP_ERR_NO_ERROR)
                              && (report_idx < params->cfg[svc_idx].report_nb) ; report_idx++)
        {
            // Save the Report ID
            report_ref.report_id = params->cfg[svc_idx].report_id[report_idx];
            // Set Report Type
            report_ref.report_type = (params->cfg[svc_idx].report_char_cfg[report_idx] & HOGPD_CFG_REPORT_FEAT);

            handle = hogpd_get_att_handle(hogpd_env, svc_idx, HOGPD_IDX_REPORT_REP_REF, report_idx);
            ASSERT_ERROR(handle != ATT_INVALID_HDL);
            // Set value in the database
            status = attmdb_att_set_value(handle, sizeof(struct hids_report_ref), 0, (uint8_t *)&report_ref);
        }


        // by default in Report protocol mode.
        hogpd_env->svcs[svc_idx].proto_mode = HOGP_REPORT_PROTOCOL_MODE;

    }

    //-------------------- Update profile task information  ---------------------
    if (status == ATT_ERR_NO_ERROR)
    {
        // allocate HOGPD required environment variable
        env->env = (prf_env_t*) hogpd_env;
        hogpd_env->prf_env.app_task = app_task
                | (PERM_GET(sec_lvl, SVC_MI) ? PERM(PRF_MI, ENABLE) : PERM(PRF_MI, DISABLE));
        hogpd_env->prf_env.prf_task = env->task | PERM(PRF_MI, DISABLE);
        // initialize environment variable
        env->id                     = TASK_ID_HOGPD;
        env->desc.idx_max           = HOGPD_IDX_MAX;
        env->desc.state             = hogpd_env->state;
        env->desc.default_handler   = &hogpd_default_handler;

        // service is ready, go into an Idle state
        ke_state_set(env->task, HOGPD_IDLE);
    }
    else if(hogpd_env != NULL)
    {
        ke_free(hogpd_env);
    }

    // ensure that temporary allocated databases description is correctly free
    for (svc_idx = 0; svc_idx < HOGPD_NB_HIDS_INST_MAX; svc_idx++)
    {
        if(hids_db[svc_idx] != NULL)
        {
            ke_free(hids_db[svc_idx]);
        }
    }

    return status;
}
