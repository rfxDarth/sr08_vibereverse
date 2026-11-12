/* app_easy_security_encrypt_cfm() from the Dialog/Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/app_modules/src/app_easy/app_easy_security.c (see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's
 * link-time optimisation folded the identical app_easy_security_request(),
 * app_easy_security_send_pairing_rsp(), app_easy_security_ltk_exch(),
 * app_easy_security_csrk_exch() and app_easy_gap_param_update_start() bodies
 * into this one. */
#include <stddef.h>
#include <stdint.h>


struct gapc_encrypt_cfm;
extern struct gapc_encrypt_cfm *gapc_encrypt_cfm[];
struct gapc_encrypt_cfm *encrypt_cfm_create_msg(uint8_t conidx);
extern void ke_msg_send(void const *param_ptr);

void app_easy_security_encrypt_cfm(uint8_t conidx)
{
    struct gapc_encrypt_cfm* cfm;
    cfm = encrypt_cfm_create_msg(conidx);
    ke_msg_send(cfm);
    gapc_encrypt_cfm[conidx] = NULL;
}
