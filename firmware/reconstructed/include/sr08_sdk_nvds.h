/* Non-volatile data storage (NVDS) definitions from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/platform/core_modules/nvds/api/nvds.h and
 * nvds/src/nvds.c (Copyright (C) Dialog Semiconductor / Renesas Electronics
 * Corporation; see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#ifndef SR08_SDK_NVDS_H
#define SR08_SDK_NVDS_H

#include <stdint.h>
#include "firmware/reconstructed/include/sr08_static_assert.h"

/* V204 is built with NVDS_8BIT_TAGLENGTH. */
typedef uint8_t nvds_tag_len_t;

enum NVDS_STATUS
{
    NVDS_OK,
    NVDS_FAIL,
    NVDS_TAG_NOT_DEFINED,
    NVDS_NO_SPACE_AVAILABLE,
    NVDS_LENGTH_OUT_OF_RANGE,
    NVDS_PARAM_LOCKED,
    NVDS_CORRUPT
};

enum NVDS_TAG
{
    NVDS_TAG_BD_ADDRESS                 = 0x01,
    NVDS_TAG_LPCLK_DRIFT                = 0x07,
    NVDS_TAG_BLE_CA_TIMER_DUR           = 0x40,
    NVDS_TAG_BLE_CRA_TIMER_DUR          = 0x41,
    NVDS_TAG_BLE_CA_MIN_RSSI            = 0x42,
    NVDS_TAG_BLE_CA_NB_PKT              = 0x43,
    NVDS_TAG_BLE_CA_NB_BAD_PKT          = 0x44,
};

enum NVDS_LEN
{
    NVDS_LEN_BD_ADDRESS                 = 6,
    NVDS_LEN_LPCLK_DRIFT                = 2,
    NVDS_LEN_BLE_CA_TIMER_DUR           = 2,
    NVDS_LEN_BLE_CRA_TIMER_DUR          = 1,
    NVDS_LEN_BLE_CA_MIN_RSSI            = 1,
    NVDS_LEN_BLE_CA_NB_PKT              = 1,
    NVDS_LEN_BLE_CA_NB_BAD_PKT          = 1,
};

/* nvds.c */
struct nvds_data_struct
{
    uint16_t    lpclk_drift;
    uint8_t     bd_address[6];
    uint16_t    ble_ca_timer_dur;
    uint8_t     ble_cra_timer_dur;
    uint8_t     ble_ca_min_rssi;
    uint8_t     ble_ca_nb_pkt;
    uint8_t     ble_ca_nb_bad_pkt;
};

SR08_STATIC_ASSERT(sizeof(struct nvds_data_struct) == 14, "nvds_data_storage is 14 bytes in V204");

/* static in the SDK's nvds.c; V204 placed it at 0x07fc0110. */
extern const struct nvds_data_struct nvds_data_storage;

uint8_t nvds_get_func(uint8_t tag, nvds_tag_len_t *lengthPtr, uint8_t *buf);
uint8_t nvds_init_func(uint8_t *base, uint32_t len);
uint8_t nvds_del_func(uint8_t tag);
uint8_t nvds_put_func(uint8_t tag, nvds_tag_len_t length, uint8_t *buf);

#endif
