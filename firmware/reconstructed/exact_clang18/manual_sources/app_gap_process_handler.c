/* SDK 6.0.18.1182.1 app_task.c: app_gap_process_handler. app_gap_process_handlers (14 entries)
 * is placed with the read-only data. See third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt. */
#include "firmware/reconstructed/include/sr08_sdk_app.h"

extern const struct ke_msg_handler app_gap_process_handlers[14];

enum process_event_response app_gap_process_handler(ke_msg_id_t const msgid,
                                           void const *param,
                                           ke_task_id_t const dest_id,
                                           ke_task_id_t const src_id,
                                           enum ke_msg_status_tag *msg_ret)
{
    return app_std_process_event(msgid, param, src_id, dest_id, msg_ret, app_gap_process_handlers,
                                 sizeof(app_gap_process_handlers) / sizeof(struct ke_msg_handler));
}
