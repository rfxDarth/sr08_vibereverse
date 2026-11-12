/* app_timer_api_process_handler and the static handlers it dispatches to,
 * from the Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/src/app_easy/app_easy_timer.c (Copyright (C) Dialog
 * Semiconductor / Renesas Electronics Corporation; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt). V204's link
 * inlined the handlers; create_timer(), timer_canceled_handler() and
 * timer_modified_handler() are their own V204 units. The two static callback
 * tables are one merged RAM block (sr08_merged_globals.h).
 */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_app.h"

#define APP_TIMER_MAX_NUM                         (APP_TIMER_API_LAST_MES - APP_TIMER_API_MES0 + 1)

#define APP_EASY_TIMER_HND_TO_MSG_ID(timer_id)    (timer_id - 1 + APP_TIMER_API_MES0)
#define APP_EASY_TIMER_MSG_ID_TO_HND(timer_msg)   (timer_msg - APP_TIMER_API_MES0 + 1)
#define APP_EASY_TIMER_HND_TO_IDX(timer_id)       (timer_id - 1)
#define APP_EASY_TIMER_IDX_TO_HND(timer_id)       (timer_id + 1)
#define APP_EASY_TIMER_HND_IS_VALID(timer_id)     ((timer_id > 0) && (timer_id <= APP_TIMER_MAX_NUM))

struct create_timer_struct
{
    timer_hnd timer_id;
    uint32_t delay;
};

struct cancel_timer_struct
{
    timer_hnd timer_id;
    uint32_t delay;
};

struct modify_timer_struct
{
    timer_hnd timer_id;
    uint32_t delay;
};

#define timer_callbacks (merged_globals_57b8.timer_callbacks)
#define modified_timer_callbacks (merged_globals_57b8.modified_timer_callbacks)

extern void timer_canceled_handler(void);
extern void timer_modified_handler(void);
extern void create_timer(timer_hnd timer_id, uint32_t delay);
extern void ke_timer_set(ke_msg_id_t const timer_id, ke_task_id_t const task, uint32_t const delay);

static void call_callback(const timer_hnd timer_id)
{
    void (*return_timer_cb)(timer_hnd timer_id);

    if APP_EASY_TIMER_HND_IS_VALID(timer_id)
    {
        if (timer_callbacks[APP_EASY_TIMER_HND_TO_IDX(timer_id)] != NULL)
        {
            timer_callback fn = timer_callbacks[APP_EASY_TIMER_HND_TO_IDX(timer_id)];
            // Check if the a timer to be modified or canceled has expired
            if ((fn != timer_modified_handler) && (fn != timer_canceled_handler))
            {
                timer_callbacks[APP_EASY_TIMER_HND_TO_IDX(timer_id)] = NULL;
                modified_timer_callbacks[APP_EASY_TIMER_HND_TO_IDX(timer_id)] = NULL;
                return_timer_cb = (void (*)(timer_hnd))fn;
                return_timer_cb(timer_id);
            }
        }
    }
    else
    {
        ASSERT_WARNING(0);
    }
}

static int create_timer_handler(ke_msg_id_t const msgid,
                                struct create_timer_struct const *param,
                                ke_task_id_t const dest_id,
                                ke_task_id_t const src_id)
{
    // Sanity checks
    ASSERT_ERROR(param->delay > 0);                  // Delay should not be zero
    ASSERT_ERROR(param->delay <= KE_TIMER_DELAY_MAX); // Delay should not be more than maximum allowed

    ke_timer_set(APP_EASY_TIMER_HND_TO_MSG_ID(param->timer_id), TASK_APP, param->delay);
    return KE_MSG_CONSUMED;
}

static int cancel_timer_handler(ke_msg_id_t const msgid,
                                struct cancel_timer_struct const *param,
                                ke_task_id_t const dest_id,
                                ke_task_id_t const src_id)
{
    if APP_EASY_TIMER_HND_IS_VALID(param->timer_id)
    {
        int i = APP_EASY_TIMER_HND_TO_IDX(param->timer_id);
        if (timer_callbacks[i] == timer_canceled_handler)
        {
            timer_callbacks[i] = NULL;
            modified_timer_callbacks[i] = NULL;
        }
        else if (timer_callbacks[i] == timer_modified_handler)
        {
            struct modify_timer_struct *req = KE_MSG_ALLOC(APP_MODIFY_TIMER,
                                                           TASK_APP,
                                                           TASK_APP,
                                                           modify_timer_struct);

            req->timer_id = param->timer_id;
            req->delay = param->delay;
            ke_msg_send(req);
        }
    }
    else
    {
        ASSERT_ERROR(0);
    }
    return KE_MSG_CONSUMED;
}

static int modify_timer_handler(ke_msg_id_t const msgid,
                                struct modify_timer_struct const *param,
                                ke_task_id_t const dest_id,
                                ke_task_id_t const src_id)
{
    if APP_EASY_TIMER_HND_IS_VALID(param->timer_id)
    {
        int i = APP_EASY_TIMER_HND_TO_IDX(param->timer_id);
        if (timer_callbacks[i] == timer_modified_handler)
        {
            // Restore timer callback function
            timer_callbacks[i] = modified_timer_callbacks[i];

            // Re-create the timer with new delay
            create_timer(param->timer_id, param->delay);
        }
    }
    else
    {
        ASSERT_ERROR(0);
    }
    return KE_MSG_CONSUMED;
}

static int call_callback_handler(ke_msg_id_t const msgid,
                                 void const *param,
                                 ke_task_id_t const dest_id,
                                 ke_task_id_t const src_id)
{
    call_callback(APP_EASY_TIMER_MSG_ID_TO_HND(msgid));
    return KE_MSG_CONSUMED;
}

enum process_event_response app_timer_api_process_handler(ke_msg_id_t const msgid,
                                                          void const *param,
                                                          ke_task_id_t const dest_id,
                                                          ke_task_id_t const src_id,
                                                          enum ke_msg_status_tag *msg_ret)
{
    switch (msgid)
    {
        case APP_CANCEL_TIMER:
            *msg_ret = (enum ke_msg_status_tag)cancel_timer_handler(msgid, param, dest_id, src_id);
            return PR_EVENT_HANDLED;

        case APP_MODIFY_TIMER:
            *msg_ret = (enum ke_msg_status_tag)modify_timer_handler(msgid, param, dest_id, src_id);
            return PR_EVENT_HANDLED;

        case APP_CREATE_TIMER:
            *msg_ret = (enum ke_msg_status_tag)create_timer_handler(msgid, param, dest_id, src_id);
            return PR_EVENT_HANDLED;

        default:
            if ((msgid < APP_TIMER_API_MES0) || (msgid > APP_TIMER_API_LAST_MES))
            {
                return PR_EVENT_UNHANDLED;
            }
            else
            {
                *msg_ret = (enum ke_msg_status_tag)call_callback_handler(msgid, param, dest_id, src_id);
            }
            return PR_EVENT_HANDLED;
    }
}
