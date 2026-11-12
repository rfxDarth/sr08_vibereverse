/* SDK 6.0.18.1182.1 user_peripheral.c user_catch_rest_hndl, with the vendor's
 * message handling: custom-service writes (handle 2: log, queue the 20-byte
 * command and run the BLE parameter-update gate for selected commands; handle 5:
 * sensor configuration), HID report and protocol-mode reads (HOGPD), HID
 * notification configuration, and GAPC parameter updates. The case order is
 * the vendor's: it fixes the literal pool order.
 * See third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt. */
#include "firmware/reconstructed/include/sr08_sdk_kernel.h"
#include "firmware/reconstructed/include/sr08_sdk_custs1.h"
#include "firmware/reconstructed/include/sr08_sdk_gapc.h"
#include "firmware/reconstructed/include/sr08_sdk_hogpd.h"
#include "firmware/reconstructed/include/sr08_event_record_queue.h"
#include "firmware/reconstructed/include/sr08_timing_record.h"
#include "firmware/reconstructed/include/sr08_format.h"

/* Vendor HID report configuration (two reports) and HID report map. */
struct app_hid_report_cfg
{
    uint8_t id;
    uint8_t cfg;
    uint16_t length;
    uint8_t reserved[8];
};
enum { APP_HID_REPORT_NB = 2, APP_HID_REPORT_MAP_LEN = 146 };
extern const struct app_hid_report_cfg app_hid_report_cfg[APP_HID_REPORT_NB];
extern const uint8_t app_hid_report_map[APP_HID_REPORT_MAP_LEN];
extern const char v204_time_value_format[]; /* "time %d\n" */

/* Custom service attribute handles written by the peer. */
enum { SVC1_COMMAND_HANDLE = 2, SVC1_CONFIGURATION_HANDLE = 5 };

/* A command written to the custom service, queued for the event path. */
struct app_command_record
{
    uint8_t command;
    uint8_t data[19];
};

extern uint32_t get_ble_base_time_ms(void);
extern void format_byte_span_spaced_hexadecimal_line_at_b178(const uint8_t *bytes, uint32_t length);
extern void store_measurement_value_divided_by_1000(void);
extern void handle_record_flag_and_queue_sensor_configuration(void);
extern void gate_periodic_record_creation_sensor_mode_at_2dc4(void);
extern void update_device_settings_and_timeout_if_value_low(uint32_t value, uint16_t setting, uint16_t mode);

void user_catch_rest_hndl(ke_msg_id_t const msgid,
                          void const *param,
                          ke_task_id_t const dest_id,
                          ke_task_id_t const src_id)
{
    switch(msgid)
    {
        case GAPC_PARAM_UPDATED_IND:
        {
            struct gapc_param_updated_ind const *msg_param = (struct gapc_param_updated_ind const *)(param);

            arch_printf((const uint8_t *)"up %d,%d,%d\n", msg_param->con_interval, msg_param->con_latency,
                        msg_param->sup_to);
            update_device_settings_and_timeout_if_value_low(msg_param->con_interval, msg_param->con_latency,
                                                            msg_param->sup_to);
        } break;

        case HOGPD_REPORT_REQ_IND:
        {
            struct hogpd_report_req_ind const *ind = (struct hogpd_report_req_ind const *)(param);
            uint8_t report[20] = {0};
            uint8_t const *data = NULL;
            uint16_t length = 0;
            uint8_t status = GAP_ERR_NO_ERROR;

            if (ind->operation == HOGPD_OP_REPORT_READ)
            {
                if (ind->report.type == HOGPD_REPORT)
                {
                    if (ind->report.idx < APP_HID_REPORT_NB)
                    {
                        length = app_hid_report_cfg[ind->report.idx].length;
                        data = report;
                    }
                }
                else if (ind->report.type == HOGPD_REPORT_MAP)
                {
                    length = APP_HID_REPORT_MAP_LEN;
                    data = app_hid_report_map;
                }
            }

            struct hogpd_report_cfm *cfm = KE_MSG_ALLOC_DYN(HOGPD_REPORT_CFM, src_id, dest_id,
                                                           hogpd_report_cfm, length);
            cfm->status = status;
            cfm->conidx = KE_IDX_GET(src_id);
            cfm->operation = ind->operation;
            cfm->report.hid_idx = ind->report.hid_idx;
            cfm->report.idx = ind->report.idx;
            cfm->report.type = ind->report.type;
            cfm->report.length = length;
            memcpy(cfm->report.value, data, length);
            ke_msg_send(cfm);
        } break;

        case HOGPD_PROTO_MODE_REQ_IND:
        {
            struct hogpd_proto_mode_req_ind const *ind = (struct hogpd_proto_mode_req_ind const *)(param);
            struct hogpd_proto_mode_cfm *cfm = KE_MSG_ALLOC(HOGPD_PROTO_MODE_CFM, src_id, dest_id,
                                                            hogpd_proto_mode_cfm);
            cfm->status = GAP_ERR_NO_ERROR;
            cfm->conidx = ind->conidx;
            cfm->hid_idx = ind->hid_idx;
            cfm->proto_mode = ind->proto_mode;
            ke_msg_send(cfm);
        } break;

        case HOGPD_NTF_CFG_IND:
            ((uint8_t *)sr08_timing_records)[176] = 0;
            break;

        case CUSTS1_VAL_WRITE_IND:
        {
            struct custs1_val_write_ind const *msg_param = (struct custs1_val_write_ind const *)(param);

            if (msg_param->handle == SVC1_COMMAND_HANDLE)
            {
                struct app_command_record record;

                arch_printf((const uint8_t *)"r:");
                format_byte_span_spaced_hexadecimal_line_at_b178(msg_param->value, sizeof(record));
                arch_printf((const uint8_t *)v204_time_value_format, get_ble_base_time_ms());
                record.command = msg_param->value[0];
                memcpy(record.data, &msg_param->value[1], sizeof(record.data));
                enqueue_ring_record_if_space(&event_record_queue_state.secondary_ring, &record);
                store_measurement_value_divided_by_1000();

                switch (msg_param->value[0])
                {
                    case 1:
                    case 16: case 18: case 22: case 28: case 34: case 37:
                    case 49: case 50: case 70: case 71: case 72: case 76:
                        gate_periodic_record_creation_sensor_mode_at_2dc4();
                        break;
                    default:
                        break;
                }
            }
            else if (msg_param->handle == SVC1_CONFIGURATION_HANDLE)
            {
                handle_record_flag_and_queue_sensor_configuration();
            }
        } break;

        default:
            break;
    }
}
