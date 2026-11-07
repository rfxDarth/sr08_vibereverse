#include "rwip_config.h"
#include "gattc_task.h"
#include "gapc_task.h"
#include "user_periph_setup.h"
#include "wkupct_quadec.h"
#include "app_easy_msg_utils.h"
#include "app_easy_timer.h"
#include "gpio.h"
#include "app_security.h"
#include "user_proxr.h"
#include "arch.h"
#include "arch_api.h"
#include "ll.h"
#include "lld_evt.h"
#include "app_task.h"
#include "app_proxr.h"

#include "timer0.h"
#include "timer0_2.h"
#if (BLE_SUOTA_RECEIVER)
#include "app_suotar.h"
#endif

#if defined (CFG_SPI_FLASH_ENABLE)
#include "spi_flash.h"
#endif

#include "arch_console.h"
#include "v204_core.h"
#include "v204_accel.h"
#include "v204_gatt.h"
#include "v204_hid.h"
#include "custs1_task.h"
#include "nvds.h"
#include <string.h>

#if defined(__IS_SDK6_COMPILER_GCC__) && !defined(__clang__)
#pragma message("Please note that SDK6 GCC support will be deprecated in the next SDK6 release")
#endif


typedef struct led_gpios
{
        GPIO_PORT port;
        GPIO_PIN pin;
}led_gpios;

static led_gpios theLedGpiosLow[] = {
        {GPIO_PORT_2, GPIO_PIN_1},
        {GPIO_PORT_1, GPIO_PIN_3},
        {GPIO_PORT_2, GPIO_PIN_0},
        {GPIO_PORT_1, GPIO_PIN_2},
        {GPIO_PORT_1, GPIO_PIN_0},
        {GPIO_PORT_1, GPIO_PIN_1},
        {GPIO_PORT_0, GPIO_PIN_2},
};

static led_gpios theLedGpiosHigh[] = {
        {GPIO_PORT_2, GPIO_PIN_8},
        {GPIO_PORT_2, GPIO_PIN_7},
        {GPIO_PORT_2, GPIO_PIN_6},
        {GPIO_PORT_2, GPIO_PIN_5},
        {GPIO_PORT_2, GPIO_PIN_2},
        {GPIO_PORT_2, GPIO_PIN_9},
};


uint8_t LED_Buffer[6] = {0x00,0x00,0x00,0x00,0x00,0x00};

uint32_t counter_time = 0;
uint8_t counter_ms = 0;
uint8_t current_line = 0;
uint32_t realUnix = 0;
uint32_t lastTime = 0;
static uint32_t clock_subticks = 0;
static bool clock_synced = false;
static bool clock_12_hour = false;
static uint32_t clock_history_day;
static bool clock_history_day_valid;
/* V204's separate volatile gate for its midnight rollover path (+0x81 s). */
static uint32_t clock_rollover_guard_epoch;
/* V204 clears +0x44 on a date change when the unsigned epoch delta exceeds a day. */
static uint32_t clock_long_gap_count;
/* Measurement-history state at V204 runtime object 0x07fd1e28, byte +0x0e.
 * The 0x7fc48a8 producer is not ported yet. */
static volatile uint8_t v204_history_state;
/* Separate volatile epoch marker used by the 0x77-second-boundary path. */
static uint32_t clock_long_gap_reset_epoch;
static v204_step_counters_t v204_steps;
static uint8_t v204_saved_context[0x70];
/* V204 keeps its 0x33-second save guard in volatile state, separate from the
 * epoch persisted in the saved context block. */
static uint32_t v204_context_guard_epoch;
static bool v204_context_guard_valid;
/* V204 context fields +0x89, +0x8a, and +0x36, set by command 0x02. */
static volatile uint8_t v204_step_scale_input;
static volatile uint8_t v204_status_factor;
static volatile uint16_t v204_status_scale;
static bool selfie_mode = false;
static bool ble_connected = false;
static uint8_t active_conidx = 0;
uint8_t current_menu = 0;
static volatile bool lcd_off_sequence_active;
static volatile bool lcd_off_shutdown_pending;
static uint32_t lcd_off_start_tick;
#define MAX_MENUS 7

#define V204_CLOCK_MAINTENANCE_TICKS 100u /* app_easy_timer units are 10 ms */

void calcTime(void);

static uint16_t v204_scale_from_setting(uint8_t value)
{
        uint8_t rounded;

        if (value < 50u)
                return 20u;
        if (value >= 231u)
                return 86u;

        rounded = (uint8_t)(((uint16_t)value + 9u) / 10u * 10u);
        switch (rounded) {
        case 50:  return 20u;
        case 60:  return 22u;
        case 70:  return 25u;
        case 80:  return 29u;
        case 90:  return 33u;
        case 100: return 37u;
        case 110: return 40u;
        case 120: return 44u;
        case 130: return 48u;
        case 140: return 51u;
        case 150: return 55u;
        case 160: return 59u;
        case 180: return 66u;
        case 190: return 70u;
        case 200: return 74u;
        case 210: return 78u;
        case 220: return 82u;
        case 230: return 86u;
        default:  return 62u;
        }
}

