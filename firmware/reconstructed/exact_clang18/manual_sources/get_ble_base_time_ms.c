/* Current time in milliseconds from the BLE core's base time counter, which
 * counts 625 us slots: sample the counter (BLE_SAMPLECLK_REG's SAMP bit
 * clears when done), then scale by 5/8. Register names are the DA14585's. */
#include <stdint.h>

#define BLE_BASETIMECNT_REG (*(volatile uint32_t *)0x4000001Cu)
#define BLE_SAMPLECLK_REG   (*(volatile uint32_t *)0x400000FCu)

uint32_t get_ble_base_time_ms(void)
{
    BLE_SAMPLECLK_REG = 1;
    while (BLE_SAMPLECLK_REG != 0)
        ;
    return (BLE_BASETIMECNT_REG * 5) >> 3;
}
