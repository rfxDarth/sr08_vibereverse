/* user_security_conf from the vendor's user_config.h (the Renesas DA145xx
 * SDK 6.0.18.1182.1 template's structure and enum values from
 * sdk/ble_stack/host/gap/gap.h; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). It is an LTO
 * read-only unit (build_v204.LTO_READONLY_SOURCES) so the link folds its
 * contents into app_easy_security.c's pairing response, as V204's did.
 */
#include "firmware/reconstructed/include/sr08_user_config.h"

__attribute__((section(".v204.auto.07fcf9f4"))) const struct security_configuration user_security_conf = {
    .iocap      = 3,    /* GAP_IO_CAP_NO_INPUT_NO_OUTPUT */
    .oob        = 0,    /* GAP_OOB_AUTH_DATA_NOT_PRESENT */
    .auth       = 1,    /* GAP_AUTH_REQ_NO_MITM_BOND */
    .key_size   = 16,
    .ikey_dist  = 4,    /* GAP_KDIST_SIGNKEY */
    .rkey_dist  = 1,    /* GAP_KDIST_ENCKEY */
    .sec_req    = 0,    /* GAP_NO_SEC */
};
