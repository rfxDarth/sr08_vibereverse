/* nvds_data_storage from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/platform/core_modules/nvds/src/nvds.c, with V204's configuration values
 * (Copyright (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). It is static in the
 * SDK. It remains an LTO read-only placement unit
 * (build_v204.LTO_READONLY_SOURCES). Its shared initializer also supplies
 * scalar constants to the native C getter; only the BD address is read
 * from this stored object.
 */
#include "firmware/reconstructed/include/sr08_nvds_config.h"

__attribute__((section(".v204.auto.07fc0110"))) const struct nvds_data_struct nvds_data_storage =
SR08_NVDS_CONFIG_INITIALIZER;
