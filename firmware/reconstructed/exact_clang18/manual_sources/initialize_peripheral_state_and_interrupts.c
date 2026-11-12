/* periph_init (Renesas DA145xx SDK 6.0.18.1182.1 project template, user_periph_setup.c) as V204 uses it:
 * power up the peripheral domain, patch_func, the vendor pad setup (set_pad_functions), timer0 for the
 * timed-state callbacks, UART2 and the SPI flash interface, then latch the pads. */
#include <stdbool.h>
#include <stdint.h>
#include "firmware/reconstructed/include/sr08_merged_globals.h"
#include "firmware/reconstructed/include/sr08_sdk_da14585.h"
#include "firmware/reconstructed/include/sr08_sdk_gpio.h"

void GPIO_ConfigurePin(GPIO_PORT port, GPIO_PIN pin, GPIO_PUPD mode, GPIO_FUNCTION function, const bool high);
void patch_func(void);
void quiesce_irq_source_wait_pending_bit_at_c4b0(void);   /* vendor UART2 setup */
void dispatch_timed_state_callbacks(void);

struct gpio_pin_ref {
    uint8_t port;
    uint8_t pin;
};
extern const struct gpio_pin_ref display_low_pins[7];
extern const struct gpio_pin_ref display_high_pins[6];

#define PMU_CTRL_REG        0x50000010
#define PERIPH_SLEEP        0x0002
#define SYS_STAT_REG        0x50000014
#define PER_IS_UP           0x0008
#define CLK_16M_REG         0x50000022
#define XTAL16_BIAS_SH_ENABLE 0x0100
#define CLK_PER_REG         0x50000004
#define TMR_ENABLE          0x0008
#define TMR_DIV             0x0003
#define SPI_ENABLE          0x0800
#define SYS_CTRL_REG        0x50000012
#define PAD_LATCH_EN        0x0020
#define TIMER0_CTRL_REG     0x50003400
#define TIMER0_ON_REG       0x50003402
#define TIMER0_RELOAD_M_REG 0x50003404
#define TIMER0_RELOAD_N_REG 0x50003406
#define SPI_CLEAR_INT_REG   0x50001206
#define SPI_ON              0x0001
#define NVIC_IPR3           0xe000e40c
#define PID_SPI_DI 5
#define PID_SPI_DO 6
#define PID_SPI_CLK 7
#define PID_SPI_EN 8
#define PID_UART2_TX 4
#define PID_ADC 15

/* SDK timer0.c / CMSIS NVIC_SetPriority(SWTIM_IRQn = 15, 2) with __NVIC_PRIO_BITS = 2. */
static inline void timer0_init(uint16_t clk_sel, uint16_t pwm_mode, uint16_t clk_div) {
    SetWord16(TIMER0_CTRL_REG, (pwm_mode << 3) + (clk_div << 2) + (clk_sel << 1));
    SetWord32(NVIC_IPR3, (GetWord32(NVIC_IPR3) & ~(0xffu << 24)) | (((2u << 6) & 0xffu) << 24));
}

static inline uint32_t global_int_disable(void) {
    uint32_t saved = __builtin_arm_rsr("primask");
    __builtin_arm_wsr("primask", 1);
    return saved;
}
static inline void global_int_restore(uint32_t saved) {
    /* Compiler fences keep the SDK macro's two restore paths (msr 1 / msr 0). */
    if (saved) {
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
        __builtin_arm_wsr("primask", 1);
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
    } else {
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
        __builtin_arm_wsr("primask", 0);
        __atomic_signal_fence(__ATOMIC_SEQ_CST);
    }
}

