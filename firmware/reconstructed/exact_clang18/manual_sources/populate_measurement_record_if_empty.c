/* Fill the selected measurement record only when its current state is empty. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_measurement_slot.h"
#include "firmware/reconstructed/include/sr08_measurement_record.h"
#include "firmware/reconstructed/include/sr08_kernel_message.h"
#include "firmware/reconstructed/include/sr08_record_lookup.h"
#include "firmware/reconstructed/include/sr08_kernel_state.h"

/* Input layout read by this routine: sample at +2, source at +4, count at +6. */
struct measurement_sample_input {
    uint16_t reserved_word;
    uint16_t sample_value;
    uint16_t source_value;
    uint8_t source_count;
};

_Static_assert(offsetof(struct measurement_sample_input, sample_value) == 2,
               "measurement sample value must remain at offset two");
_Static_assert(offsetof(struct measurement_sample_input, source_value) == 4,
               "measurement source value must remain at offset four");
_Static_assert(offsetof(struct measurement_sample_input, source_count) == 6,
               "measurement source count must remain at offset six");

__attribute__((used, section(".text.populate_measurement_record_if_empty"))) uint32_t
populate_measurement_record_if_empty(uint32_t reserved_context, const struct measurement_sample_input *sample,
                                     uint32_t measurement_id) {
    (void)reserved_context;

    if (ke_state_get(measurement_id) == 0) {
        volatile struct sr08_measurement_record *measurement_record =
            find_keyed_record_value(SR08_MEASUREMENT_RECORD_LOOKUP_KEY);
        struct sr08_measurement_slot *update =
            ke_msg_alloc(SR08_MEASUREMENT_SLOT_UPDATE_MESSAGE_ID, SR08_MEASUREMENT_SLOT_UPDATE_DESTINATION_TASK,
                         measurement_id, sizeof(struct sr08_measurement_slot));
        update->source_value = sample->source_value;
        update->source_count = sample->source_count;
        update->accumulated_value = measurement_record->accumulated_value + sample->sample_value;
        ke_msg_send(update);
    }
    return 0;
}
