/* Custom service 1 (CUSTS1) definitions from the Dialog/Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/ble_stack/profiles/custom/custs/api/custs1.h and
 * custs1_task.h, and gattc_task.h (Copyright (C) Dialog Semiconductor; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 *
 * Each SDK function is its own V204 unit named after it; functions that are
 * static in the SDK have external linkage here. Static handlers whose names
 * repeat across profiles carry a "custs1_" prefix.
 *
 * V204's link-time optimisation removed return values that no caller used, so
 * custs1_att_get_value() and custs1_att_set_value() return void here; their
 * bodies otherwise match the SDK.
 */
#ifndef SR08_SDK_CUSTS1_H
#define SR08_SDK_CUSTS1_H

#include "firmware/reconstructed/include/sr08_sdk_attm.h"
#include "firmware/reconstructed/include/sr08_sdk_kernel.h"

#define CUSTS1_IDX_MAX (1)

enum custs1_state { CUSTS1_IDLE, CUSTS1_BUSY, CUSTS1_STATE_MAX };

enum {
    CUSTS1_CREATE_DB_REQ = KE_FIRST_MSG(TASK_ID_CUSTS1),
    CUSTS1_CREATE_DB_CFM,
    CUSTS1_ENABLE_REQ,
    CUSTS1_VAL_SET_REQ,
    CUSTS1_VALUE_REQ_IND,
    CUSTS1_VALUE_REQ_RSP,
    CUSTS1_VAL_NTF_REQ,
    CUSTS1_VAL_NTF_CFM,
    CUSTS1_VAL_IND_REQ,
    CUSTS1_VAL_IND_CFM,
    CUSTS1_VAL_WRITE_IND,
    CUSTS1_DISABLE_IND,
    CUSTS1_ERROR_IND,
    CUSTS1_ATT_INFO_REQ,
    CUSTS1_ATT_INFO_RSP,
};


struct ke_msg {
    struct co_list_hdr hdr;
    ke_msg_id_t id;
    ke_task_id_t dest_id;
    ke_task_id_t src_id;
    uint16_t param_len;
    uint32_t param[1];
};

static inline struct ke_msg *ke_param2msg(void const *param_ptr)
{
    return (struct ke_msg*) (((uint8_t*)param_ptr) - offsetof(struct ke_msg, param));
}

static inline void *ke_msg2param(struct ke_msg const *msg)
{
    return (void*) (((uint8_t*) msg) + offsetof(struct ke_msg, param));
}

struct custs1_db_cfg {
    uint8_t max_nb_att;
    uint8_t *att_tbl;
    uint8_t *cfg_flag;
    uint16_t features;
};

struct custs1_val_ntf_ind_req {
    uint8_t conidx;
    bool notification;
    uint16_t handle;
    uint16_t length;
    uint8_t value[];
};

struct custs1_val_ind_req {
    uint8_t conidx;
    uint16_t handle;
    uint16_t length;
    uint8_t value[];
};

struct custs1_att_info_rsp {
    uint8_t conidx;
    uint16_t att_idx;
    uint16_t length;
    uint8_t status;
};

struct custs1_val_ntf_cfm {
    uint16_t handle;
    uint8_t status;
};

struct custs1_val_ind_cfm {
    uint8_t conidx;
    uint16_t handle;
    uint8_t status;
};

struct custs1_val_elmt {
    struct co_list_hdr hdr;
    uint8_t att_idx;
    uint8_t length;
    uint8_t data[];
};

struct custs1_env_tag {
    prf_env_t prf_env;
    uint16_t shdl;
    uint8_t max_nb_att;
    struct ke_msg *operation;
    uint8_t cursor;
    uint8_t ccc_idx;
    struct co_list values;
    /* V204 extension: allocation is 40 bytes and task state is at byte 36. */
    uint8_t vendor_fields_before_state[12];
    ke_state_t state[CUSTS1_IDX_MAX];
};

struct custs1_value_req_ind
{
    /// Connection index
    uint8_t  conidx;
    /// Index of the attribute for which value has been requested
    uint16_t att_idx;
};
struct custs1_val_write_ind
{
    /// Connection index
    uint8_t  conidx;
    /// Handle of the attribute that has to be written
    uint16_t handle;
    /// Data length to be written
    uint16_t length;
    /// Data to be written in attribute database
    uint8_t  value[];
};
struct custs1_att_info_req {
    uint8_t conidx;
    uint16_t att_idx;
};

SR08_STATIC_ASSERT(offsetof(struct custs1_env_tag, values) == 16, "value list must remain at offset 16");
SR08_STATIC_ASSERT(offsetof(struct custs1_env_tag, state) == 36, "custom profile state must remain at offset 36");
SR08_STATIC_ASSERT(sizeof(struct custs1_env_tag) == 40, "custom profile allocation must remain 40 bytes");

static inline bool co_list_is_empty(const struct co_list *const list)
{
    bool listempty;
    listempty = (list->first == NULL);
    return (listempty);
}

struct ke_state_handler;
extern void co_list_init(struct co_list *list);
extern struct co_list_hdr *co_list_pop_front(struct co_list *list);
uint16_t get_cfg_handle(uint16_t value_handle);
/* custom_common.c */
uint16_t get_value_handle(uint16_t cfg_handle);
int check_client_char_cfg(bool is_notification, const struct gattc_write_req_ind *param);

/* app_prf_types.h */
typedef void (*prf_func_void_t)(void);
typedef void (*prf_func_uint8_t)(uint8_t);
typedef uint8_t (*prf_func_validate_t)(uint16_t, uint16_t, uint16_t, uint8_t*);

struct cust_prf_func_callbacks
{
    /// Profile Task ID.
    enum KE_API_ID             task_id;
    /// pointer to the custom database table defined by user
    const struct attm_desc_128 *att_db;
    /// max number of attributes in custom database
    const uint8_t              max_nb_att;
    /// Pointer to the custom database create function defined by user
    prf_func_void_t            db_create_func;
    /// Pointer to the custom profile enable function defined by user
    prf_func_uint8_t           enable_func;
    /// Pointer to the custom profile initialization function
    prf_func_void_t            init_func;
    /// Pointer to the validation function defined by user
    prf_func_validate_t        value_wr_validation_func;
};
SR08_STATIC_ASSERT(sizeof(struct cust_prf_func_callbacks) == 28, "cust_prf_funcs entries are 28 bytes in V204");

/* user_custs_config.c (V204_user_custs_config.c) and app_customs.c */
extern const struct cust_prf_func_callbacks cust_prf_funcs[];
extern void app_custs1_create_db(void);
extern const struct cust_prf_func_callbacks *custs_get_func_callbacks(enum KE_API_ID task_id);

/* Application-defined custom service database (user_custs1_def.c). */
extern const uint8_t custs1_services[];
extern const uint8_t custs1_services_size;
extern const uint16_t custs1_att_max_nb;
extern const struct attm_desc_128 custs1_att_db[];
extern const struct ke_state_handler custs1_default_handler;

void custs1_att_get_value(uint8_t att_idx, uint16_t *length, const uint8_t **data);
void custs1_att_set_value(uint8_t att_idx, uint16_t length, const uint8_t *data);
void custs1_set_ccc_value(uint8_t conidx, uint8_t att_idx, uint16_t ccc);
uint8_t custs1_get_att_idx(uint16_t handle, uint8_t *att_idx);

#endif
