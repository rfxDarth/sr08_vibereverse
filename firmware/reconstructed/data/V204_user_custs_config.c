/* cust_prf_funcs from the vendor's user_custs_config.c, as in the Renesas
 * DA145xx SDK 6.0.18.1182.1 peripheral template (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), with one custom
 * service. It is an LTO support unit (build_v204.LTO_SUPPORT_SOURCES): V204's
 * link folded every custs_get_func_callbacks() lookup into it and promoted the
 * table into app_db_init_next's literal pool (0x07fc3110).
 */
#include "firmware/reconstructed/include/sr08_sdk_custs1.h"

#define CUSTS1_IDX_NB 6

const struct cust_prf_func_callbacks cust_prf_funcs[] =
{
    {   TASK_ID_CUSTS1,
        custs1_att_db,
        CUSTS1_IDX_NB,
        app_custs1_create_db, NULL,
        NULL, NULL,
    },
    {TASK_ID_INVALID, NULL, 0, NULL, NULL, NULL, NULL},   // DO NOT MOVE. Must always be last
};