void initialize_peripheral_state_and_interrupts(void) {
    SetBits16(PMU_CTRL_REG, PERIPH_SLEEP, 0);
    while (!(GetWord16(SYS_STAT_REG) & PER_IS_UP))
        ;
    SetBits16(CLK_16M_REG, XTAL16_BIAS_SH_ENABLE, 1);

    patch_func();

    /* set_pad_functions */
    GPIO_ConfigurePin(GPIO_PORT_0, (GPIO_PIN)4, OUTPUT, (GPIO_FUNCTION)PID_UART2_TX, false);
    GPIO_ConfigurePin(GPIO_PORT_0, (GPIO_PIN)3, OUTPUT, (GPIO_FUNCTION)PID_SPI_EN, true);
    GPIO_ConfigurePin(GPIO_PORT_0, (GPIO_PIN)0, OUTPUT, (GPIO_FUNCTION)PID_SPI_CLK, false);
    GPIO_ConfigurePin(GPIO_PORT_0, (GPIO_PIN)6, OUTPUT, (GPIO_FUNCTION)PID_SPI_DO, false);
    GPIO_ConfigurePin(GPIO_PORT_0, (GPIO_PIN)5, INPUT, (GPIO_FUNCTION)PID_SPI_DI, false);
    GPIO_ConfigurePin(GPIO_PORT_2, (GPIO_PIN)3, INPUT_PULLUP, PID_I2C_SCL, true);
    GPIO_ConfigurePin(GPIO_PORT_2, (GPIO_PIN)4, INPUT_PULLUP, PID_I2C_SDA, true);
    GPIO_ConfigurePin(GPIO_PORT_0, (GPIO_PIN)7, INPUT, PID_GPIO, true);
    GPIO_ConfigurePin(GPIO_PORT_1, (GPIO_PIN)5, INPUT_PULLDOWN, PID_GPIO, false);
    GPIO_ConfigurePin(GPIO_PORT_0, (GPIO_PIN)1, INPUT, (GPIO_FUNCTION)PID_ADC, false);
    for (uint32_t i = 0; i != 7; i++)
        GPIO_ConfigurePin((GPIO_PORT)display_low_pins[i].port, (GPIO_PIN)display_low_pins[i].pin, INPUT_PULLDOWN,
                          PID_GPIO, false);
    for (uint32_t i = 0; i != 6; i++)
        GPIO_ConfigurePin((GPIO_PORT)display_high_pins[i].port, (GPIO_PIN)display_high_pins[i].pin, INPUT_PULLDOWN,
                          PID_GPIO, false);

    /* timer0 */
    SetBits16(CLK_PER_REG, TMR_ENABLE, 1);
    SetBits16(CLK_PER_REG, TMR_DIV, 3);
    SetWord16(TIMER0_RELOAD_M_REG, 0);
    SetWord16(TIMER0_RELOAD_N_REG, 0);
    timer0_init(1, 0, 0);
    /* timer0_register_callback: TIMER0_callback (0x07fd569c) */
    *(void (**)(void))(void *)((uint8_t *)(void *)&merged_globals_5650 + 0x4c) = dispatch_timed_state_callbacks;
    SetWord16(TIMER0_ON_REG, 300);

    quiesce_irq_source_wait_pending_bit_at_c4b0();

    /* SPI flash interface: chip select P0_3, inactive; spi_enable; master, 8-bit, mode 0. */
    ((volatile struct sr08_merged_globals_5650 *)&merged_globals_5650)->spi_flash_cs_select = true;
    SetWord16(P0_DATA_REG + 2, 1 << 3);
    uint32_t saved = global_int_disable();
    SetBits16(CLK_PER_REG, SPI_ENABLE, 1);
    global_int_restore(saved);
    SetWord16(SPI_CTRL_REG, 1 << 3);
    SetBits16(SPI_CTRL_REG1, SPI_FIFO_MODE, 0);
    SetWord16(SPI_CLEAR_INT_REG, 1);
    SetBits16(SPI_CTRL_REG, SPI_ON, 1);

    /* GPIO_set_pad_latch_en(true) */
    SetBits16(SYS_CTRL_REG, PAD_LATCH_EN, 1);
}
