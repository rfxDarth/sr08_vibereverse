/* HID over GATT profile (device role) definitions from the Renesas DA145xx
 * SDK 6.0.18.1182.1, sdk/ble_stack/profiles/hogp/hogpd/src/hogpd.h,
 * api/hogpd.h and api/hogpd_task.h (Copyright (C) Dialog Semiconductor / Renesas Electronics
 * Corporation; see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 *
 * V204 was built with one HID service instance (HOGPD_NB_HIDS_INST_MAX 1; the SDK default is 2)
 * and up to two reports per instance (hogpd_init: report_nb > 2 is rejected), which fixes the layout of
 * struct hogpd_env_tag below.
 */
#ifndef SR08_SDK_HOGPD_H
#define SR08_SDK_HOGPD_H

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_kernel.h"
#include "firmware/reconstructed/include/sr08_static_assert.h"

#define HOGPD_NB_HIDS_INST_MAX 1
#define HOGPD_REPORT_MAX_LEN (45)
#define HOGPD_REPORT_MAP_MAX_LEN (512)
#define HOGPD_BOOT_REPORT_MAX_LEN (8)
enum { HOGP_BOOT_PROTOCOL_MODE = 0x00, HOGP_REPORT_PROTOCOL_MODE };
#define HOGPD_NB_REPORT_INST_MAX 2
#define HOGPD_NB_NOTIFICATION_MAX 8
#define HOGPD_INVALID_HANDLE 0x0000

#define HIDS_MANDATORY_ATT_NB 7
#define HIDS_MAP_EXT_ATT_NB 2
#define HIDS_KEYBOARD_ATT_NB 5
#define HIDS_MOUSE_ATT_NB 3
#define HIDS_PROTO_MODE_ATT_NB 2
#define HIDS_REPORT_MANDATORY_ATT_NB 3
#define HIDS_REPORT_IN_ATT_NB 1

enum {
    HOGPD_IDX_SVC,
    HOGPD_IDX_INCL_SVC,
    HOGPD_IDX_HID_INFO_CHAR,
    HOGPD_IDX_HID_INFO_VAL,
    HOGPD_IDX_HID_CTNL_PT_CHAR,
    HOGPD_IDX_HID_CTNL_PT_VAL,
    HOGPD_IDX_REPORT_MAP_CHAR,
    HOGPD_IDX_REPORT_MAP_VAL,
    HOGPD_IDX_REPORT_MAP_EXT_REP_REF,
    HOGPD_IDX_PROTO_MODE_CHAR,
    HOGPD_IDX_PROTO_MODE_VAL,
    HOGPD_IDX_BOOT_KB_IN_REPORT_CHAR,
    HOGPD_IDX_BOOT_KB_IN_REPORT_VAL,
    HOGPD_IDX_BOOT_KB_IN_REPORT_NTF_CFG,
    HOGPD_IDX_BOOT_KB_OUT_REPORT_CHAR,
    HOGPD_IDX_BOOT_KB_OUT_REPORT_VAL,
    HOGPD_IDX_BOOT_MOUSE_IN_REPORT_CHAR,
    HOGPD_IDX_BOOT_MOUSE_IN_REPORT_VAL,
    HOGPD_IDX_BOOT_MOUSE_IN_REPORT_NTF_CFG,
    HOGPD_ATT_UNIQ_NB,
    HOGPD_IDX_REPORT_CHAR = HOGPD_ATT_UNIQ_NB,
    HOGPD_IDX_REPORT_VAL,
    HOGPD_IDX_REPORT_REP_REF,
    HOGPD_IDX_REPORT_NTF_CFG,
    HOGPD_IDX_NB,
};

enum hogpd_cfg {
    HOGPD_CFG_KEYBOARD = 0x01,
    HOGPD_CFG_MOUSE = 0x02,
    HOGPD_CFG_PROTO_MODE = 0x04,
    HOGPD_CFG_MAP_EXT_REF = 0x08,
    HOGPD_CFG_BOOT_KB_WR = 0x10,
    HOGPD_CFG_BOOT_MOUSE_WR = 0x20,
    HOGPD_CFG_MASK = 0x3F,
    HOGPD_CFG_REPORT_NTF_EN = 0x40,
};

struct hogpd_svc_cfg {
    uint16_t features;
    uint16_t ntf_cfg[HOGPD_NB_NOTIFICATION_MAX];
    uint8_t nb_att;
    uint8_t nb_report;
    uint8_t report_hdl_offset;
    uint8_t proto_mode;
};

struct hogpd_operation {
    uint8_t conidx;
    uint8_t operation;
    uint16_t handle;
};

