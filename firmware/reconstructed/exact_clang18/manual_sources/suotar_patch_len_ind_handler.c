/* SDK 6.0.18.1182.1 app_suotar_task.c suotar_patch_len_ind_handler, without the
 * memory-device checks the SDK adds later (V204 checks only the buffer size).
 * See third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt. */
#include "firmware/reconstructed/include/sr08_sdk_suotar.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"

void suotar_send_status_update_req(uint8_t status);

int suotar_patch_len_ind_handler(ke_msg_id_t const msgid,
                                 struct suotar_patch_len_ind const *param,
                                 ke_task_id_t const dest_id,
                                 ke_task_id_t const src_id)
{
    if (param->char_code)
    {
        if (param->len == 0)
        {
            // Inavid PATCH_LEN char value
            suotar_send_status_update_req((uint8_t) SUOTAR_PATCH_LEN_ERR);
        }
        else if (param->len > SUOTA_OVERALL_PD_SIZE)
        {
            // Not enough memory for new patch. Update status.
            suotar_send_status_update_req((uint8_t) SUOTAR_INT_MEM_ERR);
        }
        else
        {
            merged_globals_56d0.new_patch_len = param->len;
        }
    }

    return (KE_MSG_CONSUMED);
}
