#ifndef SR08_SDK_ARCH_SLEEP_H
#define SR08_SDK_ARCH_SLEEP_H

/* SDK 6.0.22 arch_api.h and rwip.h declarations used by the vendor sleep code. */
#include <stdbool.h>
#include <stdint.h>

typedef enum
{
    ARCH_SLEEP_OFF,
    ARCH_EXT_SLEEP_ON,
    ARCH_EXT_SLEEP_OTP_COPY_ON,
} sleep_state_t;

/// Arch Sleep environment structure
struct arch_sleep_env_tag
{
    sleep_state_t slp_state;
};

/// RWBT Environment
struct rwip_env_tag
{
    uint16_t prevent_sleep;
    uint8_t wakeup_delay;
    bool sleep_enable;
    uint8_t ext_wakeup_enable;
};

extern struct arch_sleep_env_tag sleep_env;
extern struct rwip_env_tag rwip_env;

#endif
