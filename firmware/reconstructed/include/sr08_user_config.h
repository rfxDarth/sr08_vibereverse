/* V204's application configuration, in the form of the SDK's user
 * configuration headers (Dialog/Renesas DA145xx SDK 6.0.18.1182.1,
 * projects/.../src/config/user_callback_config.h and user_config.h; struct
 * definitions from sdk/app_modules/api/app_callback.h, app_default_handlers.h,
 * app_entry_point.h and app_user_config.h; Copyright (C) Dialog
 * Semiconductor, see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 *
 * As in the SDK, every translation unit that includes this header gets its own
 * static const copy, and V204's link-time optimisation folded the values into
 * the code. The values are read back from that code; a NULL callback is one
 * whose call V204's code does not contain.
 */
#ifndef SR08_USER_CONFIG_H
#define SR08_USER_CONFIG_H

#include "firmware/reconstructed/include/sr08_sdk_app.h"

struct gapc_connection_req_ind;
struct gapc_disconnect_ind;
struct gapm_adv_report_ind;
struct app_device_name;
struct gap_slv_pref;
struct gapc_set_dev_info_req_ind;
struct gapc_le_pkt_size_ind;
struct gapc_param_update_req_ind;
struct gapc_param_update_cfm;
struct bd_addr;
struct gapc_peer_features_ind;
struct gapc_bond_req_ind;
struct gapc_encrypt_req_ind;
struct gapm_addr_solved_ind;
struct gapm_cmp_evt;

/* app_callback.h (BLE_APP_SEC, DA14585) */
struct app_callbacks
{
    void (*app_on_connection)(const uint8_t, struct gapc_connection_req_ind const *);
    void (*app_on_disconnect)(struct gapc_disconnect_ind const *);
    void (*app_on_update_params_rejected)(const uint8_t);
    void (*app_on_update_params_complete)(void);
    void (*app_on_set_dev_config_complete)(void);
    void (*app_on_adv_nonconn_complete)(const uint8_t);
    void (*app_on_adv_undirect_complete)(const uint8_t);
    void (*app_on_adv_direct_complete)(const uint8_t);
    void (*app_on_db_init_complete)(void);
    void (*app_on_scanning_completed)(const uint8_t);
    void (*app_on_adv_report_ind)(struct gapm_adv_report_ind const *);
    void (*app_on_connect_failed)(void);
    void (*app_on_get_dev_name)(struct app_device_name *);
    void (*app_on_get_dev_appearance)(uint16_t*);
    void (*app_on_get_dev_slv_pref_params)(struct gap_slv_pref*);
    void (*app_on_set_dev_info)(struct gapc_set_dev_info_req_ind const *, uint8_t*);
    void (*app_on_data_length_change)(const uint8_t, struct gapc_le_pkt_size_ind *);
    void (*app_on_update_params_request)(struct gapc_param_update_req_ind const *, struct gapc_param_update_cfm *);
    void (*app_on_generate_static_random_addr)(struct bd_addr *);
    void (*app_on_svc_changed_cfg_ind)(uint8_t, uint16_t);
    void (*app_on_get_peer_features)(const uint8_t, struct gapc_peer_features_ind const *);
    void (*app_on_pairing_request)(const uint8_t, struct gapc_bond_req_ind const *);
    void (*app_on_tk_exch)(const uint8_t, struct gapc_bond_req_ind const *);
    void (*app_on_irk_exch)(struct gapc_bond_req_ind const *);
    void (*app_on_csrk_exch)(const uint8_t, struct gapc_bond_req_ind const *);
    void (*app_on_ltk_exch)(const uint8_t, struct gapc_bond_req_ind const *);
    void (*app_on_pairing_succeeded)(const uint8_t);
    void (*app_on_encrypt_ind)(const uint8_t, const uint8_t);
    void (*app_on_encrypt_req_ind)(const uint8_t, struct gapc_encrypt_req_ind const *);
    void (*app_on_security_req_ind)(const uint8_t);
    void (*app_on_addr_solved_ind)(const uint8_t, struct gapm_addr_solved_ind const *);
    void (*app_on_addr_resolve_failed)(const uint8_t);
    void (*app_on_ral_cmp_evt)(struct gapm_cmp_evt const *);
    void (*app_on_ral_size_ind)(const uint8_t);
    void (*app_on_ral_addr_ind)(const uint8_t, const uint8_t *);
};

#define CALLBACK_ARGS_0(cb)                         {if (cb != NULL) cb();}
#define CALLBACK_ARGS_1(cb, arg1)                   {if (cb != NULL) cb(arg1);}
#define CALLBACK_ARGS_2(cb, arg1, arg2)             {if (cb != NULL) cb(arg1, arg2);}

