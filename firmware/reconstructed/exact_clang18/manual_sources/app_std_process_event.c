/* SDK 6.0.18.1182.1 app_entry_point.c: app_std_process_event with its static
 * handler_search (inlined). V204 uses the production ASSERT_ERROR.
 * See third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt. */
#include "firmware/reconstructed/include/sr08_sdk_app.h"

static ke_msg_func_t handler_search(ke_msg_id_t const msg_id,
                                    const struct ke_msg_handler *handlers,
                                    const int handler_num)
{
    //table is empty
    if (handler_num == 0)
    {
        return NULL;
    }

    // Get the message handler function by parsing the message table
    for (int i = (handler_num-1); 0 <= i; i--)
    {
        if ((handlers[i].id == msg_id)
                || (handlers[i].id == KE_MSG_DEFAULT_HANDLER))
        {
            // If handler is NULL, message should not have been received in this state
            ASSERT_ERROR(handlers[i].func);

            return handlers[i].func;
        }
    }

    // If we execute this line of code, it means that we did not find the handler
    return NULL;
}

enum process_event_response app_std_process_event(ke_msg_id_t const msgid,
                                                  void const *param,
                                                  ke_task_id_t const src_id,
                                                  ke_task_id_t const dest_id,
                                                  enum ke_msg_status_tag *msg_ret,
                                                  const struct ke_msg_handler *handlers,
                                                  const int handler_num)
{
    ke_msg_func_t func = NULL;
    func = handler_search(msgid, handlers, handler_num);

    if (func != NULL)
    {
        *msg_ret = (enum ke_msg_status_tag) func(msgid, param, dest_id, src_id);
        return PR_EVENT_HANDLED;
    }
    else
    {
        return PR_EVENT_UNHANDLED;
    }
}
