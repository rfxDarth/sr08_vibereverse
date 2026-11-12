/* nvds_put_func from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/core_modules/nvds/src/nvds.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The ROM calls it
 * through the jump table.
 */
#include "firmware/reconstructed/include/sr08_sdk_nvds.h"

/// NVDS API implementation - required by ROM function table
uint8_t nvds_put_func(uint8_t tag, nvds_tag_len_t length, uint8_t *buf)
{
    return NVDS_FAIL;
}
