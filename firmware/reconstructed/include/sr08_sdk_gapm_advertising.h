/* Advertising command types from our Renesas DA145xx SDK 6.0.24.1464,
 * sdk/ble_stack/host/gap/gapm/gapm_task.h. Copyright Renesas Electronics
 * Corporation; see third_party/renesas_sdk_6.0.22.1401/renesas_license.txt.
 */
#ifndef SR08_SDK_GAPM_ADVERTISING_H
#define SR08_SDK_GAPM_ADVERTISING_H

#include <stddef.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sdk_co_bt.h"
#include "firmware/reconstructed/include/sr08_static_assert.h"

struct gapm_air_operation {
    /* V204 writes code and addr_src together. The additional word view
     * preserves the SDK layout and permits that access without type punning.
     */
    union {
        struct {
            uint8_t code;
            uint8_t addr_src;
        };
        uint16_t code_and_addr_src;
    };
    uint16_t state;
};

struct gapm_adv_host {
    uint8_t mode;
    uint8_t adv_filt_policy;
    uint8_t adv_data_len;
    uint8_t adv_data[31];
    uint8_t scan_rsp_data_len;
    uint8_t scan_rsp_data[31];
    struct gap_bdaddr peer_info;
};

struct gapm_start_advertise_cmd {
    struct gapm_air_operation op;
    uint16_t intv_min;
    uint16_t intv_max;
    uint8_t channel_map;
    union gapm_adv_info {
        struct gapm_adv_host host;
        struct gap_bdaddr direct;
    } info;
};

SR08_STATIC_ASSERT(sizeof(struct gapm_start_advertise_cmd) == 82, "advertising command size");
SR08_STATIC_ASSERT(offsetof(struct gapm_start_advertise_cmd, info) == 9, "advertising host offset");
SR08_STATIC_ASSERT(offsetof(struct gapm_start_advertise_cmd, info.host.scan_rsp_data_len) == 43,
                   "scan-response length offset");
SR08_STATIC_ASSERT(offsetof(struct gapm_start_advertise_cmd, info.host.scan_rsp_data) == 44,
                   "scan-response data offset");

#endif