struct hogpd_env_tag {
    prf_env_t prf_env;
    struct hogpd_svc_cfg svcs[HOGPD_NB_HIDS_INST_MAX];
    uint16_t start_hdl;
    struct hogpd_operation op;
    ke_state_t state[1];
    uint8_t hids_nb;
    /* Vendor addition (not in the SDK): count of report updates awaiting completion. */
    uint8_t reports_in_flight;
};

SR08_STATIC_ASSERT(sizeof(struct hogpd_svc_cfg) == 22, "HID service configuration must remain 22 bytes");
SR08_STATIC_ASSERT(offsetof(struct hogpd_env_tag, start_hdl) == 26, "start handle must remain at offset 26");
SR08_STATIC_ASSERT(offsetof(struct hogpd_env_tag, hids_nb) == 33, "service count must remain at offset 33");
SR08_STATIC_ASSERT(offsetof(struct hogpd_env_tag, reports_in_flight) == 34, "vendor counter must remain at offset 34");

/* hogpd_task.h */
enum { HOGPD_IDLE, HOGPD_REQ_BUSY = (1 << 0), HOGPD_OP_BUSY = (1 << 1), HOGPD_STATE_MAX };

enum hogpd_msg_id {
    HOGPD_ENABLE_REQ = KE_FIRST_MSG(TASK_ID_HOGPD),
    HOGPD_ENABLE_RSP,
    HOGPD_REPORT_UPD_REQ,
    HOGPD_REPORT_UPD_RSP,
    HOGPD_REPORT_REQ_IND,
    HOGPD_REPORT_CFM,
    HOGPD_PROTO_MODE_REQ_IND,
    HOGPD_PROTO_MODE_CFM,
    HOGPD_NTF_CFG_IND,
    HOGPD_CTNL_PT_IND,
};

enum hogpd_report_type {
    HOGPD_REPORT,
    HOGPD_REPORT_MAP,
    HOGPD_BOOT_KEYBOARD_INPUT_REPORT,
    HOGPD_BOOT_KEYBOARD_OUTPUT_REPORT,
    HOGPD_BOOT_MOUSE_INPUT_REPORT,
};

enum hogpd_op { HOGPD_OP_NO, HOGPD_OP_REPORT_READ, HOGPD_OP_REPORT_WRITE, HOGPD_OP_PROT_UPDATE };

struct hogpd_proto_mode_cfm {
    uint8_t conidx;
    uint8_t status;
    uint8_t hid_idx;
    uint8_t proto_mode;
};

struct hogpd_report_info {
    uint8_t hid_idx;
    uint8_t type;
    uint16_t length;
    uint8_t idx;
    uint8_t value[];
};

struct hogpd_enable_req {
    uint8_t conidx;
    uint16_t ntf_cfg[HOGPD_NB_HIDS_INST_MAX];
};

struct hogpd_enable_rsp {
    uint8_t conidx;
    uint8_t status;
};

struct hogpd_report_upd_req {
    uint8_t conidx;
    struct hogpd_report_info report;
};

struct hogpd_report_upd_rsp {
    uint8_t conidx;
    uint8_t status;
};

struct hogpd_report_req_ind {
    uint8_t conidx;
    uint8_t operation;
    struct hogpd_report_info report;
};

struct hogpd_proto_mode_req_ind {
    uint8_t conidx;
    uint8_t operation;
    uint8_t hid_idx;
    uint8_t proto_mode;
};

struct hogpd_ctnl_pt_ind {
    uint8_t conidx;
    uint8_t hid_idx;
    uint8_t hid_ctnl_pt;
};

struct hogpd_ntf_cfg_ind {
    uint8_t conidx;
    uint16_t ntf_cfg[HOGPD_NB_HIDS_INST_MAX];
};

struct hogpd_report_cfm {
    uint8_t conidx;
    uint8_t operation;
    uint8_t status;
    struct hogpd_report_info report;
};

#define ATT_INVALID_HANDLE 0x0000
#ifndef ATT_INVALID_HDL
#define ATT_INVALID_HDL (0x0000)
#endif

uint16_t hogpd_get_att_handle(struct hogpd_env_tag *hogpd_env, uint8_t svc_idx, uint8_t att_idx, uint8_t report_idx);
uint8_t hogpd_get_att_idx(struct hogpd_env_tag *hogpd_env, uint16_t handle, uint8_t *svc_idx, uint8_t *att_idx,
                          uint8_t *report_idx);
uint8_t hogpd_ntf_send(uint8_t conidx, const struct hogpd_report_info *report);
uint8_t hogpd_ntf_cfg_ind_send(uint8_t conidx, uint8_t svc_idx, uint8_t att_idx, uint8_t report_idx, uint16_t ntf_cfg);

#endif
