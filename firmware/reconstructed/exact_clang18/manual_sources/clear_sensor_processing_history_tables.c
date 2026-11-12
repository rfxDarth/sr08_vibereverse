/* Reset the active measurement context's history tables, counters and
 * accumulators, and restore the 30-sample window length. Returns one. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_sensor_frame_batch_state.h"

enum { DEFAULT_SAMPLE_WINDOW = 30 };

uint32_t clear_sensor_processing_history_tables(void) {
    struct sr08_measurement_context *context;
    uint16_t index;
    context = sensor_frame_batch_state.context;
    for (index = 0; index < 11; index++) {
        context->history_ca4[index] = 0;
        context->history_cba[index] = 0;
    }
    context = sensor_frame_batch_state.context;
    for (index = 0; index < 8; index++) {
        context->history_d48[index] = 0;
        context->history_d58[index] = 0;
    }
    context = sensor_frame_batch_state.context;
    for (index = 0; index < 5; index++) {
        context->history_cd0[index] = 0;
        context->history_cda[index] = 0;
        context->history_ce4[index] = 0;
    }
    context = sensor_frame_batch_state.context;
    for (index = 0; index < 4; index++) {
        context->history_d04[index] = 0;
        context->history_d14[index] = 0;
    }
    context = sensor_frame_batch_state.context;
    for (index = 0; index < 6; index++)
        context->history_d1c[index] = 0;
    context = sensor_frame_batch_state.context;
    for (index = 0; index < 4; index++)
        context->history_d28[index] = 0;
    context = sensor_frame_batch_state.context;
    context->half_cf8[0] = 0;
    context->half_cf8[1] = 0;
    context->half_cf8[2] = 0;
    context->word_d34 = 0;
    context->half_d38[0] = 0;
    context->half_d38[1] = 0;
    context->half_d38[2] = 0;
    context->half_d38[3] = 0;
    context->window_d40 = DEFAULT_SAMPLE_WINDOW;
    context->word_d44 = 0;
    context->word_d68 = 0;
    context->flags_d6c[0] = 0;
    context->flags_d6c[1] = 0;
    context->flags_d6c[2] = 0;
    context->flags_d6c[3] = 0;
    context->flags_d71[4] = 0;
    context->flags_d71[1] = 0;
    context->flags_d71[2] = 0;
    context->flags_d71[3] = 0;
    context->flags_d71[0] = 0;
    context->flags_d71[5] = 0;
    context->accumulators_d80[0] = 0;
    context->accumulators_d80[1] = 0;
    context->accumulators_d80[2] = 0;
    context->accumulators_d80[3] = 0;
    context->accumulators_d80[4] = 0;
    context->accumulators_d80[5] = 0;
    context->accumulators_d80[6] = 0;
    context->accumulators_d80[7] = 0;
    context->accumulators_d80[8] = 0;
    context->accumulators_d80[9] = 0;
    context->accumulators_d80[10] = 0;
    context->accumulators_d80[11] = 0;
    context->accumulators_d80[12] = 0;
    context->accumulators_d80[13] = 0;
    context->accumulators_d80[14] = 0;
    context->accumulators_d80[15] = 0;
    context->accumulators_d80[16] = 0;
    context->accumulators_d80[17] = 0;
    context->accumulators_d80[18] = 0;
    context->accumulators_d80[19] = 0;
    context->accumulators_d80[20] = 0;
    context->accumulators_d80[21] = 0;
    context->accumulators_d80[22] = 0;
    context->accumulators_d80[23] = 0;
    context->accumulators_d80[24] = 0;
    context->accumulators_d80[25] = 0;
    context->accumulators_d80[26] = 0;
    context->accumulators_d80[27] = 0;
    context->accumulators_d80[28] = 0;
    context->accumulators_d80[29] = 0;
    return 1;
}