static uint32_t v204_read_le32(const uint8_t *in)
{
        return (uint32_t)in[0] | ((uint32_t)in[1] << 8) |
               ((uint32_t)in[2] << 16) | ((uint32_t)in[3] << 24);
}

static uint16_t v204_read_le16(const uint8_t *in)
{
        return (uint16_t)in[0] | ((uint16_t)in[1] << 8);
}

static void v204_store_le16(uint8_t *out, uint16_t value)
{
        out[0] = (uint8_t)value;
        out[1] = (uint8_t)(value >> 8);
}

static void v204_store_le32(uint8_t *out, uint32_t value)
{
        out[0] = (uint8_t)value;
        out[1] = (uint8_t)(value >> 8);
        out[2] = (uint8_t)(value >> 16);
        out[3] = (uint8_t)(value >> 24);
}

/* V204 restores context bytes +0x30..+0x9f from the saved 0x70-byte block. */
static void v204_restore_context(void)
{
        /* V204 zeroes its context before applying these first-run defaults. */
        memset(v204_saved_context, 0, sizeof(v204_saved_context));
        v204_store_le16(v204_saved_context + 0x06, 0x003eu);
        v204_saved_context[0x59] = 0xaau;
        v204_saved_context[0x5a] = 0x32u;
        v204_store_le16(v204_saved_context + 0x64, 0x3200u);
#if defined(CFG_SPI_FLASH_ENABLE)
        uint8_t saved[0x70];
        uint8_t dev_id;
        uint32_t actual_size = 0;

        if (spi_flash_release_from_power_down() != SPI_FLASH_ERR_OK ||
            spi_flash_auto_detect(&dev_id) != SPI_FLASH_ERR_OK) {
                (void)spi_flash_power_down();
                arch_printf("V204 context flash unavailable; using defaults\r\n");
                return;
        }

        if (spi_flash_read_data(saved, 0x3c000u, sizeof(saved),
                                &actual_size) != SPI_FLASH_ERR_OK ||
            actual_size != sizeof(saved)) {
                (void)spi_flash_power_down();
                arch_printf("V204 context read failed; using defaults\r\n");
                return;
        }
        (void)spi_flash_power_down();

        if (v204_read_le32(saved) == 0xffffffffu)
                return;

        memcpy(v204_saved_context, saved, sizeof(v204_saved_context));

        /* +0x30-relative offsets recovered from V204's context accesses. */
        realUnix = v204_read_le32(saved);
        lastTime = lld_evt_time_get() & 0x07ffffffu;
        clock_subticks = 0;
        clock_synced = true;
        clock_history_day = realUnix / 86400u;
        clock_history_day_valid = true;
        clock_12_hour = saved[0x04] != 0;
        v204_status_scale = v204_read_le16(saved + 0x06);
        v204_steps.total = v204_read_le32(saved + 0x08);
        v204_steps.qualified_count = v204_read_le32(saved + 0x0c);
        v204_steps.count_40 = v204_read_le32(saved + 0x10);
        clock_long_gap_count = v204_read_le32(saved + 0x14);
        v204_steps.count_48 = v204_read_le32(saved + 0x18);
        v204_step_scale_input = saved[0x59];
        v204_status_factor = saved[0x5a];
        arch_printf("V204 context restored from flash\r\n");
#endif
}

static bool v204_save_context(uint32_t epoch_seconds)
{
#if defined(CFG_SPI_FLASH_ENABLE)
        uint8_t dev_id;
        uint32_t actual_size = 0;

        v204_store_le32(v204_saved_context, epoch_seconds);
        v204_saved_context[0x04] = clock_12_hour ? 1u : 0u;
        v204_store_le16(v204_saved_context + 0x06, v204_status_scale);
        v204_store_le32(v204_saved_context + 0x08, v204_steps.total);
        v204_store_le32(v204_saved_context + 0x0c,
                        v204_steps.qualified_count);
        v204_store_le32(v204_saved_context + 0x10, v204_steps.count_40);
        v204_store_le32(v204_saved_context + 0x14, clock_long_gap_count);
        v204_store_le32(v204_saved_context + 0x18, v204_steps.count_48);
        v204_saved_context[0x59] = v204_step_scale_input;
        v204_saved_context[0x5a] = v204_status_factor;

        if (spi_flash_release_from_power_down() != SPI_FLASH_ERR_OK ||
            spi_flash_auto_detect(&dev_id) != SPI_FLASH_ERR_OK ||
            spi_flash_configure_memory_protection(SPI_FLASH_MEM_PROT_NONE) !=
                    SPI_FLASH_ERR_OK) {
                (void)spi_flash_power_down();
                arch_printf("V204 context flash initialization failed\r\n");
                return false;
        }

        /* FUN_07fc5200 erases 0x2000 bytes before writing the 0x70-byte block. */
        for (uint32_t offset = 0; offset < 0x2000u; offset += 0x1000u) {
                if (spi_flash_block_erase(0x3c000u + offset,
                                          SPI_FLASH_OP_SE) != SPI_FLASH_ERR_OK) {
                        (void)spi_flash_power_down();
                        arch_printf("V204 context erase failed at %06lx\r\n",
                                    (unsigned long)(0x3c000u + offset));
                        return false;
                }
        }

        if (spi_flash_write_data(v204_saved_context, 0x3c000u,
                                 sizeof(v204_saved_context), &actual_size) !=
                    SPI_FLASH_ERR_OK || actual_size != sizeof(v204_saved_context)) {
                (void)spi_flash_power_down();
                arch_printf("V204 context write failed\r\n");
                return false;
        }
        (void)spi_flash_power_down();
        arch_printf("V204 context saved at %lu\r\n",
                    (unsigned long)epoch_seconds);
        return true;
#else
        (void)epoch_seconds;
        return false;
#endif
}

