/* Drop the sensor status record's context (the record subsystem becomes inactive). */
#include <stddef.h>
#include "firmware/reconstructed/include/sr08_sensor_status_record.h"

void clear_state_counter_at_offset_four(void)
{
    if (sensor_status_record.context != NULL)
        sensor_status_record.context = NULL;
}
