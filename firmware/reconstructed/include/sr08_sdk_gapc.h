/* GAPC message parameters from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/host/gap/gapc/gapc_task.h and gap.h (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#ifndef SR08_SDK_GAPC_H
#define SR08_SDK_GAPC_H

#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_app_sec.h"
#include "firmware/reconstructed/include/sr08_sdk_kernel.h"

enum gapc_msg_id
{
    GAPC_CMP_EVT = KE_FIRST_MSG(TASK_ID_GAPC),
    GAPC_CONNECTION_REQ_IND,
    GAPC_CONNECTION_CFM,
    GAPC_DISCONNECT_IND,
    GAPC_DISCONNECT_CMD,
    GAPC_GET_INFO_CMD,
    GAPC_PEER_ATT_INFO_IND,
    GAPC_PEER_VERSION_IND,
    GAPC_PEER_FEATURES_IND,
    GAPC_CON_RSSI_IND,
    GAPC_GET_DEV_INFO_REQ_IND,
    GAPC_GET_DEV_INFO_CFM,
    GAPC_SET_DEV_INFO_REQ_IND,
    GAPC_SET_DEV_INFO_CFM,
    GAPC_PARAM_UPDATE_CMD,
    GAPC_PARAM_UPDATE_REQ_IND,
    GAPC_PARAM_UPDATE_CFM,
    GAPC_PARAM_UPDATED_IND,
    GAPC_BOND_CMD,
    GAPC_BOND_REQ_IND,
    GAPC_BOND_CFM,
    GAPC_BOND_IND,
    GAPC_ENCRYPT_CMD,
    GAPC_ENCRYPT_REQ_IND,
    GAPC_ENCRYPT_CFM,
    GAPC_ENCRYPT_IND,
    GAPC_SECURITY_CMD,
    GAPC_SECURITY_IND,
};

SR08_STATIC_ASSERT(GAPC_BOND_CFM == 0x0E14, "GAPC_BOND_CFM is 0x0E14");

enum gapc_dev_info
{
    GAPC_DEV_NAME,
    GAPC_DEV_APPEARANCE,
    GAPC_DEV_SLV_PREF_PARAMS,
    GAPC_DEV_CTL_ADDR_RESOL,
    GAPC_DEV_INFO_MAX,
};

struct gap_dev_name
{
    uint16_t length;
    uint8_t value[];
};

struct gap_slv_pref
{
    uint16_t con_intv_min;
    uint16_t con_intv_max;
    uint16_t slave_latency;
    uint16_t conn_timeout;
};

struct gapc_get_dev_info_req_ind
{
    uint8_t req;
};

struct gapc_get_dev_info_cfm
{
    uint8_t req;
    union gapc_dev_info_val
    {
        struct gap_dev_name name;
        uint16_t appearance;
        struct gap_slv_pref slv_params;
        uint8_t ctl_addr_resol;
    } info;
};

struct gapc_set_dev_info_req_ind
{
    uint8_t req;
    union gapc_set_dev_info
    {
        struct gap_dev_name name;
        uint16_t appearance;
    } info;
};

struct gapc_set_dev_info_cfm
{
    uint8_t req;
    uint8_t status;
};

/* gap.h */
enum gap_auth_mask
{
    GAP_AUTH_NONE = 0,
    GAP_AUTH_BOND = (1 << 0),
    GAP_AUTH_MITM = (1 << 2),
    GAP_AUTH_SEC = (1 << 3),
    GAP_AUTH_KEY = (1 << 4)
};

enum gap_auth
{
    GAP_AUTH_REQ_NO_MITM_NO_BOND = (GAP_AUTH_NONE),
    GAP_AUTH_REQ_NO_MITM_BOND    = (GAP_AUTH_BOND),
    GAP_AUTH_REQ_MITM_NO_BOND    = (GAP_AUTH_MITM),
    GAP_AUTH_REQ_MITM_BOND       = (GAP_AUTH_MITM | GAP_AUTH_BOND),
    GAP_AUTH_REQ_SECURE_CONNECTION = (GAP_AUTH_SEC),
    GAP_AUTH_REQ_LAST,
    GAP_AUTH_REQ_MASK_ = 0x1F
};

/* gapc_task.h */
enum gapc_operation
{
    GAPC_NO_OP = 0x00,
    GAPC_DISCONNECT,
};

struct gapc_disconnect_cmd
{
    uint8_t operation;
    uint8_t reason;
};

struct gapc_disconnect_ind
{
    uint16_t conhdl;
    uint8_t reason;
};

struct gapc_connection_req_ind
{
    uint16_t conhdl;
    uint16_t con_interval;
    uint16_t con_latency;
    uint16_t sup_to;
    uint8_t clk_accuracy;
    uint8_t peer_addr_type;
    struct bd_addr peer_addr;
};

