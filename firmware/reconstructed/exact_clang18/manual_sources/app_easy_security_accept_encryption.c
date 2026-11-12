/* app_easy_security_accept_encryption from the Renesas DA145xx SDK
 * 6.0.18.1182.1, sdk/app_modules/src/app_easy/app_easy_security.c (Copyright
 * (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), with V204's
 * addition: the first accepted encryption of a connection schedules the
 * slot-11 timing record.
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"

#define app_env (merged_globals_56d0.app_env)
#define app_sec_env (merged_globals_53e4.app_sec_env)

extern void app_easy_gap_confirm(uint8_t conidx, enum gap_auth auth, uint8_t svc_changed_ind_enable);
extern void app_easy_security_set_encrypt_req_valid(uint8_t conidx);
extern void app_easy_security_encrypt_cfm(uint8_t conidx);
extern int write_indexed_timing_record(int slot_index, uint32_t timing_value, uint32_t data_word);
extern void schedule_callback_in_slot_eleven(void);

void app_easy_security_accept_encryption(uint8_t conidx)
{
    // Update connection auth
    app_easy_gap_confirm(conidx, (enum gap_auth) app_sec_env[conidx].auth, 1);
    app_easy_security_set_encrypt_req_valid(conidx);
    app_easy_security_encrypt_cfm(conidx);

    if (!app_env[0].encrypted)
    {
        write_indexed_timing_record(11, 1, (uint32_t)schedule_callback_in_slot_eleven);
        app_env[0].encrypted = true;
    }
}
