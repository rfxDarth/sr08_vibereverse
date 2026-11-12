/* Functions from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_common/app.c (Copyright (C) Dialog Semiconductor /
 * Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt) that V204's link
 * inlined into their callers. V204 uses a public address
 * (USER_CFG_ADDRESS_MODE == APP_CFG_ADDR_PUB). set_dev_config_cmd is static in
 * the SDK; here it is V204's fixed RAM object (data/V204_ram_symbols.json).
 * llm_le_env is the ROM's link-layer environment; only the fields used here
 * are declared.
 */
#include "firmware/reconstructed/include/sr08_user_config.h"

/* llm.h (ROM data at llm_le_env) */
struct llm_le_env_tag
{
    uint8_t reserved_00[0x7a];
    uint16_t supportedMaxTxOctets;
    uint16_t supportedMaxTxTime;
};
_Static_assert(offsetof(struct llm_le_env_tag, supportedMaxTxOctets) == 0x7a, "ROM llm_le_env layout");
extern struct llm_le_env_tag llm_le_env;

/* co_math.h */
static inline uint32_t co_min(uint32_t a, uint32_t b)
{
    return a < b ? a : b;
}

extern struct gapm_set_dev_config_cmd *set_dev_config_cmd;

static struct gapm_set_dev_config_cmd* app_easy_gap_dev_config_create_msg(void)
{
    // Allocate a message for GAP
    if (set_dev_config_cmd == NULL)
    {
        struct gapm_set_dev_config_cmd* cmd;
        cmd = app_gapm_configure_msg_create();
        set_dev_config_cmd = cmd;

        cmd->role = user_gapm_conf.role;
        cmd->max_mtu = user_gapm_conf.max_mtu;
        cmd->addr_type = user_gapm_conf.addr_type;
// If privacy is disabled, there is no need to set the renew duration
        cmd->renew_dur = 0;
        memset(cmd->irk.key, 0, KEY_LEN*sizeof(uint8_t));

        cmd->att_cfg = user_gapm_conf.att_cfg;
        cmd->gap_start_hdl = user_gapm_conf.gap_start_hdl;
        cmd->gatt_start_hdl = user_gapm_conf.gatt_start_hdl;
        cmd->max_mps = user_gapm_conf.max_mps;
        cmd->max_txoctets = co_min(user_gapm_conf.max_txoctets, llm_le_env.supportedMaxTxOctets);
        cmd->max_txtime = co_min(user_gapm_conf.max_txtime, llm_le_env.supportedMaxTxTime);
    }
    return set_dev_config_cmd;
}

void app_easy_gap_dev_configure(void)
{
    struct gapm_set_dev_config_cmd* cmd = app_easy_gap_dev_config_create_msg();
    app_gapm_configure_msg_send(cmd);
    set_dev_config_cmd = NULL;
}

bool app_db_init_start(void)
{
    // Indicate if more services need to be added in the database
    bool end_db_create;

    // We are now in Initialization State
    ke_state_set(TASK_APP, APP_DB_INIT);

    end_db_create = app_db_init_next();

    return end_db_create;
}
