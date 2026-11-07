#include "rwip_config.h"

#if BLE_HID_DEVICE

#include "app_task.h"
#include "gapm_task.h"
#include "hogpd.h"
#include "hogpd_task.h"
#include "prf.h"
#include "app_prf_perm_types.h"
#include "v204_hid.h"
#include "v204_hid_report_map.h"

#include <string.h>

void v204_hid_create_db(void)
{
    struct gapm_profile_task_add_cmd *req = KE_MSG_ALLOC_DYN(
        GAPM_PROFILE_TASK_ADD_CMD, TASK_GAPM, TASK_APP,
        gapm_profile_task_add_cmd, sizeof(struct hogpd_db_cfg));
    struct hogpd_db_cfg *cfg = (struct hogpd_db_cfg *)req->param;

    req->operation = GAPM_PROFILE_TASK_ADD;
    req->sec_lvl = get_user_prf_srv_perm(TASK_ID_HOGPD);
    req->prf_task_id = TASK_ID_HOGPD;
    req->app_task = TASK_APP;
    req->start_hdl = 0;

    memset(cfg, 0, sizeof(*cfg));
    cfg->hids_nb = 1;
    cfg->cfg[0].svc_features = HOGPD_CFG_MOUSE | HOGPD_CFG_PROTO_MODE;
    cfg->cfg[0].report_nb = 2;
    cfg->cfg[0].report_char_cfg[0] = HOGPD_CFG_REPORT_IN;
    cfg->cfg[0].report_char_cfg[1] = HOGPD_CFG_REPORT_IN;
    cfg->cfg[0].report_id[0] = 1;
    cfg->cfg[0].report_id[1] = 2;
    cfg->cfg[0].hid_info.bcdHID = 0x0111;
    cfg->cfg[0].hid_info.bCountryCode = 0;
    cfg->cfg[0].hid_info.flags = 0x02; /* Normally connectable. */

    KE_MSG_SEND(req);
}

void v204_hid_enable(uint8_t conidx)
{
    struct hogpd_enable_req *req = KE_MSG_ALLOC(
        HOGPD_ENABLE_REQ, TASK_ID_HOGPD, TASK_APP, hogpd_enable_req);
    req->conidx = conidx;
    memset(req->ntf_cfg, 0, sizeof(req->ntf_cfg));
    KE_MSG_SEND(req);
}

bool v204_hid_handle_message(ke_msg_id_t msgid, void const *param)
{
    switch (msgid) {
    case HOGPD_REPORT_REQ_IND: {
        const struct hogpd_report_req_ind *ind = param;
        uint16_t length = 0;
        uint8_t status = GAP_ERR_NO_ERROR;
        uint8_t report_value[7] = {0};

        if (ind->operation != HOGPD_OP_REPORT_READ) {
            status = PRF_APP_ERROR;
        } else if (ind->report.type == HOGPD_REPORT_MAP) {
            length = V204_HID_REPORT_MAP_SIZE;
        } else if (ind->report.type == HOGPD_REPORT && ind->report.idx == 0) {
            length = 4; /* ID 1: buttons, wheel, X, Y. */
        } else if (ind->report.type == HOGPD_REPORT && ind->report.idx == 1) {
            length = 7; /* ID 2: digitizer contact, X/Y, contact count. */
        } else if (ind->report.type == HOGPD_BOOT_MOUSE_INPUT_REPORT) {
            length = 3; /* Boot protocol mouse: buttons, X, Y. */
        } else {
            status = PRF_APP_ERROR;
        }

        struct hogpd_report_cfm *cfm = KE_MSG_ALLOC_DYN(
            HOGPD_REPORT_CFM, TASK_ID_HOGPD, TASK_APP,
            hogpd_report_cfm, length);
        cfm->conidx = ind->conidx;
        cfm->operation = ind->operation;
        cfm->status = status;
        cfm->report.hid_idx = ind->report.hid_idx;
        cfm->report.type = ind->report.type;
        cfm->report.idx = ind->report.idx;
        cfm->report.length = status == GAP_ERR_NO_ERROR ? length : 0;
        if (status == GAP_ERR_NO_ERROR && length != 0) {
            if (ind->report.type == HOGPD_REPORT_MAP)
                memcpy(cfm->report.value, v204_hid_report_map, length);
            else
                memcpy(cfm->report.value, report_value, length);
        }
        KE_MSG_SEND(cfm);
        return true;
    }
    case HOGPD_PROTO_MODE_REQ_IND: {
        const struct hogpd_proto_mode_req_ind *ind = param;
        struct hogpd_proto_mode_cfm *cfm = KE_MSG_ALLOC(
            HOGPD_PROTO_MODE_CFM, TASK_ID_HOGPD, TASK_APP,
            hogpd_proto_mode_cfm);
        cfm->conidx = ind->conidx;
        cfm->status = GAP_ERR_NO_ERROR;
        cfm->hid_idx = ind->hid_idx;
        cfm->proto_mode = ind->proto_mode;
        KE_MSG_SEND(cfm);
        return true;
    }
    default:
        return false;
    }
}

#else

void v204_hid_create_db(void) {}
void v204_hid_enable(uint8_t conidx) { (void)conidx; }
bool v204_hid_handle_message(ke_msg_id_t msgid, void const *param)
{
    (void)msgid;
    (void)param;
    return false;
}

#endif
