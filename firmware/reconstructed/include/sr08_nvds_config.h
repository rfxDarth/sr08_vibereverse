#ifndef SR08_NVDS_CONFIG_H
#define SR08_NVDS_CONFIG_H

#include "firmware/reconstructed/include/sr08_sdk_nvds.h"

/* V204 board configuration, shared by the stored NVDS object and the getter's
 * compile-time view. Only the Bluetooth address is read from stored data by
 * the getter; scalar settings are folded into its code in the original. */
#define SR08_NVDS_CONFIG_INITIALIZER { \
    .lpclk_drift = 500, \
    .bd_address = {0x06, 0x00, 0x70, 0xca, 0xea, 0x80}, \
    .ble_ca_timer_dur = 2000, \
    .ble_cra_timer_dur = 6, \
    .ble_ca_min_rssi = 0x40, \
    .ble_ca_nb_pkt = 100, \
    .ble_ca_nb_bad_pkt = 50, \
}

#endif
