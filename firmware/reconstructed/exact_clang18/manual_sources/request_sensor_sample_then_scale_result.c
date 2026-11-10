/* Recovered behavior:
 * Write one to the conversion-request register at 0x400000fc and wait for it to clear. Read the
 * result at 0x4000001c and return raw_value times five, shifted right by three.
 */
#include <stdint.h>

enum {
    SENSOR_RESULT_SCALE_NUMERATOR = 5,
    SENSOR_RESULT_SCALE_SHIFT = 3,
};

__attribute__((used, section(".text.request_sensor_sample_then_scale_result"))) uint32_t
request_sensor_sample_then_scale_result(void) {
    volatile uint32_t *conversion_request_register;
    /* V204's separate literal pool contains 0x400000fc and 0x4000001c. */
    __asm__ volatile("ldr %[loaded_pointer], [pc, #92]" : [loaded_pointer] "=r"(conversion_request_register));
    *conversion_request_register = 1;
    do {
    } while (*conversion_request_register != 0);
    volatile uint32_t *conversion_result_register;
    __asm__ volatile("ldr %[loaded_pointer], [pc, #84]" : [loaded_pointer] "=r"(conversion_result_register));
    uint32_t raw_result = *conversion_result_register;
    return (raw_result * SENSOR_RESULT_SCALE_NUMERATOR) >> SENSOR_RESULT_SCALE_SHIFT;
}
