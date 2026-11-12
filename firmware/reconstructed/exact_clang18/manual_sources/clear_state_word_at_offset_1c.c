/* Drop the sensor frame batch state's active measurement context. */
#include <stddef.h>
#include "firmware/reconstructed/include/sr08_sensor_frame_batch_state.h"

void clear_state_word_at_offset_1c(void)
{
    if (sensor_frame_batch_state.context != NULL)
        sensor_frame_batch_state.context = NULL;
}
