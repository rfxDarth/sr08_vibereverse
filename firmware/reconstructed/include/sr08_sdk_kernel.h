/* Kernel, list and error definitions from the Dialog/Renesas DA145xx SDK
 * 6.0.18.1182.1: sdk/platform/core_modules/ke/api/ke_msg.h, ke_task.h,
 * ke_mem.h, common/api/co_list.h, rwip/api/rwip_config.h and
 * ble_stack/rwble_hl/rwble_hl_error.h (Copyright (C) Dialog Semiconductor; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 *
 * V204 is a production build with one BLE connection index range of 8, and its
 * ASSERT_ERROR is the non-debug form: reload the watchdog with 200, resume it,
 * and halt.
 */
#ifndef SR08_SDK_KERNEL_H
#define SR08_SDK_KERNEL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"
#include "firmware/reconstructed/include/sr08_sdk_attm.h"
#include "firmware/reconstructed/include/sr08_sdk_co_bt.h"
#include "firmware/reconstructed/include/sr08_sdk_prf.h"

#define ASSERT_ERROR(x) { do { if (!(x)) { *SR08_HARDFAULT_STATUS_REGISTER = 200; *SR08_HALT_STATUS_REGISTER = 8; while (1); } } while (0); }

#define BLE_CONNECTION_MAX 8
#define KE_FIRST_MSG(task) ((ke_msg_id_t)((task) << 8))
#define KE_MSG_ALLOC(id, dest, src, param_str) \
    (struct param_str*) ke_msg_alloc(id, dest, src, sizeof(struct param_str))

#define KE_MSG_ALLOC_DYN(id, dest, src, param_str,length)  (struct param_str*)ke_msg_alloc(id, dest, src, \
    (sizeof(struct param_str) + length));

enum { TASK_APP = 4, TASK_GATTC = 8, TASK_GAPM = 9, TASK_GAPC = 10 };

/* gapm_task.h: GAPM_PROFILE_TASK_ADD_CMD and its operation. */
enum { GAPM_CMP_EVT = 0x0D00, GAPM_DEVICE_READY_IND, GAPM_RESET_CMD, GAPM_CANCEL_CMD,
       GAPM_SET_DEV_CONFIG_CMD, GAPM_PROFILE_TASK_ADD_CMD = 0x0D1B };
/* enum gapm_operation, in order */
enum {
    GAPM_NO_OP = 0x00, GAPM_RESET, GAPM_CANCEL, GAPM_SET_DEV_CONFIG, GAPM_SET_CHANNEL_MAP,
    GAPM_GET_DEV_VERSION, GAPM_GET_DEV_BDADDR, GAPM_GET_DEV_ADV_TX_POWER, GAPM_GET_WLIST_SIZE,
    GAPM_ADD_DEV_IN_WLIST, GAPM_RMV_DEV_FRM_WLIST, GAPM_CLEAR_WLIST, GAPM_ADV_NON_CONN,
    GAPM_ADV_UNDIRECT, GAPM_ADV_DIRECT, GAPM_ADV_DIRECT_LDC, GAPM_UPDATE_ADVERTISE_DATA,
    GAPM_SCAN_ACTIVE, GAPM_SCAN_PASSIVE, GAPM_CONNECTION_DIRECT, GAPM_CONNECTION_AUTO,
    GAPM_CONNECTION_SELECTIVE, GAPM_CONNECTION_NAME_REQUEST, GAPM_RESOLV_ADDR, GAPM_GEN_RAND_ADDR,
    GAPM_USE_ENC_BLOCK, GAPM_GEN_RAND_NB, GAPM_PROFILE_TASK_ADD,
};
/* rwble_hl_error.h */


/* gapm_task.h */
struct gapm_set_dev_config_cmd
{
    uint8_t operation;
    uint8_t role;
    uint16_t renew_dur;
    struct bd_addr addr;
    struct gap_sec_key irk;
    uint8_t addr_type;
    uint8_t  att_cfg;
    uint16_t gap_start_hdl;
    uint16_t gatt_start_hdl;
    uint16_t max_mtu;
    uint16_t max_mps;
    uint16_t  att_cfg_; // Not used
    uint16_t max_txoctets;
    uint16_t max_txtime;
    uint8_t priv1_2;
};

struct gapm_cmp_evt
{
    /// GAP requested operation
    uint8_t operation;
    /// Status of the request
    uint8_t status;
};

struct gapm_reset_cmd
{
    /// GAPM requested operation:
    /// - GAPM_RESET: Reset BLE subsystem: LL and HL.
    uint8_t operation;
};

