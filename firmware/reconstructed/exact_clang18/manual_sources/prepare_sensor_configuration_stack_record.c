/* Prepare the stack record consumed by the sensor configuration helper. */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_arm_eabi.h"
#include "firmware/reconstructed/include/sr08_queue_record.h"

extern void search_circular_record_queue_and_compact_if_needed(void *);

__attribute__((used, section(".text.prepare_sensor_configuration_stack_record"))) void
prepare_sensor_configuration_stack_record(void) {
    union sr08_queue_record record;

    __aeabi_memclr(record.sensor_configuration.reserved, sizeof(record.sensor_configuration.reserved));
    record.sensor_configuration.marker = 0xbb;
    record.sensor_configuration.second = 0xbe0a0928u;
    record.sensor_configuration.first = 0x07e86a20u;
    search_circular_record_queue_and_compact_if_needed(&record.sensor_configuration.first);
}