static void v204_maybe_save_context(uint32_t previous_epoch,
                                   uint32_t epoch_seconds,
                                   bool previously_synced)
{
        uint32_t old_day = previous_epoch / 86400u;
        uint32_t new_day = epoch_seconds / 86400u;
        uint32_t old_quarter = (previous_epoch % 86400u) / 900u;
        uint32_t new_quarter = (epoch_seconds % 86400u) / 900u;
        bool date_changed = old_day != new_day;
        bool quarter_advanced = previously_synced && !date_changed &&
                                new_quarter > old_quarter;
        if (!date_changed && !quarter_advanced)
                return;

        /* V204 updates this volatile guard before doing the history/context
         * work. It is not restored from the persistent epoch on reboot. */
        if (v204_context_guard_valid &&
            (uint32_t)(epoch_seconds - v204_context_guard_epoch) < 0x33u)
                return;

        v204_context_guard_epoch = epoch_seconds;
        v204_context_guard_valid = true;
        (void)v204_save_context(epoch_seconds);
}

static void v204_write_le32(uint8_t *out, uint32_t value)
{
        out[0] = (uint8_t)value;
        out[1] = (uint8_t)(value >> 8);
        out[2] = (uint8_t)(value >> 16);
        out[3] = (uint8_t)(value >> 24);
}

static void v204_notify_status(uint8_t conidx, uint32_t epoch_seconds)
{
        uint8_t step_status[20];
        uint8_t activity_status[20] = {0};

        v204_encode_step_status(epoch_seconds, v204_steps.total,
                                clock_long_gap_count, v204_status_scale,
                                v204_status_factor, step_status);

        /* V204's type-0x13 record snapshots context +0x3c, +0x40, and +0x48. */
        activity_status[0] = 0x13;
        v204_write_le32(activity_status + 1, epoch_seconds);
        v204_write_le32(activity_status + 5, v204_steps.qualified_count);
        v204_write_le32(activity_status + 9, v204_steps.count_40);
        v204_write_le32(activity_status + 13, v204_steps.count_48);

        if (ble_connected) {
                (void)v204_gatt_notify(conidx, step_status,
                                       sizeof(step_status));
                (void)v204_gatt_notify(conidx, activity_status,
                                       sizeof(activity_status));
        }
}

static bool v204_erase_daily_history(uint32_t epoch_seconds)
{
#if defined(CFG_SPI_FLASH_ENABLE)
        uint32_t slot = (epoch_seconds / 86400u) % 7u;
        uint32_t ranges[][2] = {
                {0x2e000u + slot * 0x2000u, 0x2000u},
                {0x4c000u + slot * 0x3000u, 0x3000u},
        };
        uint8_t dev_id;

        if (spi_flash_release_from_power_down() != SPI_FLASH_ERR_OK ||
            spi_flash_auto_detect(&dev_id) != SPI_FLASH_ERR_OK ||
            spi_flash_configure_memory_protection(SPI_FLASH_MEM_PROT_NONE) !=
                    SPI_FLASH_ERR_OK) {
                arch_printf("V204 history flash initialization failed\r\n");
                (void)spi_flash_power_down();
                return false;
        }

        for (unsigned range = 0; range < 2; ++range) {
                for (uint32_t offset = 0; offset < ranges[range][1];
                     offset += 0x1000u) {
                        if (spi_flash_block_erase(ranges[range][0] + offset,
                                                  SPI_FLASH_OP_SE) !=
                            SPI_FLASH_ERR_OK) {
                                arch_printf("V204 history erase failed at %06lx\r\n",
                                            (unsigned long)(ranges[range][0] + offset));
                                (void)spi_flash_power_down();
                                return false;
                        }
                }
        }
        (void)spi_flash_power_down();
        arch_printf("V204 history day slot %lu rotated\r\n",
                    (unsigned long)slot);
        return true;
#else
        (void)epoch_seconds;
        return false;
#endif
}