/* app.c (app_prf_perm_types.h): the service permission of a profile task. */
typedef uint8_t app_prf_srv_perm_t;
extern app_prf_srv_perm_t get_user_prf_srv_perm(enum KE_API_ID task_id);
/* gattc_task.h message identifiers (KE_FIRST_MSG(TASK_ID_GATTC) = 0x0C00). */
enum {
    GATTC_SEND_EVT_CMD = 0x0C10,
    GATTC_READ_CFM = 0x0C14,
    GATTC_WRITE_CFM = 0x0C16,
    GATTC_ATT_INFO_CFM = 0x0C18,
};
enum ke_msg_status_tag { KE_MSG_CONSUMED = 0, KE_MSG_NO_FREE, KE_MSG_SAVED };
enum { KE_MEM_ENV, KE_MEM_ATT_DB, KE_MEM_KE_MSG, KE_MEM_NON_RETENTION, KE_MEM_BLOCK_MAX };
enum {
    ATT_ERR_NO_ERROR = 0x00,
    ATT_ERR_APP_ERROR = 0x80,
    ATT_ERR_ATTRIBUTE_NOT_FOUND = 0x0A,
    ATT_ERR_WRITE_NOT_PERMITTED = 0x03,
    ATT_ERR_INVALID_ATTRIBUTE_VAL_LEN = 0x0D,
    PRF_APP_ERROR = 0x80,
    PRF_ERR_INVALID_PARAM = 0x81,
    PRF_ERR_REQ_DISALLOWED = 0x89,
    PRF_ERR_NTF_DISABLED = 0x8A,
    PRF_ERR_FEATURE_NOT_SUPPORTED = 0x8C,
    PRF_ERR_UNEXPECTED_LEN = 0x8D,
};

struct co_list_hdr {
    struct co_list_hdr *next;
};

struct co_list {
    struct co_list_hdr *first;
    struct co_list_hdr *last;
};

enum prf_cli_conf { PRF_CLI_STOP_NTFIND = 0x0000, PRF_CLI_START_NTF, PRF_CLI_START_IND };

struct gattc_cmp_evt {
    uint8_t operation;
    uint8_t status;
    uint16_t seq_num;
};

struct gattc_read_req_ind {
    uint16_t handle;
};

struct gattc_write_req_ind {
    uint16_t handle;
    uint16_t offset;
    uint16_t length;
    uint8_t value[];
};

/* gattc_task.h confirmation messages. */
struct gattc_read_cfm {
    uint16_t handle;
    uint16_t length;
    uint8_t status;
    uint8_t value[];
};

struct gattc_write_cfm {
    uint16_t handle;
    uint8_t status;
};

struct gattc_send_evt_cmd {
    uint8_t operation;
    uint16_t seq_num;
    uint16_t handle;
    uint16_t length;
    uint8_t value[];
};

struct gattc_att_info_cfm {
    uint16_t handle;
    uint16_t length;
    uint8_t status;
};

struct gattc_att_info_req_ind {
    uint16_t handle;
};

enum { GATTC_NOTIFY = 18, GATTC_INDICATE = 19 };

/* prf.c */
static inline ke_task_id_t prf_src_task_get(prf_env_t* env, uint8_t conidx)
{
    ke_task_id_t task = PERM_GET(env->prf_task, PRF_TASK);

    if(PERM_GET(env->prf_task, PRF_MI))
    {
        task = KE_BUILD_ID(task, conidx);
    }

    return task;
}

static inline ke_task_id_t prf_dst_task_get(prf_env_t* env, uint8_t conidx)
{
    ke_task_id_t task = PERM_GET(env->app_task, PRF_TASK);

    if(PERM_GET(env->app_task, PRF_MI))
    {
        task = KE_BUILD_ID(task, conidx);
    }

    return task;
}

/* co_utils.h */
static inline uint16_t co_read16p(void const *ptr16)
{
    uint16_t value = ((uint8_t *)ptr16)[0] | ((uint8_t *)ptr16)[1] << 8;
    return value;
}

/* co_list_pick() is a static inline in co_list.h. */
static inline struct co_list_hdr *co_list_pick(const struct co_list *const list)
{
    return list->first;
}

/* prf_env_get() (prf.c) and the PRF_ENV_GET() accessor from prf_utils.h. */
extern prf_env_t *prf_env_get(uint16_t prf_id);
#define PRF_ENV_GET(prf_id, type) ((struct type ## _env_tag *)prf_env_get((TASK_ID_##prf_id)))

/* ROM functions. */
extern void *ke_msg_alloc(ke_msg_id_t const id, ke_task_id_t const dest_id, ke_task_id_t const src_id,
                          uint16_t const param_len);
extern void ke_msg_send(void const *param_ptr);
extern ke_state_t ke_state_get(ke_task_id_t const id);
extern void ke_state_set(ke_task_id_t const id, ke_state_t const state_id);
#define GAP_INVALID_CONHDL 0xFFFF
extern uint16_t gapc_get_conhdl(uint8_t conidx);
extern void *ke_malloc(uint32_t size, uint8_t type);
extern void ke_free(void *mem_ptr);
extern void co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr);
extern bool co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr, uint8_t nb_following);

#endif
