/* app_easy_security_reject_encryption from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/app_modules/src/app_easy/app_easy_security.c (Copyright
 * (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), with V204's
 * addition: the connection's encrypted flag is cleared.
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"

#define app_env (merged_globals_56d0.app_env)

extern void app_easy_security_set_encrypt_req_invalid(uint8_t conidx);
extern void app_easy_security_encrypt_cfm(uint8_t conidx);
extern void app_easy_gap_disconnect(uint8_t conidx);

void app_easy_security_reject_encryption(uint8_t conidx)
{
    app_easy_security_set_encrypt_req_invalid(conidx);
    app_easy_security_encrypt_cfm(conidx);
    app_easy_gap_disconnect(conidx);
    app_env[0].encrypted = false;
}
