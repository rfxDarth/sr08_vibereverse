/* Application definitions from the Dialog/Renesas DA145xx SDK 6.0.18.1182.1,
 * sdk/app_modules/api/app.h, app_task.h, app_mid.h, app_entry_point.h and
 * app_easy_timer.h
 * (Copyright (C) Dialog Semiconductor; see
 * third_party/renesas_sdk_6.0.18.1182.1/dialog_license.txt).
 */
#ifndef SR08_SDK_APP_H
#define SR08_SDK_APP_H

#include "firmware/reconstructed/include/sr08_sdk_kernel.h"
#include "firmware/reconstructed/include/sr08_sdk_app_env.h"

/// APP Task messages (the start of enum APP_MSG; V204 has no later entries in use here)
enum APP_MSG
{
    APP_MODULE_INIT_CMP_EVT = KE_FIRST_MSG(TASK_APP),

    APP_CREATE_TIMER,
    APP_CANCEL_TIMER,
    APP_MODIFY_TIMER,

    //Do not alter the order of the next messages
    //they are considered a range
    APP_TIMER_API_MES0,
    APP_TIMER_API_MES1=APP_TIMER_API_MES0+1,
    APP_TIMER_API_MES2=APP_TIMER_API_MES0+2,
    APP_TIMER_API_MES3=APP_TIMER_API_MES0+3,
    APP_TIMER_API_MES4=APP_TIMER_API_MES0+4,
    APP_TIMER_API_MES5=APP_TIMER_API_MES0+5,
    APP_TIMER_API_MES6=APP_TIMER_API_MES0+6,
    APP_TIMER_API_MES7=APP_TIMER_API_MES0+7,
    APP_TIMER_API_MES8=APP_TIMER_API_MES0+8,
    APP_TIMER_API_MES9=APP_TIMER_API_MES0+9,
    APP_TIMER_API_LAST_MES=APP_TIMER_API_MES9,

    APP_MSG_UTIL_API_MES0,
    APP_MSG_UTIL_API_MES1=APP_MSG_UTIL_API_MES0+1,
    APP_MSG_UTIL_API_MES2=APP_MSG_UTIL_API_MES0+2,
    APP_MSG_UTIL_API_MES3=APP_MSG_UTIL_API_MES0+3,
    APP_MSG_UTIL_API_MES4=APP_MSG_UTIL_API_MES0+4,
    APP_MSG_UTIL_API_LAST_MES=APP_MSG_UTIL_API_MES4,
};

/* app_task.h */
enum APP_STATE
{
    APP_DISABLED,

    APP_DB_INIT,

    APP_CONNECTABLE,

    APP_CONNECTED,

    APP_STATE_MAX
};

/* app_mid.h */
static inline struct gapm_reset_cmd* app_gapm_reset_msg_create(void)
{
        struct gapm_reset_cmd* cmd = KE_MSG_ALLOC(GAPM_RESET_CMD, TASK_GAPM, TASK_APP,
                gapm_reset_cmd);

        cmd->operation = GAPM_RESET;

        return cmd;
}

static inline void app_gapm_reset_msg_send (struct gapm_reset_cmd* cmd)
{
 ke_msg_send(cmd);
}

static inline void app_gapm_reset_op(void)
{
    struct gapm_reset_cmd* cmd = app_gapm_reset_msg_create();
    app_gapm_reset_msg_send(cmd);
}

static inline struct gapm_set_dev_config_cmd* app_gapm_configure_msg_create(void)
{
    struct gapm_set_dev_config_cmd* cmd=KE_MSG_ALLOC(GAPM_SET_DEV_CONFIG_CMD,
                                                     TASK_GAPM,
                                                     TASK_APP,
                                                     gapm_set_dev_config_cmd);

    cmd->operation = GAPM_SET_DEV_CONFIG;
    return cmd;
}

static inline void app_gapm_configure_msg_send(struct gapm_set_dev_config_cmd* cmd)
{
    ke_msg_send(cmd);
}

/* app.h and app.c */
extern bool app_db_init_start(void);
extern bool app_db_init_next(void);
extern void app_easy_gap_dev_configure(void);

/* app_entry_point.h */
enum process_event_response
{
    /// Handled
    PR_EVENT_HANDLED = 0,

    /// Unhandled
    PR_EVENT_UNHANDLED
};

/* ke_msg.h: message handler type and table entry; KE_MSG_DEFAULT_HANDLER matches any message. */
typedef int (*ke_msg_func_t)(ke_msg_id_t const msgid, void const *param,
                             ke_task_id_t const dest_id, ke_task_id_t const src_id);
struct ke_msg_handler
{
    ke_msg_id_t id;
    ke_msg_func_t func;
};
#define KE_MSG_DEFAULT_HANDLER  (0xFFFF)

extern enum process_event_response app_std_process_event(ke_msg_id_t const msgid,
                                                         void const *param,
                                                         ke_task_id_t const src_id,
                                                         ke_task_id_t const dest_id,
                                                         enum ke_msg_status_tag *msg_ret,
                                                         const struct ke_msg_handler *handlers,
                                                         const int handler_num);

/* app_easy_timer.h (timer_hnd is in sr08_sdk_app_env.h) */
#define KE_TIMER_DELAY_MAX          (4194300)
#define EASY_TIMER_INVALID_TIMER    (0x0)

/* Non-debug ASSERT_WARNING (arch.h) */
#define ASSERT_WARNING(x)


extern timer_hnd app_easy_timer(const uint32_t delay, void (*fn)(void));
extern void app_easy_timer_cancel(const timer_hnd timer_id);
extern void app_easy_security_accept_encryption(uint8_t conidx);
extern void app_easy_security_reject_encryption(uint8_t conidx);

#endif
