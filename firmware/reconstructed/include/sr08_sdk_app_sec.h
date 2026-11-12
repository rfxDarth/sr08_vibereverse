/* Security data types from the Renesas DA145xx SDK 6.0.18.1182.1
 * (sdk/app_modules/api/app_security.h, sdk/ble_stack/host/gap/gapc/gapc_task.h,
 * sdk/ble_stack/host/gap/gap.h; Copyright (C) Dialog Semiconductor / Renesas
 * Electronics Corporation; see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#ifndef SR08_SDK_APP_SEC_H
#define SR08_SDK_APP_SEC_H

#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_co_bt.h"
#include "firmware/reconstructed/include/sr08_static_assert.h"

enum keys_present
{
    LTK_PRESENT     = (1 << 0),
    RLTK_PRESENT    = (1 << 1),
    RIRK_PRESENT    = (1 << 2),
    LCSRK_PRESENT   = (1 << 3),
    RCSRK_PRESENT   = (1 << 4),
};


struct gapc_ltk
{
    struct gap_sec_key ltk;
    uint16_t ediv;
    struct rand_nb randnb;
    uint8_t key_size;
};

struct gapc_irk
{
    struct gap_sec_key irk;
    struct gap_bdaddr addr;
};

struct app_sec_bond_data_env_tag
{
    uint8_t valid_keys; /* enum keys_present, one byte in the SDK's -fshort-enums build */
    struct gapc_ltk ltk;
    struct gapc_ltk rltk;
    struct gapc_irk rirk;
    struct gap_sec_key lcsrk;
    struct gap_sec_key rcsrk;
    struct gap_bdaddr peer_bdaddr;
    uint8_t auth;
    uint8_t bdb_slot;
};

SR08_STATIC_ASSERT(sizeof(struct app_sec_bond_data_env_tag) == 122, "app_sec_env entries are 122 bytes in V204");

struct gapc_encrypt_req_ind { uint16_t ediv; struct rand_nb rand_nb; };
struct gapc_encrypt_ind { uint8_t auth; };

#endif
