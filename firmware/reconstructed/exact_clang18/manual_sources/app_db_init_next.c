/* app_db_init_next (0x07fc302c), built in the "ac6lto" module.
 * V204's link inlined the vendor app_hogpd_create_db, folded the constant profile tables and promoted the log
 * string, prf_funcs and cust_prf_funcs (an LTO support unit, data/V204_user_custs_config.c) into this function's
 * literal pool. Code-shape notes, each found by full-image probe:
 *  - k is tested explicitly (k == 0), so LTO folds user_prf_funcs[0] into the inlined HOGPD block. A no-code
 *    __builtin_assume second use keeps the test as `k != 0`, whose false successor (the HOGPD block) then comes
 *    first in ISel order. This puts the string and the two HOGPD literals first in the pool, as in V204.
 *  - the SUOTAR loop is guarded by `i != 0` (only prf_funcs[0] is a real entry), kept the same way. That puts
 *    prf_funcs before cust_prf_funcs in the pool.
 *  - the call indexes prf_funcs through an annotated copy of i taken before the test. LTO then cannot fold the
 *    index (V204 multiplies the register i by 12) but still stores the constant 1.
 */
/* app_db_init_next from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_common/app.c (Copyright (C) Dialog Semiconductor /
 * Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt), with the static
 * app_task_in_user_app() it calls, the SDK prf_funcs table for V204's
 * configuration (BLE_SUOTA_RECEIVER only) and V204's user_prf_funcs (HOGPD).
 * V204's link inlined the vendor app_hogpd_create_db into it, folded the
 * constant-table loops and placed prf_funcs, cust_prf_funcs and the log string
 * in this function's literal pool. The statics k, i and j are merged globals
 * (merged_globals_5650 +5..+7).
 */
#include <stdbool.h>
#include "firmware/reconstructed/include/sr08_format.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_custs1.h"
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"
#include "firmware/reconstructed/include/sr08_sdk_kernel.h"
#include "firmware/reconstructed/include/sr08_sdk_prf.h"

/* app_prf_types.h */
struct prf_func_callbacks
{
    enum KE_API_ID task_id;
    prf_func_void_t db_create_func;
    prf_func_uint8_t enable_func;
};

/* hogpd_task.h / hogp_common.h (HOGPD_NB_HIDS_INST_MAX 1, HOGPD_NB_REPORT_INST_MAX 2) */
struct hids_hid_info
{
    uint16_t bcdHID;
    uint8_t  bCountryCode;
    uint8_t  flags;
};

struct hogpd_ext_ref
{
    uint16_t inc_svc_hdl;
    uint16_t rep_ref_uuid;
};

struct hogpd_hids_cfg
{
    uint8_t svc_features;
    uint8_t report_nb;
    uint8_t report_char_cfg[HOGPD_NB_REPORT_INST_MAX];
    uint8_t report_id[HOGPD_NB_REPORT_INST_MAX];
    struct hids_hid_info hid_info;
    struct hogpd_ext_ref ext_ref;
};

struct hogpd_db_cfg
{
    uint8_t hids_nb;
    struct hogpd_hids_cfg cfg[HOGPD_NB_HIDS_INST_MAX];
};

/* Vendor HID report configuration (two reports). */
struct app_hid_report_cfg
{
    uint8_t id;
    uint8_t cfg;
    uint16_t length;
    uint8_t reserved[8];
};
enum { APP_HID_REPORT_NB = 2 };
extern const struct app_hid_report_cfg app_hid_report_cfg[APP_HID_REPORT_NB];

#define HIDS_REMOTE_WAKE_CAPABLE 0x01
#define HIDS_NORM_CONNECTABLE 0x02

void app_suotar_create_db(void);

