/* Check two wrapping time references before requesting connection interval80. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_settings.h"
#include "firmware/reconstructed/include/sr08_shared_context.h"
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_app.h"
#include "firmware/reconstructed/include/sr08_flagged_record.h"
extern uint32_t get_ble_base_time_ms(void);
extern void allocate_initialize_record_first_use_release_at_3254(uint8_t,uint16_t,uint16_t);
struct interval_update_times {
    uint8_t reserved[0x70];
    uint32_t last_request;
    uint32_t reference_74;
};
SR08_STATIC_ASSERT(offsetof(struct interval_update_times,last_request)==0x70,"request time offset");
SR08_STATIC_ASSERT(offsetof(struct interval_update_times,reference_74)==0x74,"second reference offset");
enum {
    TIME_COUNTER_WRAP=0x05000000, MIN_REQUEST_GAP=6001,
    SECOND_REFERENCE_GAP=4001, REQUEST_INTERVAL=80, TIMER_RECHECK_DELAY=200,
};
__attribute__((used,section(".text.param_update_request_timer_cb"))) void
param_update_request_timer_cb(void) {
 uint32_t now=get_ble_base_time_ms();
 timer_hnd handle=0;
 volatile struct sr08_merged_globals_5650 *state=&merged_globals_5650;
 if(((volatile struct sr08_shared_context *)&sr08_shared_context)->connection_state==0) goto finished;
 if(((volatile struct sr08_device_settings *)&device_settings)->conn_intv_max>79) goto finished;
 uint32_t corrected=now+TIME_COUNTER_WRAP;
 volatile struct interval_update_times *times=(volatile struct interval_update_times *)state;
 uint32_t previous=times->last_request;
 uint32_t adjusted=corrected;
 if(now>=previous) adjusted=now;
 if(adjusted-previous<MIN_REQUEST_GAP) goto reschedule;
 if(read_record_flag_bit_zero()!=0) goto reschedule;
 previous=times->reference_74;
 if(now>=previous) corrected=now;
 if(corrected-previous<SECOND_REFERENCE_GAP) goto reschedule;
 allocate_initialize_record_first_use_release_at_3254(state->app_connection_idx,REQUEST_INTERVAL,REQUEST_INTERVAL);
 times->last_request=get_ble_base_time_ms();
reschedule:
 handle=app_easy_timer(TIMER_RECHECK_DELAY,param_update_request_timer_cb);
finished:
 state->app_param_update_request_timer_used=handle;
}
