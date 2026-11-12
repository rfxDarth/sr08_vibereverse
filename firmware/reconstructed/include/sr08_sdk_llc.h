/* Leading fields of the link-layer controller environment from the Renesas
 * DA145xx SDK 6.0.22.1401 (sdk/ble_stack/controller/llc/llc.h, llc_task.h,
 * sdk/ble_stack/ble_common/co_bt.h; Copyright (C) Dialog Semiconductor /
 * Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.22.1401/renesas_license.txt).
 * llc_env lives in the DA14585 ROM's data at 0x07fd7918 (da14585_symbols.txt).
 * Only the fields up to rssi are declared; the structure continues in the SDK.
 */
#ifndef SR08_SDK_LLC_H
#define SR08_SDK_LLC_H

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

#define LLC_OP_MAX 1 /* enum llc_op_type: LLC_OP_PARAM_UPD only */
#define LE_CHNL_MAP_LEN 0x05
#define BLE_CONNECTION_MAX 1
#define LLC_IDX_MAX BLE_CONNECTION_MAX

struct ea_elt_tag;
struct rem_version {
    uint8_t vers;
    uint16_t compid;
    uint16_t subvers;
};
struct le_chnl_map {
    uint8_t map[LE_CHNL_MAP_LEN];
};

struct llc_env_tag {
    void *operation[LLC_OP_MAX];
    struct ea_elt_tag *elt;
    struct rem_version peer_version;
    uint16_t sup_to;
    uint16_t n_sup_to;
    uint16_t auth_payl_to;
    uint16_t auth_payl_to_margin;
    uint16_t previous_state; /* ke_task_id_t */
    uint16_t llc_status;
    struct le_chnl_map ch_map;
    struct le_chnl_map n_ch_map;
    int8_t rssi;
    /* ... (the SDK structure continues) */
};

SR08_STATIC_ASSERT(offsetof(struct llc_env_tag, rssi) == 0x24, "llc_env_tag.rssi is at offset 0x24 in the ROM");

extern struct llc_env_tag *llc_env[LLC_IDX_MAX];

#endif
