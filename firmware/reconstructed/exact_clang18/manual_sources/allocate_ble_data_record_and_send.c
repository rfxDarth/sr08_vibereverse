/* Send a HID input report: queue a HOGPD_REPORT_UPD_REQ carrying length bytes
 * of data as report report_idx, count it as in flight, and log it. Logs
 * "malloc failure" when no message can be allocated. */
#include <stdint.h>
#include <string.h>
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"
#include "firmware/reconstructed/include/sr08_sdk_prf.h"

extern ke_task_id_t prf_get_task_from_id(ke_msg_id_t id);
extern void arch_printf(const char *format, ...);
extern uint32_t get_ble_base_time_ms(void);
extern void format_byte_span_spaced_hexadecimal_line_at_b178(const uint8_t *bytes, uint32_t length);

void allocate_ble_data_record_and_send(uint8_t report_idx, const uint8_t *data, uint16_t length)
{
    struct hogpd_env_tag *hogpd_env = PRF_ENV_GET(HOGPD, hogpd);
    struct hogpd_report_upd_req *req = KE_MSG_ALLOC_DYN(HOGPD_REPORT_UPD_REQ, prf_get_task_from_id(TASK_ID_HOGPD),
                                                        TASK_APP, hogpd_report_upd_req, length);

    if (req == NULL) {
        arch_printf("malloc failure\n");
        return;
    }
    hogpd_env->reports_in_flight++;
    req->report.length = length;
    req->report.idx = report_idx;
    req->report.type = HOGPD_REPORT;
    req->report.hid_idx = 0;
    req->conidx = 0;
    memcpy(req->report.value, data, length);
    arch_printf("ble send:%d", get_ble_base_time_ms());
    format_byte_span_spaced_hexadecimal_line_at_b178(req->report.value, length);
    ke_msg_send(req);
}