static void v204_process_clock_day(uint32_t epoch_seconds)
{
        uint32_t day = epoch_seconds / 86400u;
        if (!clock_history_day_valid) {
                /* V204's date context is a RAM object with no recovered
                 * persistent-date load; its initial date is epoch day zero. */
                clock_history_day = 0;
                clock_history_day_valid = true;
        }
        if (day != clock_history_day) {
                (void)v204_erase_daily_history(epoch_seconds);
                v204_step_counters_reset(&v204_steps);
                clock_history_day = day;
                v204_notify_status(active_conidx, epoch_seconds);
        }
}

static void v204_process_clock_rollover(uint32_t epoch_seconds)
{
        uint32_t seconds_of_day = epoch_seconds % 86400u;
        bool near_midnight = seconds_of_day == 86399u || seconds_of_day < 60u;

        /* FUN_07fc44a8 checks 23:59:59 or the first minute after midnight,
         * then requires an unsigned epoch delta strictly greater than 0x81. */
        if (!near_midnight ||
            (uint32_t)(epoch_seconds - clock_rollover_guard_epoch) <= 0x81u)
                return;

        clock_rollover_guard_epoch = epoch_seconds;
        (void)v204_erase_daily_history(epoch_seconds + 0x1eu);
        v204_step_counters_reset(&v204_steps);
        clock_history_day = (epoch_seconds + 0x1eu) / 86400u;
        clock_history_day_valid = true;
        v204_notify_status(active_conidx, epoch_seconds);
}

static void v204_process_long_gap_reset(uint32_t epoch_seconds)
{
        uint32_t seconds_of_day = epoch_seconds % 86400u;
        bool offset_window = seconds_of_day >= 75600u &&
                             seconds_of_day <= 75660u;

        /* Thumb code adds 0xffffd8b0 (-75600) modulo 2^32 and
         * accepts an unsigned result <= 60, then requires an epoch delta
         * >= 120 from its separate marker. */
        if (!offset_window ||
            (uint32_t)(epoch_seconds - clock_long_gap_reset_epoch) < 120u)
                return;

        clock_long_gap_count = 0;
        clock_long_gap_reset_epoch = epoch_seconds;
        v204_history_state = 0;
}

static void v204_clock_maintenance(void)
{
        uint32_t current_time;
        bool synced;

        calcTime();
        GLOBAL_INT_DISABLE();
        current_time = realUnix;
        synced = clock_synced;
        GLOBAL_INT_RESTORE();

        if (synced) {
                v204_process_clock_rollover(current_time);
                v204_process_long_gap_reset(current_time);
        }

        app_easy_timer(V204_CLOCK_MAINTENANCE_TICKS,
                       v204_clock_maintenance);
}

uint8_t LED_Display_state = 0;
uint32_t turnOnTime = 0;

static void log_public_ble_address(void)
{
        static const uint8_t sdk_default_addr[BD_ADDR_LEN] = {
                0x10, 0x00, 0xf4, 0x35, 0x23, 0x48
        };
        uint8_t address[BD_ADDR_LEN];
        nvds_tag_len_t length = sizeof(address);
        uint8_t status = nvds_get(NVDS_TAG_BD_ADDRESS, &length, address);

        if (status != NVDS_OK || length != sizeof(address)) {
                arch_printf("BLE public address unavailable (NVDS status %u)\r\n",
                            status);
                return;
        }

        arch_printf("BLE public address (%s): %02X:%02X:%02X:%02X:%02X:%02X\r\n",
                    memcmp(address, sdk_default_addr, sizeof(address)) == 0
                        ? "SDK default" : "non-default",
                    address[5], address[4], address[3], address[2],
                    address[1], address[0]);
}

void calcTime()
{
        /* DA14585 BASETIMECNT is 27-bit and advances in 625 us ticks. */
        const uint32_t basetime_mask = 0x07ffffffu;
        uint32_t current_ticks = lld_evt_time_get() & basetime_mask;

        if (!clock_synced)
            return;

        /* The UI timer ISR and BLE write handler can both touch clock state. */
        GLOBAL_INT_DISABLE();
        uint32_t elapsed_ticks = (current_ticks - lastTime) & basetime_mask;

        /* Eight ticks are five milliseconds; retain the fractional second. */
        uint32_t scaled_ticks = clock_subticks + elapsed_ticks * 5u;
        realUnix += scaled_ticks / 8000u;
        clock_subticks = scaled_ticks % 8000u;
        lastTime = current_ticks;
        GLOBAL_INT_RESTORE();
}

