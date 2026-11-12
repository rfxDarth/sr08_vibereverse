/* Restart the measurement-refresh timer with a 600-tick delay. */
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_app.h"
extern void param_update_request_timer_cb(void);
__attribute__((used, section(".text.replace_state_timer_with_600_delay"))) void
replace_state_timer_with_600_delay(void) {
    volatile struct sr08_merged_globals_5650 *state = &merged_globals_5650;
    app_easy_timer_cancel(state->app_param_update_request_timer_used);
    state->app_param_update_request_timer_used =
        app_easy_timer(600, param_update_request_timer_cb);
}
