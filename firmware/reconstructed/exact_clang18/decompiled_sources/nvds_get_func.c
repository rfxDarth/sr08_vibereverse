/* nvds_get_func from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/core_modules/nvds/src/nvds.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The ROM calls it
 * through the jump table. V204 always reports the configured BD address
 * (nvds_data_storage) rather than first trying dev_bdaddr.
 */
#include <string.h>
#include "firmware/reconstructed/include/sr08_nvds_config.h"

__attribute__((used,section(".text.nvds_get_func")))
uint8_t nvds_get_func(uint8_t tag, nvds_tag_len_t *lengthPtr, uint8_t *buf)
{
    static const struct nvds_data_struct defaults = SR08_NVDS_CONFIG_INITIALIZER;
    /* Scalar values are immutable; fold them without LTO table compression. */
    uint8_t status = NVDS_FAIL;

    switch (tag)
    {
        case NVDS_TAG_BD_ADDRESS:
        {
            /* Vendor: no dev_bdaddr (OTP header) check. */
            memcpy(buf, nvds_data_storage.bd_address, NVDS_LEN_BD_ADDRESS);
            *lengthPtr = NVDS_LEN_BD_ADDRESS;
            status = NVDS_OK;
        } break;

        case NVDS_TAG_LPCLK_DRIFT:
        {
            if (*lengthPtr < NVDS_LEN_LPCLK_DRIFT)
            {
                *lengthPtr = 0;
                status = NVDS_LENGTH_OUT_OF_RANGE;
            }
            else
            {
                memcpy(buf, &defaults.lpclk_drift, NVDS_LEN_LPCLK_DRIFT);
                *lengthPtr = NVDS_LEN_LPCLK_DRIFT;
                status = NVDS_OK;
            }
        } break;

        case NVDS_TAG_BLE_CA_TIMER_DUR:
        {
            if (*lengthPtr < NVDS_LEN_BLE_CA_TIMER_DUR)
            {
                *lengthPtr = 0;
                status = NVDS_LENGTH_OUT_OF_RANGE;
            }
            else
            {
                memcpy(buf, &defaults.ble_ca_timer_dur, NVDS_LEN_BLE_CA_TIMER_DUR);
                *lengthPtr = NVDS_LEN_BLE_CA_TIMER_DUR;
                status = NVDS_OK;
            }
        } break;

        case NVDS_TAG_BLE_CRA_TIMER_DUR:
        {
            if (*lengthPtr < NVDS_LEN_BLE_CRA_TIMER_DUR)
            {
                *lengthPtr = 0;
                status = NVDS_LENGTH_OUT_OF_RANGE;
            }
            else
            {
                memcpy(buf, &defaults.ble_cra_timer_dur, NVDS_LEN_BLE_CRA_TIMER_DUR);
                *lengthPtr = NVDS_LEN_BLE_CRA_TIMER_DUR;
                status = NVDS_OK;
            }
        } break;

        case NVDS_TAG_BLE_CA_MIN_RSSI:
        {
            if (*lengthPtr < NVDS_LEN_BLE_CA_MIN_RSSI)
            {
                *lengthPtr = 0;
                status = NVDS_LENGTH_OUT_OF_RANGE;
            }
            else
            {
                memcpy(buf, &defaults.ble_ca_min_rssi, NVDS_LEN_BLE_CA_MIN_RSSI);
                *lengthPtr = NVDS_LEN_BLE_CA_MIN_RSSI;
                status = NVDS_OK;
            }
        } break;

        case NVDS_TAG_BLE_CA_NB_PKT:
        {
            if (*lengthPtr < NVDS_LEN_BLE_CA_NB_PKT)
            {
                *lengthPtr = 0;
                status = NVDS_LENGTH_OUT_OF_RANGE;
            }
            else
            {
                memcpy(buf, &defaults.ble_ca_nb_pkt, NVDS_LEN_BLE_CA_NB_PKT);
                *lengthPtr = NVDS_LEN_BLE_CA_NB_PKT;
                status = NVDS_OK;
            }
        } break;


        case NVDS_TAG_BLE_CA_NB_BAD_PKT:
        {
            if (*lengthPtr < NVDS_LEN_BLE_CA_NB_BAD_PKT)
            {
                *lengthPtr = 0;
                status = NVDS_LENGTH_OUT_OF_RANGE;
            }
            else
            {
                memcpy(buf, &defaults.ble_ca_nb_bad_pkt, NVDS_LEN_BLE_CA_NB_BAD_PKT);
                *lengthPtr = NVDS_LEN_BLE_CA_NB_BAD_PKT;
                status = NVDS_OK;
            }
        } break;

    } // switch

    return status;
}