void LED_GPIO_mode(uint8_t mode)
{
        arch_printf("LED_GPIO_mode: %i\r\n", mode);
        if(mode == 1)
        {
                if(LED_Display_state != 1)
                {
                        LED_Display_state = 1;
                        calcTime();
                        turnOnTime = realUnix;
                        for (int i = 0; i < (sizeof(theLedGpiosLow)/sizeof(led_gpios)); ++i )
                                GPIO_ConfigurePin(theLedGpiosLow[i].port, theLedGpiosLow[i].pin, OUTPUT, PID_GPIO, 0);
                        for (int i = 0; i < (sizeof(theLedGpiosHigh)/sizeof(led_gpios)); ++i )
                                GPIO_ConfigurePin(theLedGpiosHigh[i].port, theLedGpiosHigh[i].pin, OUTPUT, PID_GPIO, 1);
                        // Here we enable the Timer
                        arch_force_active_mode();
                        timer0_enable_irq();
                        timer0_start();
                }
        }else{
                if(LED_Display_state != 0)
                {
                        LED_Display_state = 0;
                        for (int i = 0; i < (sizeof(theLedGpiosLow)/sizeof(led_gpios)); ++i )
                                GPIO_ConfigurePin(theLedGpiosLow[i].port, theLedGpiosLow[i].pin, INPUT_PULLDOWN, PID_GPIO, 0);
                        for (int i = 0; i < (sizeof(theLedGpiosHigh)/sizeof(led_gpios)); ++i )
                                GPIO_ConfigurePin(theLedGpiosHigh[i].port, theLedGpiosHigh[i].pin, INPUT_PULLDOWN, PID_GPIO, 1);
                        // Here we disable the Timer
                        timer0_disable_irq();
                        timer0_stop();
                        arch_restore_sleep_mode();
                }
        }
}

void LED_Buff_setInt(uint32_t inputNum, unsigned char *LED_Buf, int lenInt) {
    if (lenInt > 5) lenInt = 5;
    if (lenInt > 0)
        (void)v204_format_number(inputNum, (uint8_t)lenInt, false, LED_Buf);
}

void refreshMenu()
{
        calcTime();

        if (current_menu != 6) {
                lcd_off_sequence_active = false;
                lcd_off_shutdown_pending = false;
        }

        // Seven-page smoke-test UI; sensor-backed values are placeholders.
        switch(current_menu)
        {
            case 0: // V204 clock face: two-digit hour, blinking separator, minute.
            {
                uint8_t hour = 0;
                uint8_t minute = 0;
                uint32_t display_time;
                bool synced;
                bool use_12_hour;
                GLOBAL_INT_DISABLE();
                display_time = realUnix;
                synced = clock_synced;
                use_12_hour = clock_12_hour;
                GLOBAL_INT_RESTORE();
                if (synced) {
                    v204_calendar_t calendar;
                    v204_epoch_to_calendar(display_time, &calendar);
                    hour = calendar.hour;
                    /* V204 leaves 00..12 unchanged and subtracts 12 only
                     * from 13..23 when its 12-hour flag is set. */
                    if (use_12_hour && hour > 12u)
                        hour = (uint8_t)(hour - 12u);
                    minute = calendar.minute;
                }
                (void)v204_format_number(hour, 2, false, &LED_Buffer[0]);
                LED_Buffer[2] = (counter_time & 1u) ? 0x48 : 0x00;
                (void)v204_format_number(minute, 2, false,
                                         &LED_Buffer[3]);
                break;
            }
            case 1: // Steps placeholder
                LED_Buff_setInt(v204_steps.total, LED_Buffer, 5);
                break;
            case 2: // Pulse measurement animation placeholder
            {
                uint8_t dash = ((counter_time / 2) % 2) ? 0x08 : 0x00;
                LED_Buffer[0] = 0;
                LED_Buffer[1] = dash;
                LED_Buffer[2] = dash;
                LED_Buffer[3] = dash;
                LED_Buffer[4] = dash;
                break;
            }
            case 3: // SPO2 label placeholder
                // Seven-segment approximations: S, P, O, 2.
                LED_Buffer[0] = 0x00;
                LED_Buffer[1] = 0x6B;
                LED_Buffer[2] = 0x1F;
                LED_Buffer[3] = 0x78; // lowercase o
                LED_Buffer[4] = 0x5D;
                LED_Buffer[5] = 0x00;
                break;
            case 4: // Sleep placeholder
                // Seven-segment approximations: S, L, E, E, P.
                // Use digit slots 0..4; the far-right slot is not visible on-ring.
                LED_Buffer[0] = 0x6B;
                LED_Buffer[1] = 0x52;
                LED_Buffer[2] = 0x5B;
                LED_Buffer[3] = 0x5B;
                LED_Buffer[4] = 0x1F;
                LED_Buffer[5] = 0x00;
                break;
            case 5: // Battery animation placeholder
            {
                // User confirmed bit 0x08 is center; battery bars should build
                // from bottom (D) through center (G) to top (A).
                static const uint8_t battery_bars[] = {0x40, 0x48, 0x49, 0x00};
                LED_Buffer[0] = battery_bars[counter_time % 4];
                break;
            }
            case 6: // LCD OFF page indicator
            {
                if (!lcd_off_sequence_active) {
                    lcd_off_sequence_active = true;
                    lcd_off_start_tick = counter_time;
                }
                uint32_t elapsed_ticks = counter_time - lcd_off_start_tick;
                if (elapsed_ticks >= 8u) {
                    /* Four one-second phases show LCD/OFF twice. */
                    memset(LED_Buffer, 0, sizeof(LED_Buffer));
                    lcd_off_shutdown_pending = true;
                    break;
                }
                LED_Buffer[0] = 0x00;
                if (((elapsed_ticks / 2u) & 1u) != 0u) {
                    // OFF
                    LED_Buffer[1] = 0x77;
                    LED_Buffer[2] = 0x1B;
                    LED_Buffer[3] = 0x1B;
                } else {
                    // LCD, using seven-segment L and D approximations.
                    LED_Buffer[1] = 0x52;
                    LED_Buffer[2] = 0x53;
                    LED_Buffer[3] = 0x7C;
                }
                break;
            }
            case 99:// __OTA
                    LED_Buffer[0] = 0x00;
                    LED_Buffer[1] = 0x00;
                    LED_Buffer[2] = 0x77;
                    LED_Buffer[3] = 0x5A;
                    LED_Buffer[4] = 0x3F;
                break;
            case 100:// _DONE
                    LED_Buffer[0] = 0x00;
                    LED_Buffer[1] = 0x7C;
                    LED_Buffer[2] = 0x78;
                    LED_Buffer[3] = 0x38;
                    LED_Buffer[4] = 0x5B;
                break;
            case 101:// BLE 0
                    LED_Buffer[0] = 0x7A;
                    LED_Buffer[1] = 0x52;
                    LED_Buffer[2] = 0x5B;
                    LED_Buffer[3] = 0x00;
                    LED_Buffer[4] = 0x77;
                break;
            case 102:// BLE 1
                    LED_Buffer[0] = 0x7A;
                    LED_Buffer[1] = 0x52;
                    LED_Buffer[2] = 0x5B;
                    LED_Buffer[3] = 0x00;
                    LED_Buffer[4] = 0x24;
                break;

            default:
                current_menu = 0;
                break;
        }
}

