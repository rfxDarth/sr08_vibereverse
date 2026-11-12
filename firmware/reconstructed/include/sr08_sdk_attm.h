/* ATT database definitions from the Dialog/Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/host/att/att.h, attm/attm.h and attm/attm_db.h (Copyright (C)
 * Dialog Semiconductor; see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 * DA14585's BLE stack is version 8, so attribute permissions are 32 bits.
 */
#ifndef SR08_SDK_ATTM_H
#define SR08_SDK_ATTM_H

#include <stdbool.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

#define ATT_UUID_16_LEN 0x0002
#define ATT_UUID_128_LEN 0x0010

enum {
    ATT_DECL_CHARACTERISTIC = 0x2803,
    ATT_DESC_CLIENT_CHAR_CFG = 0x2902,
};

typedef uint32_t att_perm_type;

struct attm_att_desc {
    uint16_t uuid;
    att_perm_type perm;
    union att_info {
        uint16_t value;
        uint16_t max_lengh;
        uint16_t offset;
    } info;
};

struct attm_svc_desc {
    uint16_t start_hdl;
    uint16_t end_hdl;
    uint16_t task_id;
    uint8_t perm;
    uint8_t nb_att;
    uint16_t uuid;
};

struct attm_svc {
    struct attm_svc *next;
    struct attm_svc_desc svc;
    struct attm_att_desc atts[];
};

struct attm_elmt {
    union elem_info {
        struct attm_att_desc *att;
        struct attm_svc_desc *svc;
    } info;
    bool service;
};

typedef uint16_t att_size_t;

struct att_uuid_128 {
    uint8_t uuid[ATT_UUID_128_LEN];
};

#define ATT_UUID_32_LEN 0x0004
#define ATT_INVALID_HDL (0x0000)

/* Permission helpers (attm.h, BLE stack version 8, and prf.h). */
#define PERM_GET(perm, access) (((perm) & (PERM_MASK_ ## access)) >> (PERM_POS_ ## access))
#define PERM(access, right) (((PERM_RIGHT_ ## right) << (PERM_POS_ ## access)) & (PERM_MASK_ ## access))
#define PERM_VAL(access, perm) ((((perm) << (PERM_POS_ ## access))) & (PERM_MASK_ ## access))
#define PERM_IS_SET(perm, access, right) \
    (((perm) & (((PERM_RIGHT_ ## right) << (PERM_POS_ ## access))) \
                & (PERM_MASK_ ## access)) == PERM(access, right))
/// Initialization of attribute element
#define ATT_ELEMT_INIT                                   {{NULL}, false}

enum {
    PERM_MASK_UUID_LEN = 0xC0000, PERM_POS_UUID_LEN = 18,
    PERM_MASK_NTF = 0x0E00, PERM_POS_NTF = 9,
    PERM_MASK_RI = 0x8000, PERM_POS_RI = 15,
    PERM_MASK_SVC_MI = 0x01, PERM_POS_SVC_MI = 0,
    PERM_MASK_SVC_EKS = 0x02, PERM_POS_SVC_EKS = 1,
    PERM_MASK_SVC_AUTH = 0x1C, PERM_POS_SVC_AUTH = 2,
    PERM_MASK_SVC_UUID_LEN = 0x60, PERM_POS_SVC_UUID_LEN = 5,
    PERM_MASK_SVC_PRIMARY = 0x80, PERM_POS_SVC_PRIMARY = 7,
    PERM_MASK_PRF_TASK = 0x7FFF, PERM_POS_PRF_TASK = 0,
    PERM_MASK_PRF_MI = 0x8000, PERM_POS_PRF_MI = 15,
};
enum { PERM_RIGHT_DISABLE = 0, PERM_RIGHT_ENABLE = 1, PERM_RIGHT_UNAUTH = 2 };
enum { PERM_UUID_16 = 0, PERM_UUID_32 = 1, PERM_UUID_128 = 2, PERM_UUID_RFU = 3 };

/* attm_db_128.h */
struct attm_desc_128 {
    const uint8_t *uuid;
    uint8_t uuid_size;
    att_perm_type perm;
    att_size_t max_length;
    att_size_t length;
    uint8_t *value;
};

/* gattm_task.h */
struct gattm_att_desc {
    uint8_t uuid[ATT_UUID_128_LEN];
    att_perm_type perm;
    uint16_t max_len;
};

struct gattm_svc_desc {
    uint16_t start_hdl;
    uint16_t task_id;
    uint8_t perm;
    uint8_t nb_att;
    uint8_t uuid[ATT_UUID_128_LEN];
    uint16_t __padding__;
    __attribute__((__packed__)) struct gattm_att_desc atts[];
};

SR08_STATIC_ASSERT(sizeof(struct attm_desc_128) == 20, "128-bit attribute descriptor must remain 20 bytes");
SR08_STATIC_ASSERT(sizeof(struct attm_att_desc) == 12, "attribute descriptor must remain 12 bytes");
SR08_STATIC_ASSERT(sizeof(struct attm_svc_desc) == 10, "service descriptor must remain 10 bytes");

/* ROM functions. */
extern struct attm_svc *attmdb_get_service(uint16_t handle);
extern uint8_t attmdb_get_attribute(uint16_t handle, struct attm_elmt *elmt);
extern uint8_t attmdb_add_service(struct gattm_svc_desc *svc_desc);
extern uint8_t attmdb_att_set_value(uint16_t handle, att_size_t length, att_size_t offset, uint8_t *value);
extern uint8_t attmdb_get_uuid(struct attm_elmt *elmt, uint8_t *uuid_len, uint8_t *uuid, bool srv_uuid, bool air);
extern uint8_t attmdb_att_get_permission(uint16_t handle, att_perm_type* perm, att_perm_type access_mask, struct attm_elmt *elmt);

#endif
