#include <stdint.h>
#include "firmware/reconstructed/include/sr08_clock_literal_pool.h"
extern struct sr08_clock_timekeeping_state clock_timekeeping_state;
__attribute__((used,section(".text.map_elapsed_ticks_to_firmware_time_units"))) int
map_elapsed_ticks_to_firmware_time_units(void) {
 /* Unsigned arithmetic preserves the original wraparound range check. */
 uint32_t ticks=clock_timekeeping_state.seconds_since_midnight;
 if(ticks-75600u<=10798u) return (ticks*17u-1285200u)/10800u+5u;
 if(ticks<7200u) return (uint16_t)ticks/720u+20u;
 if(ticks<14400u) return (uint16_t)ticks/1440u+30u;
 if(ticks<=25199u) return (uint16_t)(25200u-ticks)/600u+15u;
 return 5;
}
