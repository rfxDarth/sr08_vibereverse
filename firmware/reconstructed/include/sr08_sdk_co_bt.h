/* Bluetooth address and key types from the Renesas DA145xx SDK 6.0.18.1182.1
 * (sdk/ble_stack/ble_common/co_bt.h, sdk/ble_stack/host/gap/gap.h; Copyright (C)
 * Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#ifndef SR08_SDK_CO_BT_H
#define SR08_SDK_CO_BT_H

#include <stdint.h>

struct bd_addr { uint8_t addr[6]; };
struct gap_sec_key { uint8_t key[16]; };
struct rand_nb { uint8_t nb[8]; };
struct gap_bdaddr { struct bd_addr addr; uint8_t addr_type; };

#endif