static void timer_cb(void)
{
        if(LED_Display_state){
                GPIO_SetActive( theLedGpiosHigh[current_line].port, theLedGpiosHigh[current_line].pin );
                bool refresh_frame;
                current_line = v204_display_next_digit(current_line, &refresh_frame);
                if(refresh_frame)
                {
                        counter_ms++;
                        if(counter_ms >=55)// every 495ms
                        {
                                counter_ms = 0;
                                counter_time++;
                                arch_printf("Menu: %i, Time %i\r\n", current_menu, realUnix);
                        }
                        memset(LED_Buffer,0x00,sizeof(LED_Buffer));
                        refreshMenu();

                }
                for(int i =0;i<7;i++)
                {
                        if((LED_Buffer[current_line] >> i) & 1)
                               GPIO_SetActive( theLedGpiosLow[i].port, theLedGpiosLow[i].pin );
                        else
                               GPIO_SetInactive( theLedGpiosLow[i].port, theLedGpiosLow[i].pin );
                }
                GPIO_SetInactive( theLedGpiosHigh[current_line].port, theLedGpiosHigh[current_line].pin );
                if (lcd_off_shutdown_pending && current_menu == 6) {
                        lcd_off_shutdown_pending = false;
                        LED_GPIO_mode(0);
                }
        }
}

void start_refresh_timer(void)
{
        static tim0_2_clk_div_config_t clk_div_config =
        {
            .clk_div  = TIM0_2_CLK_DIV_8
        };
        timer0_2_clk_enable();
        timer0_2_clk_div_set(&clk_div_config);
        timer0_set_pwm_high_counter(0);
        timer0_set_pwm_low_counter(0);
        // Set timer with 2MHz source clock divided by 10 so Fclk = 2MHz/10 = 200kHz
        timer0_init(TIM0_CLK_FAST, PWM_MODE_ONE, TIM0_CLK_DIV_BY_10);
        // reload value for 100ms (T = 1/200kHz * RELOAD_100MS = 0,000005 * 20000 = 100ms)
        timer0_set_pwm_on_counter(300);
        timer0_register_callback(timer_cb);
}

static void app_wakeup_cb(void)
{
    // If state is not idle, ignore the message
    if (ke_state_get(TASK_APP) == APP_CONNECTABLE)
    {
        default_advertise_operation();
    }
}

