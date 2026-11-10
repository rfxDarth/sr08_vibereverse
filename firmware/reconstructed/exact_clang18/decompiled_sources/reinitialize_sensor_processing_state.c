/* Call the full sensor-processing state initializer at 0x07fcec2c. */
extern void initialize_sensor_processing_state(void);

void reinitialize_sensor_processing_state(void) {
    initialize_sensor_processing_state();
}
