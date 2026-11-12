/* V204's user_app_on_encrypt_req_ind (user_callback_config.h's
 * app_on_encrypt_req_ind), recovered from its inlined copy in
 * gapc_encrypt_req_ind_handler. It follows the SDK's
 * default_app_on_encrypt_req_ind (app_default_handlers.c) with ENABLE_SMP_SECURE,
 * but without a bond database: an encryption request outside pairing is
 * accepted when its EDIV is that of the stored LTK.
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_app.h"
#include "firmware/reconstructed/include/sr08_sdk_app_sec.h"

#define app_env (merged_globals_56d0.app_env)
#define app_sec_env (merged_globals_53e4.app_sec_env)

void user_app_on_encrypt_req_ind(uint8_t conidx, struct gapc_encrypt_req_ind const *param)
{
    // Check if pairing is in progress
    if (app_env[conidx].pairing_in_progress == false)
    {
        if (app_sec_env[0].ltk.ediv == co_read16p(&param->ediv))
        {
            // Accept encryption
            app_easy_security_accept_encryption(conidx);
        }
        else
        {
            // Reject encryption, disconnect
            app_easy_security_reject_encryption(conidx);
        }
    }
    // Devices have not been bonded yet. Pairing phase 3
    else
    {
        // Check if we have secure connection feature enabled and
        // LTK has not been created yet
        if ((param->ediv == 0) && ((app_sec_env[conidx].valid_keys & LTK_PRESENT) == 0))
        {
            // Reject encryption, disconnect
            app_easy_security_reject_encryption(conidx);
        }
        else
        {
            // Accept encryption to start exchange of keys
            app_easy_security_accept_encryption(conidx);
        }
    }
}