static void app_resume_system_from_sleep(void)
{
    if (GetBits16(SYS_STAT_REG, PER_IS_DOWN))
    {
        periph_init();
    }

    if (arch_ble_ext_wakeup_get())
    {
        arch_set_sleep_mode(app_default_sleep_mode);
        arch_ble_force_wakeup();
        arch_ble_ext_wakeup_off();
        app_easy_wakeup();
    }
}


void user_app_on_init(void)
{

     default_app_on_init();
     arch_printf("Booted now\r\n");
     /* V204's first-run context defaults, before its optional 0x3c000 restore. */
     v204_step_scale_input = 0xaau;
     v204_status_factor = 0x32u;
     v204_status_scale = 0x003eu;
     v204_restore_context();
     log_public_ble_address();
     app_easy_timer(V204_CLOCK_MAINTENANCE_TICKS,
                    v204_clock_maintenance);
     uint8_t accel_id = 0;
     uint8_t accel_variant = 0;
     if (v204_motion_sensor_init(&accel_id, &accel_variant))
         arch_printf("V204 accel initialized: id=%02x variant=%02x\r\n",
                     accel_id, accel_variant);
     else
         arch_printf("V204 accel init skipped/failed: id=%02x variant=%02x\r\n",
                     accel_id, accel_variant);
     LED_GPIO_mode(1);
}

static void app_button_press_cb(void)
{
    app_resume_system_from_sleep();

    app_button_enable();
    if(GPIO_GetPinStatus(GPIO_BUTTON_PORT, GPIO_BUTTON_PIN))
            return;

    arch_printf("Button pressed\r\n");

    if (selfie_mode) {
        static const uint8_t shutter_event[] = {0x06, 0x02, 0x00};
        if (ble_connected)
            (void)v204_gatt_notify(active_conidx, shutter_event,
                                   sizeof(shutter_event));
        return;
    }

    if(!LED_Display_state || current_menu == 6)
    {
        // Wake from the display-off page to clock.
        current_menu = 0;
        LED_GPIO_mode(1);
    }
    else
    {
        // Short press advances through the observed page order.
        current_menu++;
        if(current_menu >= MAX_MENUS)
            current_menu = 0;
    }
}

void app_button_enable(void)
{
    app_easy_wakeup_set(app_wakeup_cb);
    wkupct_register_callback(app_button_press_cb);

    if (!GPIO_GetPinStatus(GPIO_BUTTON_PORT, GPIO_BUTTON_PIN))
    {
        wkupct_enable_irq(WKUPCT_PIN_SELECT(GPIO_BUTTON_PORT, GPIO_BUTTON_PIN), // select pin (GPIO_BUTTON_PORT, GPIO_BUTTON_PIN)
                          WKUPCT_PIN_POLARITY(GPIO_BUTTON_PORT, GPIO_BUTTON_PIN, WKUPCT_PIN_POLARITY_HIGH), // polarity low
                          1, // 1 event
                          0); // debouncing time = 0
    }else{
            wkupct_enable_irq(WKUPCT_PIN_SELECT(GPIO_BUTTON_PORT, GPIO_BUTTON_PIN), // select pin (GPIO_BUTTON_PORT, GPIO_BUTTON_PIN)
                              WKUPCT_PIN_POLARITY(GPIO_BUTTON_PORT, GPIO_BUTTON_PIN, WKUPCT_PIN_POLARITY_LOW), // polarity low
                              1, // 1 event
                              0); // debouncing time = 0
    }
}

#if (BLE_SUOTA_RECEIVER)
void on_suotar_status_change(const uint8_t suotar_event)
{
    arch_printf("BLE on_suotar_status_change %u\r\n", suotar_event);
#if (!SUOTAR_SPI_DISABLE)
    uint8_t dev_id;

    // Release the SPI flash memory from power down
    spi_flash_release_from_power_down();

    // Try to auto-detect the SPI flash memory
    spi_flash_auto_detect(&dev_id);

    // Disable the SPI flash memory protection (unprotect all sectors)
    spi_flash_configure_memory_protection(SPI_FLASH_MEM_PROT_NONE);

    if(suotar_event == SUOTAR_START)
    {
        current_menu = 99;
        LED_GPIO_mode(1);
    }
    if (suotar_event == SUOTAR_END)
    {
        // Power down the SPI flash memory
        spi_flash_power_down();
        current_menu = 100;
        LED_GPIO_mode(1);
    }
#endif
}
#endif
void user_app_on_disconnect(struct gapc_disconnect_ind const *param)
{
    ble_connected = false;
    selfie_mode = false;
    arch_printf("BLE Disconnected\r\n");
    default_app_on_disconnect(NULL);
    current_menu = 101;
    LED_GPIO_mode(1);

#if (BLE_BATT_SERVER)
    app_batt_poll_stop();
#endif

#if (BLE_SUOTA_RECEIVER)
    // Issue a platform reset when it is requested by the suotar procedure
    if (suota_state.reboot_requested)
    {
        // Reboot request will be served
        suota_state.reboot_requested = 0;

        // Platform reset
        platform_reset(RESET_AFTER_SUOTA_UPDATE);
    }
#endif
}

