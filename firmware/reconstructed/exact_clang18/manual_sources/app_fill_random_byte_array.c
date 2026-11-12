/* app_fill_random_byte_array from the Renesas DA145xx SDK (sdk/app_modules/src/app_common/app_utils.c):
 * fill the key_size most significant bytes of an array_size-byte buffer with random data and zero
 * the rest. V204's SDK expands ASSERT_ERROR to a watchdog reload of 200 followed by a halt.
 */
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_device_registers.h"

extern uint32_t dia_rand(void);
#define co_rand_word() dia_rand()
/* Non-debug ASSERT_ERROR: wdg_reload(200); wdg_resume(); while (1); */
#define ASSERT_ERROR(x) { do { if (!(x)) { *SR08_HARDFAULT_STATUS_REGISTER = 200; *SR08_HALT_STATUS_REGISTER = 8; while (1); } } while (0); }

void app_fill_random_byte_array(uint8_t *dst, uint8_t key_size, uint8_t array_size)
{
    uint32_t rand_val;
    uint8_t rand_bytes_cnt = 0;
    uint8_t remaining_bytes;
    uint8_t i;

    ASSERT_ERROR(array_size >= key_size);

    for (i = 0; i < key_size-3; i+=4)
    {
        rand_val = co_rand_word();
        dst[array_size - (i+0)-1] = (rand_val >> 24) & 0xFF;
        dst[array_size - (i+1)-1] = (rand_val >> 16) & 0xFF;
        dst[array_size - (i+2)-1] = (rand_val >> 8) & 0xFF;
        dst[array_size - (i+3)-1] = (rand_val >> 0) & 0xFF;
        rand_bytes_cnt += 4;
    }

    remaining_bytes = key_size - rand_bytes_cnt;
    if (remaining_bytes)
    {
        rand_val = co_rand_word();
        for (i = 0; i < remaining_bytes; i++)
        {
            dst[array_size -(rand_bytes_cnt+i)-1] = (rand_val >> ((3-i)<<3)) & 0xFF;
        }
    }

    remaining_bytes = array_size - key_size;
    for (i = 0; i < remaining_bytes; i++)
    {
        dst[array_size - (key_size + i)-1] = 0;
    }
}