/* app_default_handlers.h */
struct default_app_operations
{
    void (*default_operation_adv)(void);
};
extern void default_app_on_set_dev_config_complete(void);
extern void default_app_on_connection(uint8_t conidx, struct gapc_connection_req_ind const *param);
extern void default_app_on_pairing_request(uint8_t conidx, struct gapc_bond_req_ind const *param);
extern void default_app_on_ltk_exch(uint8_t conidx, struct gapc_bond_req_ind const *param);
extern void default_app_on_get_dev_name(struct app_device_name *device_name);
extern void default_app_on_get_dev_appearance(uint16_t *appearance);
extern void default_app_on_get_dev_slv_pref_params(struct gap_slv_pref *slv_params);
extern void default_app_on_set_dev_info(struct gapc_set_dev_info_req_ind const *param, uint8_t *status);

/* app_entry_point.h */
typedef void(*catch_rest_event_func_t)(ke_msg_id_t const msgid,
                                        void const *param,
                                        ke_task_id_t const dest_id,
                                        ke_task_id_t const src_id);

/* app_user_config.h */
enum gap_role { GAP_ROLE_NONE = 0x00, GAP_ROLE_OBSERVER = 0x01, GAP_ROLE_BROADCASTER = 0x02,
                GAP_ROLE_CENTRAL = (0x04 | GAP_ROLE_OBSERVER), GAP_ROLE_PERIPHERAL = (0x08 | GAP_ROLE_BROADCASTER),
                GAP_ROLE_ALL = (GAP_ROLE_CENTRAL | GAP_ROLE_PERIPHERAL) };
#define BD_ADDR_LEN 6
#define KEY_LEN 16
struct gapm_configuration {
    enum gap_role role;
    uint16_t max_mtu;
    uint8_t addr_type;
    uint8_t addr[BD_ADDR_LEN];
    uint16_t renew_dur;
    uint8_t irk[KEY_LEN];
    uint8_t  att_cfg;
    uint16_t gap_start_hdl;
    uint16_t gatt_start_hdl;
    uint16_t max_mps;
    uint16_t max_txoctets;
    uint16_t max_txtime;
};

/* app_user_config.h (the SDK's enum bit-fields are one byte each). The
 * SDK's user_config.h defines user_security_conf as a static const; V204's
 * one copy is at 0x07fcf9f4, defined in data/V204_user_config.c. */
struct security_configuration
{
    uint8_t iocap;
    uint8_t oob;
    uint8_t auth;
    uint8_t key_size;
    uint8_t ikey_dist;
    uint8_t rkey_dist;
    uint8_t sec_req;
};
extern const struct security_configuration user_security_conf;

/* User functions (V204's own units, or inlined vendor code in lto_support). */
extern void user_app_adv_start(void);
extern void user_app_adv_undirect_complete(uint8_t status);
extern void user_app_disconnect(struct gapc_disconnect_ind const *param);
extern void user_app_connection(uint8_t connection_idx, struct gapc_connection_req_ind const *param);
extern void user_app_on_pairing_succeeded(uint8_t conidx);
extern void user_app_on_encrypt_req_ind(uint8_t conidx, struct gapc_encrypt_req_ind const *param);
extern void user_catch_rest_hndl(ke_msg_id_t const msgid, void const *param,
                                 ke_task_id_t const dest_id, ke_task_id_t const src_id);

/* user_callback_config.h */
static const struct app_callbacks user_app_callbacks = {
    .app_on_connection              = user_app_connection,
    .app_on_disconnect              = user_app_disconnect,
    .app_on_set_dev_config_complete = default_app_on_set_dev_config_complete,
    .app_on_adv_undirect_complete   = user_app_adv_undirect_complete,
    .app_on_get_dev_name            = default_app_on_get_dev_name,
    .app_on_get_dev_appearance      = default_app_on_get_dev_appearance,
    .app_on_get_dev_slv_pref_params = default_app_on_get_dev_slv_pref_params,
    .app_on_set_dev_info            = default_app_on_set_dev_info,
    .app_on_pairing_request         = default_app_on_pairing_request,
    .app_on_ltk_exch                = default_app_on_ltk_exch,
    .app_on_pairing_succeeded       = user_app_on_pairing_succeeded,
    .app_on_encrypt_req_ind         = user_app_on_encrypt_req_ind,
};

static const struct default_app_operations user_default_app_operations = {
    .default_operation_adv = user_app_adv_start,
};

static const catch_rest_event_func_t app_process_catch_rest_cb = (catch_rest_event_func_t)user_catch_rest_hndl;

/* app_user_config.h address modes; user_config.h: V204 uses a public address. */
#define APP_CFG_ADDR_PUB                    (0x00)
#define APP_CFG_ADDR_STATIC                 (0x10)
#define APP_CFG_CNTL_PRIV_RPA_PUB           (0x41)
#define APP_CFG_CNTL_PRIV_RPA_RAND          (0xC1)
#define USER_CFG_ADDRESS_MODE               APP_CFG_ADDR_PUB

static const struct gapm_configuration user_gapm_conf = {
    .role = GAP_ROLE_PERIPHERAL,
    .max_mtu = 23,
    .addr_type = 0,
    .renew_dur = 0,
    .att_cfg = 0x20,
    .gap_start_hdl = 0,
    .gatt_start_hdl = 0,
    .max_mps = 0,
    .max_txoctets = 251,
    .max_txtime = 2120,
};

#endif
