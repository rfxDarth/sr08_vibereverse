/* suotar_mem_info_update_req_handler from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/ble_stack/profiles/suota/suotar/src/suotar_task.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). The function is
 * static in the SDK and has external linkage here.
 */
#include "firmware/reconstructed/include/sr08_sdk_suotar.h"

int suotar_mem_info_update_req_handler(ke_msg_id_t const msgid,
                                    struct suotar_patch_mem_info_update_req const *param,
                                    ke_task_id_t const dest_id,
                                    ke_task_id_t const src_id)
{
    struct suotar_env_tag *suotar_env = PRF_ENV_GET(SUOTAR, suotar);
    // Update Memory info charecteristic value
    uint8_t status = attmdb_att_set_value(suotar_env->suota_shdl + SUOTA_IDX_PATCH_MEM_INFO_VAL,
                                          sizeof(uint32_t), 0,
                                          (uint8_t *) &param->mem_info);

    ASSERT_ERROR(status == ATT_ERR_NO_ERROR);

    return (KE_MSG_CONSUMED);
}