void user_app_on_connect(uint8_t conidx, struct gapc_connection_req_ind const *param)
{
    active_conidx = conidx;
    ble_connected = true;
    default_app_on_connection(conidx, param);
    arch_printf("BLE Connected\r\n");
    current_menu = 102;
    LED_GPIO_mode(1);
}

void app_advertise_complete(const uint8_t status)
{
    if ((status == GAP_ERR_NO_ERROR) || (status == GAP_ERR_CANCELED))
    {

    }

    if (status == GAP_ERR_CANCELED)
    {
        arch_ble_ext_wakeup_on();
        app_button_enable();
    }
}

void user_catch_rest_hndl(ke_msg_id_t const msgid,
                          void const *param,
                          ke_task_id_t const dest_id,
                          ke_task_id_t const src_id)
{
    switch(msgid)
    {
        case CUSTS1_VAL_WRITE_IND:
        {
            const struct custs1_val_write_ind *write =
                (const struct custs1_val_write_ind *)param;
            if (write->handle == V204_GATT_TX_VALUE_IDX &&
                write->length == 20)
            {
                bool echo_request = true;
                bool notify_status_after_echo = false;
                switch (write->value[0]) {
                    case 0x01:
                    {
                        uint32_t previous_time;
                        bool previously_synced;
                        uint32_t synced_time;
                        calcTime();
                        uint32_t now = lld_evt_time_get() & 0x07ffffffu;
                        /* JRing adds the phone's timezone offset before
                         * sending the little-endian epoch; V204 ignores the
                         * separate raw-offset byte at value[5]. */
                        synced_time = v204_decode_epoch_le(&write->value[1]);
                        GLOBAL_INT_DISABLE();
                        previous_time = realUnix;
                        previously_synced = clock_synced;
                        realUnix = synced_time;
                        lastTime = now;
                        clock_subticks = 0;
                        clock_synced = true;
                        GLOBAL_INT_RESTORE();
                        if (previously_synced &&
                            previous_time / 86400u != synced_time / 86400u &&
                            (uint32_t)(synced_time - previous_time) > 86400u) {
                                clock_long_gap_count = 0;
                                v204_history_state = 0;
                        }
                        v204_maybe_save_context(previous_time, synced_time,
                                                previously_synced);
                        v204_process_clock_day(synced_time);
                        arch_printf("V204 time sync: %lu\r\n",
                                    (unsigned long)realUnix);
                    } break;
                    case 0x02:
                        /* V204 saves payload bytes 2/3 at context +0x89/+0x8a
                         * and converts byte 2 to the scale used by status 03. */
                        v204_step_scale_input = write->value[2];
                        v204_status_factor = write->value[3];
                        v204_status_scale =
                                v204_scale_from_setting(v204_step_scale_input);
                        notify_status_after_echo = true;
                        break;
                    case 0x03:
                    {
                        uint32_t status_time;
                        calcTime();
                        GLOBAL_INT_DISABLE();
                        status_time = realUnix;
                        GLOBAL_INT_RESTORE();
                        v204_notify_status(write->conidx, status_time);
                        echo_request = false;
                    } break;
                    case 0x07:
                        selfie_mode = write->value[1] != 0;
                        break;
                    case 0x1d:
                        GLOBAL_INT_DISABLE();
                        clock_12_hour = write->value[1] != 0;
                        GLOBAL_INT_RESTORE();
                        break;
                    default:
                        /* Do not fake V204 command replies until the command
                         * and its actual status/event response are ported. */
                        echo_request = false;
                        break;
                }

                /* V204's dispatcher queues the unchanged 20-byte records for
                 * these four implemented commands. */
                if (echo_request && ble_connected)
                    (void)v204_gatt_notify(write->conidx, write->value,
                                           write->length);
                if (notify_status_after_echo) {
                    uint32_t status_time;
                    calcTime();
                    GLOBAL_INT_DISABLE();
                    status_time = realUnix;
                    GLOBAL_INT_RESTORE();
                    v204_notify_status(write->conidx, status_time);
                }
            }
        } break;

        case GATTC_EVENT_REQ_IND:
        {
            // Confirm unhandled indication to avoid GATT timeout
            struct gattc_event_ind const *ind = (struct gattc_event_ind const *) param;
            struct gattc_event_cfm *cfm = KE_MSG_ALLOC(GATTC_EVENT_CFM, src_id, dest_id, gattc_event_cfm);
            cfm->handle = ind->handle;
            KE_MSG_SEND(cfm);
        } break;

        default:
            (void)v204_hid_handle_message(msgid, param);
            break;
    }
}