/* Vendor app_hogpd.c: add the HID-over-GATT service with V204's two reports. */
static void app_hogpd_create_db(void)
{
    arch_printf((const uint8_t *)"app_hogpd_create_db\n");

    struct gapm_profile_task_add_cmd *req = KE_MSG_ALLOC_DYN(GAPM_PROFILE_TASK_ADD_CMD,
                                                             TASK_GAPM,
                                                             TASK_APP,
                                                             gapm_profile_task_add_cmd,
                                                             sizeof(struct hogpd_db_cfg));

    // Fill message
    req->operation = GAPM_PROFILE_TASK_ADD;
    req->prf_task_id = TASK_ID_HOGPD;
    req->app_task = TASK_APP;
    req->sec_lvl = get_user_prf_srv_perm(TASK_ID_HOGPD);
    req->start_hdl = 0;

    struct hogpd_db_cfg *db_cfg = (struct hogpd_db_cfg *)req->param;
    db_cfg->hids_nb = 1;
    db_cfg->cfg[0].svc_features = HOGPD_CFG_PROTO_MODE;
    db_cfg->cfg[0].report_nb = APP_HID_REPORT_NB;
    for (int i = 0; i < APP_HID_REPORT_NB; i++)
    {
        db_cfg->cfg[0].report_id[i] = app_hid_report_cfg[i].id;
        db_cfg->cfg[0].report_char_cfg[i] = app_hid_report_cfg[i].cfg;
    }
    db_cfg->cfg[0].hid_info.bcdHID = 0x100;
    db_cfg->cfg[0].hid_info.bCountryCode = 0;
    db_cfg->cfg[0].hid_info.flags = HIDS_REMOTE_WAKE_CAPABLE | HIDS_NORM_CONNECTABLE;

    // Send the message
    ke_msg_send(req);
}

/* user_callback_config.h */
static const struct prf_func_callbacks user_prf_funcs[] =
{
    {TASK_ID_HOGPD,       app_hogpd_create_db, NULL},
    {TASK_ID_INVALID,     NULL, NULL}   // DO NOT REMOVE THIS
};

const struct prf_func_callbacks prf_funcs[] =
{
    {TASK_ID_SUOTAR,        app_suotar_create_db, NULL},
    {TASK_ID_INVALID,       NULL, NULL},   // DO NOT MOVE. Must always be last
};

static bool app_task_in_user_app(enum KE_API_ID task_id)
{
    uint8_t i = 0;

    while(user_prf_funcs[i].task_id != TASK_ID_INVALID)
    {
        if (user_prf_funcs[i].task_id == task_id)
        {
            return true;
        }
        i++;
    }
     return false;
}

#define i SR08_MERGED_SCALAR(merged_globals_5650.app_db_init_next_i)
#define k SR08_MERGED_SCALAR(merged_globals_5650.app_db_init_next_k)
#define j SR08_MERGED_SCALAR(merged_globals_5650.app_db_init_next_j)

bool app_db_init_next(void)
{
    // V204 has one user profile (HOGPD) and one SDK profile (SUOTAR).
    int started = k != 0;
    __builtin_assume(started | (j != 77));
    if (!started)
    {
        user_prf_funcs[k++].db_create_func();
        return false;
    }

    for (;;)
    {
        uint8_t index = __builtin_annotation(i, "index");
        int pending = i != 0;
        __builtin_assume(pending | (j != 77));
        if (pending)
            break;
        if ((prf_funcs[i].db_create_func != NULL)
            && (!app_task_in_user_app(prf_funcs[i].task_id)))    //case that the this task has an entry in the user_prf as well
        {
            i = i + 1;
            prf_funcs[index].db_create_func();
            return false;
        }
        else i++;
    }

    {
        while(cust_prf_funcs[j].task_id != TASK_ID_INVALID)
        {
            if(cust_prf_funcs[j].db_create_func != NULL)
            {
                cust_prf_funcs[j++].db_create_func();
                return false;
            }
            else j++;
        }
        j = 0;
    }

    k = 0;
    i = 0;

    return true;
}
