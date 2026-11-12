/* app_msg_utils_api_process_handler and its static helpers from the Renesas
 * DA145xx SDK 6.0.18.1182.1, sdk/app_modules/src/app_easy/app_easy_msg_utils.c
 * (Copyright (C) Dialog Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link
 * inlined the helpers. msg_util_callbacks is static in the SDK; here it is
 * the fixed RAM object of V204 (data/V204_ram_symbols.json).
 */
#include "firmware/reconstructed/include/sr08_sdk_app.h"

#define APP_MSG_UTIL_MAX_NUM    (APP_MSG_UTIL_API_LAST_MES - APP_MSG_UTIL_API_MES0 + 1)

typedef void (*void_msg_void)(void);

// Array holding the callbacks for the pool of messages
extern void_msg_void msg_util_callbacks[APP_MSG_UTIL_MAX_NUM];

static int8_t app_easy_msg_find_idx(ke_msg_id_t msg_util_id)
{
    int i;
    i = msg_util_id - APP_MSG_UTIL_API_MES0;
    if ((i >= 0) && (i < APP_MSG_UTIL_MAX_NUM))
    {
        return i;
    }
    return -1;
}

static void app_easy_msg_call_callback(ke_msg_id_t msg_util_id)
{
    int i;
    i = app_easy_msg_find_idx(msg_util_id);
    if (i >= 0)
    {
        if (msg_util_callbacks[i] != NULL)
        {
            void (*callback)(void) = msg_util_callbacks[i];
            msg_util_callbacks[i] = NULL;
            callback();
        }
    }
    else
    {
        ASSERT_WARNING(0);
    }
}

enum process_event_response app_msg_utils_api_process_handler(ke_msg_id_t const msgid,
                                                              void const *param,
                                                              ke_task_id_t const dest_id,
                                                              ke_task_id_t const src_id,
                                                              enum ke_msg_status_tag *msg_ret)
{
    if ((msgid < APP_MSG_UTIL_API_MES0) || (msgid > APP_MSG_UTIL_API_LAST_MES))
    {
        return PR_EVENT_UNHANDLED;
    }
    else
    {
        app_easy_msg_call_callback(msgid);
        *msg_ret = KE_MSG_CONSUMED;
        return PR_EVENT_HANDLED;
    }
}