struct gapc_encrypt_cfm
{
    uint8_t found;
    struct gap_sec_key ltk;
    uint8_t key_size;
};

struct gapc_connection_cfm
{
    struct gap_sec_key lcsrk;
    uint32_t lsign_counter;
    struct gap_sec_key rcsrk;
    uint32_t rsign_counter;
    uint8_t auth;
    uint8_t svc_changed_ind_enable;
};

/* app_mid.h */
static inline struct gapc_connection_cfm* app_connect_cfm_msg_create(uint8_t conidx)
{
    // confirm connection
    struct gapc_connection_cfm *cfm = KE_MSG_ALLOC(GAPC_CONNECTION_CFM,
                                                   KE_BUILD_ID(TASK_GAPC, conidx),
                                                   TASK_APP,
                                                   gapc_connection_cfm);

    return cfm;
}

static inline struct gapc_disconnect_cmd* app_disconnect_msg_create(uint8_t conidx)
{
    struct gapc_disconnect_cmd *cmd = KE_MSG_ALLOC(GAPC_DISCONNECT_CMD,
                                                   KE_BUILD_ID(TASK_GAPC, conidx),
                                                   TASK_APP,
                                                   gapc_disconnect_cmd);
    cmd->operation = GAPC_DISCONNECT;
    return cmd;
}

static inline void app_disconnect_msg_send(struct gapc_disconnect_cmd *cmd)
{
    ke_msg_send(cmd);
}

/* gapc_task.h: bonding */
enum gapc_bond
{
    GAPC_PAIRING_REQ,
    GAPC_PAIRING_RSP,
    GAPC_PAIRING_SUCCEED,
    GAPC_PAIRING_FAILED,
    GAPC_TK_EXCH,
    GAPC_IRK_EXCH,
    GAPC_CSRK_EXCH,
    GAPC_LTK_EXCH,
    GAPC_REPEATED_ATTEMPT,
};

struct gapc_pairing
{
    uint8_t iocap;
    uint8_t oob;
    uint8_t auth;
    uint8_t key_size;
    uint8_t ikey_dist;
    uint8_t rkey_dist;
    uint8_t sec_req;
};

struct gapc_bond_req_ind
{
    uint8_t request;
    union gapc_bond_req_data
    {
        uint8_t auth_req;
        uint8_t key_size;
        uint8_t tk_type;
    } data;
};

struct gapc_bond_ind
{
    uint8_t info;

    union gapc_bond_data
    {
        uint8_t auth;
        uint8_t reason;
        struct gapc_ltk ltk;
        struct gapc_irk irk;
        struct gap_sec_key csrk;
    } data;
};

struct gapc_bond_cfm
{
    uint8_t request;
    uint8_t accept;
    union gapc_bond_cfm_data
    {
        struct gapc_pairing pairing_feat;
        struct gapc_ltk ltk;
        struct gap_sec_key csrk;
        struct gap_sec_key tk;
    } data;
};

/* app_mid.h */
static inline struct gapc_bond_cfm* app_gapc_bond_cfm_msg_create(uint8_t conidx)
{
    struct gapc_bond_cfm* cmd = KE_MSG_ALLOC(GAPC_BOND_CFM, KE_BUILD_ID(TASK_GAPC, conidx), TASK_APP,
                                             gapc_bond_cfm);
    return cmd;
}

static inline struct gapc_bond_cfm* app_gapc_bond_cfm_pairing_rsp_msg_create(uint8_t conidx)
{
    struct gapc_bond_cfm* cmd = app_gapc_bond_cfm_msg_create(conidx);
    cmd->request = GAPC_PAIRING_RSP;

    return cmd;
}

/* rwble_hl_error.h */
#define CO_ERROR_REMOTE_USER_TERM_CON 0x13

#define MS_TO_DOUBLESLOTS(x)    ((int)((x) / 1.25))
#define MS_TO_TIMERUNITS(x)     ((int)((x) / 10))

/* gapc_task.h */
struct gapc_param_update_cmd
{
    uint8_t operation;
    uint8_t pkt_id;
    uint16_t intv_min;
    uint16_t intv_max;
    uint16_t latency;
    uint16_t time_out;
    uint16_t ce_len_min;
    uint16_t ce_len_max;
};
SR08_STATIC_ASSERT(sizeof(struct gapc_param_update_cmd) == 14, "GAPC_PARAM_UPDATE_CMD layout");

/* gapc_task.h: parameters of the GAPC_PARAM_UPDATED_IND message. */
struct gapc_param_updated_ind
{
    /// Connection interval value
    uint16_t            con_interval;
    /// Connection latency value
    uint16_t            con_latency;
    /// Supervision timeout
    uint16_t            sup_to;
};

#endif
