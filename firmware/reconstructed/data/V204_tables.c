/* Recovered V204 lookup/literal data. Addresses refer to payload base 0x07fc0000.
 * Source values and extents are observed directly in V204.payload.bin.
 */
#include <stddef.h>
#include <stdint.h>

#define V204_DATA_AT(address) __attribute__((used, aligned(1), section(".v204.data." #address)))

/* Literal bytes referenced by the caller at 0x07fc53d2. */
const uint8_t v204_data_07fc5480[4] V204_DATA_AT(07fc5480) = {0x2e, 0x0a, 0x00, 0x00};

/* Byte lookup referenced at 0x07fcd628/0x07fcd62a and
 * 0x07fcd6c8/0x07fcd6ca in process_sensor_frame_and_update_state. */
const uint8_t v204_data_07fcf23c[24] V204_DATA_AT(07fcf23c) = {0x00, 0x03, 0x06, 0x09, 0x0c, 0x0f, 0x12, 0x15,
                                                               0x19, 0x1c, 0x1f, 0x22, 0x25, 0x28, 0x2b, 0x2e,
                                                               0x31, 0x35, 0x38, 0x3b, 0x3e, 0x41, 0x44, 0x47};

/* Byte lookup referenced at 0x07fce046/0x07fce048 and
 * 0x07fce102/0x07fce104 in process_sensor_frame_and_update_state. */
const uint8_t v204_data_07fcf2dc[68] V204_DATA_AT(07fcf2dc) = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11,
    0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23,
    0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35,
    0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x43, 0x44, 0x45, 0x46, 0x47};

/* Six unowned bytes in the literal pool referenced by 0x07fc1de6. */
const uint8_t v204_data_07fcfacc[6] V204_DATA_AT(07fcfacc) = {0x57, 0x08, 0x2e, 0x00, 0x20, 0x47};

/* Cortex-M0 vectors through IRQ 23. Handler words retain the Thumb bit stored
 * in V204; the external ROM target is kept as observed. */
struct v204_vector_table {
    uint32_t initial_stack_pointer;
    uint32_t reset_handler;
    uint32_t nmi_handler;
    uint32_t hardfault_handler;
    uint32_t reserved_4_through_10[7];
    uint32_t svcall_handler;
    uint32_t reserved_12_through_13[2];
    uint32_t pend_sv_handler;
    uint32_t systick_handler;
    uint32_t irq_handlers[24];
};
typedef char v204_vector_irq_offset_must_be_64[(offsetof(struct v204_vector_table, irq_handlers) == 64) ? 1 : -1];
typedef char v204_vector_table_size_must_be_160[(sizeof(struct v204_vector_table) == 160) ? 1 : -1];

const struct v204_vector_table v204_vector_table V204_DATA_AT(07fc0000) = {
    .initial_stack_pointer = 0x07fd2668u,
    .reset_handler = 0x07fc0145u,
    .nmi_handler = 0x07fc014du,
    .hardfault_handler = 0x07fc0165u,
    .reserved_4_through_10 = {0},
    .svcall_handler = 0x07fc017du,
    .reserved_12_through_13 = {0},
    .pend_sv_handler = 0x07fc017fu,
    .systick_handler = 0x07fc0181u,
    .irq_handlers =
        {
            [0] = 0x07fc1c19u,  /* configure_peripheral_and_wait_for_status_flags */
            [1] = 0x07fcb981u,  /* dispatch_pending_peripheral_operations */
            [2] = 0x07f0271du,  /* external ROM handler */
            [3] = 0x07fc1ea5u,  /* poll_state_nibble_clear_state_specific_at_1ea4 */
            [4] = 0x07fc0183u,  /* nonreturning_spin_loop_at_0182 */
            [5] = 0x07fc0183u,  /* nonreturning_spin_loop_at_0182 */
            [6] = 0x07fc1c0du,  /* write_one_to_peripheral_status_register */
            [7] = 0x07fc0183u,  /* nonreturning_spin_loop_at_0182 */
            [8] = 0x07fc0183u,  /* nonreturning_spin_loop_at_0182 */
            [9] = 0x07fc0183u,  /* nonreturning_spin_loop_at_0182 */
            [10] = 0x07fc1cddu, /* update_selected_hot_bit_10 */
            [11] = 0x07fc1ce7u, /* update_selected_hot_bit_11 */
            [12] = 0x07fc1cf1u, /* update_selected_hot_bit_12 */
            [13] = 0x07fc1cfbu, /* update_selected_hot_bit_13 */
            [14] = 0x07fc1d05u, /* update_selected_hot_bit_14 */
            [15] = 0x07fc1e61u, /* process_radio_state_if_active */
            [16] = 0x07fc1f35u, /* clear_interrupt_status_bits_dispatch_corresponding_at_1f34 */
            [17] = 0x07fc0183u, /* nonreturning_spin_loop_at_0182 */
            [18] = 0x07fc0183u, /* nonreturning_spin_loop_at_0182 */
            [19] = 0x07fc0183u, /* nonreturning_spin_loop_at_0182 */
            [20] = 0x07fc0183u, /* nonreturning_spin_loop_at_0182 */
            [21] = 0x07fc0183u, /* nonreturning_spin_loop_at_0182 */
            [22] = 0x07fc0183u, /* nonreturning_spin_loop_at_0182 */
            [23] = 0x07fc0183u, /* nonreturning_spin_loop_at_0182 */
        },
};

/* Two startup zeroing records. Each callback receives the first three words;
 * this callback ignores the first argument and clears byte_count bytes at
 * destination. The last field stores an untagged Thumb callback address;
 * reset code sets bit 0 before branching to it. */
struct v204_startup_callback_record {
    uint32_t unused_argument;
    uint32_t destination;
    uint32_t byte_count;
    uint32_t callback;
};
typedef char v204_startup_destination_offset_must_be_4[(offsetof(struct v204_startup_callback_record, destination) == 4)
                                                           ? 1
                                                           : -1];
typedef char
    v204_startup_count_offset_must_be_8[(offsetof(struct v204_startup_callback_record, byte_count) == 8) ? 1 : -1];
typedef char
    v204_startup_callback_offset_must_be_12[(offsetof(struct v204_startup_callback_record, callback) == 12) ? 1 : -1];
typedef char v204_startup_record_size_must_be_16[(sizeof(struct v204_startup_callback_record) == 16) ? 1 : -1];
const struct v204_startup_callback_record v204_startup_records[2] V204_DATA_AT(07fd0340) = {
    {0x07fd05f0u, 0x07fd05f0u, 0x00002078u, 0x07fcd0bau}, {0x07fd50c0u, 0x07fd50c0u, 0x00000748u, 0x07fcd0bau}};
