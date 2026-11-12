/* struct app_env_tag from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/api/app.h (Copyright (C) Dialog Semiconductor / Renesas
 * Electronics Corporation; see third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#ifndef SR08_SDK_APP_ENV_H
#define SR08_SDK_APP_ENV_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

/* app_easy_timer.h */
typedef uint8_t timer_hnd;
#include "firmware/reconstructed/include/sr08_sdk_co_bt.h"
#include "firmware/reconstructed/include/sr08_static_assert.h"

/* app.h. V204's entry is 14 bytes: peer_addr is unaligned at offset 5, and two
 * vendor bytes follow pairing_in_progress. */
struct app_env_tag
{
    uint16_t conhdl;
    uint8_t conidx;
    bool connection_active;
    uint8_t peer_addr_type;
    struct bd_addr peer_addr;
    bool pairing_in_progress;
    /* Vendor: set when encryption is first accepted (V204's
     * app_easy_security_accept_encryption()), cleared when it is rejected. */
    bool encrypted;
    uint8_t reserved_0d;
};

SR08_STATIC_ASSERT(sizeof(struct app_env_tag) == 14, "app_env entries are 14 bytes in V204");
SR08_STATIC_ASSERT(offsetof(struct app_env_tag, pairing_in_progress) == 11, "pairing_in_progress is at offset 11 in V204");

/* gap_cfg.h */
#define GAP_MAX_NAME_SIZE                       (0x20)

struct app_device_name
{
    uint8_t length;
    uint8_t name[GAP_MAX_NAME_SIZE];
};

struct app_device_info
{
    struct app_device_name dev_name;
    uint16_t appearance;
};

#endif
