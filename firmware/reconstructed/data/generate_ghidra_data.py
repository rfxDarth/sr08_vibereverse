#!/usr/bin/env python3
"""Emit C byte arrays for Ghidra-classified V204 data not declared by hand."""
from __future__ import annotations

import argparse
import csv
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PAYLOAD = ROOT / "decompiled" / "V204.payload.bin"
UNITS = ROOT / "decompiled" / "V204_code_units.tsv"
OUTPUT_C = Path(__file__).with_name("V204_auto_data.c")
OUTPUT_LD = Path(__file__).with_name("V204_data_sections.ld")
CATALOG = ROOT / "reconstructed" / "exact_clang18" / "V204_function_names.csv"
BASE = 0x7FC0000
MANUAL = ((0x7FC0000, 0x7FC009F), (0x7FC5480, 0x7FC5483),
          (0x7FCF23C, 0x7FCF253), (0x7FCF2DC, 0x7FCF31F),
          (0x7FCFACC, 0x7FCFAD1), (0x7FD0340, 0x7FD035F))
# REA inspection identifies this unclaimed tail as constants, ROM pointers,
# lookup tables, and image padding rather than executable code.
DATA_OVERRIDE_RANGES = ((0x7FCF154, 0x7FD063F),)
TYPED_DATA_VIEWS = {
    0x07FC90DC: (
        "v204_calendar_conversion_constants",
        "Divisors, signed calendar adjustments, and common-year month lengths used by convert_timestamp_to_calendar_fields.",
        "union sr08_calendar_conversion_constants",
        40,
    ),
    0x07FC4856: (
        "v204_clock_literal_pool",
        "Literal pool for update_clock_and_process_events; register/state pointers and day-length constants are typed while uncertain values keep offset-based names.",
        "union sr08_clock_literal_pool",
        82,
    ),
    0x07FC3452: (
        "v204_registration_slot_literals",
        "Registration-slot table pointer, sentinel, and event-ID base used by the slot allocation and replacement routines.",
        "union sr08_registration_slot_literal_view",
        14,
    ),
    0x07FC88CA: (
        "v204_radio_range_literal_pool",
        "Device-control and cycle-state pointers plus the default, minimum, and maximum values used by radio range checks.",
        "union sr08_radio_range_literal_pool",
        22,
    ),
    0x07FC832A: (
        "v204_radio_state_literal_pool",
        "Device-control and radio-profile state pointers plus two parameters passed to the radio update helper.",
        "union sr08_radio_state_literal_pool",
        18,
    ),
    0x07FC2E4A: (
        "v204_device_setting_literal_pool",
        "Pointer to the device-setting record shared by value readers and setters.",
        "union sr08_device_setting_literal_pool",
        6,
    ),
    0x07FC87EA: (
        "v204_radio_dispatch_literal_pool",
        "Radio action-state pointer and send_device_command_pair callback used by the radio-state dispatcher.",
        "union sr08_radio_dispatch_literal_pool",
        10,
    ),
    0x07FCF6E2: (
        "v204_hid_profile_data_region",
        "Mixed constant pool with a typed HID callback map, 23 HID attribute descriptors, and four adjacent handler addresses; unclassified prefix and tail remain byte arrays.",
        "union sr08_hid_profile_data_region",
        1002,
    ),
}
HID_CALLBACK_MAP = (
    (0x00000C13, 0x07FC6999),
    (0x00000C15, 0x07FC6DBD),
    (0x0000FC04, 0x07FCC119),
    (0x0000FC05, 0x07FCC415),
)
HID_ATTRIBUTE_UUIDS = (
    0x2800, 0x2802, 0x2803, 0x2A4A, 0x2803, 0x2A4C, 0x2803, 0x2A4B,
    0x2907, 0x2803, 0x2A4E, 0x2803, 0x2A22, 0x2902, 0x2803, 0x2A32,
    0x2803, 0x2A33, 0x2902, 0x2803, 0x2A4D, 0x2908, 0x2902,
)
HID_HANDLER_ADDRESSES = (0x07FC77FD, 0x07FC7527, 0x07FC7525, 0x07FC74D5)
HID_UUID_C_NAMES = {
    0x2800: "SR08_ATT_UUID_PRIMARY_SERVICE",
    0x2802: "SR08_ATT_UUID_INCLUDE",
    0x2803: "SR08_ATT_UUID_CHARACTERISTIC",
    0x2902: "SR08_ATT_UUID_CLIENT_CONFIGURATION",
    0x2907: "SR08_ATT_UUID_EXTENDED_REPORT_REFERENCE",
    0x2908: "SR08_ATT_UUID_REPORT_REFERENCE",
    0x2A22: "SR08_HID_UUID_BOOT_KEYBOARD_INPUT",
    0x2A32: "SR08_HID_UUID_BOOT_KEYBOARD_OUTPUT",
    0x2A33: "SR08_HID_UUID_BOOT_MOUSE_INPUT",
    0x2A4A: "SR08_HID_UUID_INFORMATION",
    0x2A4B: "SR08_HID_UUID_REPORT_MAP",
    0x2A4C: "SR08_HID_UUID_CONTROL_POINT",
    0x2A4D: "SR08_HID_UUID_REPORT",
    0x2A4E: "SR08_HID_UUID_PROTOCOL_MODE",
}
HID_CALLBACK_C_NAMES = {
    0x07FC6999: "SR08_HID_CALLBACK_ALLOCATE_AND_SEND_TYPED_MESSAGE",
    0x07FC6DBD: "SR08_HID_CALLBACK_DISPATCH_ATTRIBUTE_REQUEST",
    0x07FCC119: "SR08_HID_CALLBACK_SET_ATTRIBUTE_VALUE",
    0x07FCC415: "SR08_HID_CALLBACK_STORE_ATTRIBUTE_AND_NOTIFY",
}
HID_HANDLER_C_NAMES = {
    0x07FC77FD: "SR08_HID_HANDLER_BUILD_MEASUREMENT_PACKET",
    0x07FC7527: "SR08_HID_HANDLER_RELEASE_OBJECT_HANDLE",
    0x07FC7525: "SR08_HID_HANDLER_RETURN_WITHOUT_ACTION",
    0x07FC74D5: "SR08_HID_HANDLER_CLEAR_SELECTED_SLOT_RECORDS",
}
CLOCK_LITERAL_WORDS = {
    0x02: 0x400000FC,
    0x06: 0x4000001C,
    0x0A: 0x07FD0858,
    0x0E: 0x06DDD000,
    0x12: 0x07FD557C,
    0x16: 0x07FD1F8C,
    0x1A: 0x07FD1EA4,
    0x1E: 0x07FD1E28,
    0x32: 0x00015180,
    0x36: 0x0001517F,
}
CALENDAR_CONSTANT_WORDS = {
    0x00: 86400,
    0x04: 31536000,
    0x08: 1969,
    0x0C: -365,
    0x10: -86400,
    0x14: -1900,
    0x24: -3600,
}
COMMON_YEAR_MONTH_LENGTHS = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
EXTRA_FUNCTION_SECTIONS = (
    (0x07FC6060, "dispatch_switch_default_case_from_5fb0"),
    (0x07FC60DA, "return_from_switch_dispatch_5fb0"),
    (0x07FC65FC, "return_from_switch_dispatch_65d0"),
    (0x07FC6614, "dispatch_switch_default_case_from_65d0"),
    (0x07FC0A94, "dispatch_indirect_record_path_0a2a"),
)

# Sections with embedded strings whose contents and purpose are clear from
# nearby code or the string itself. The surrounding bytes remain untyped when
# the section also contains literals or unrelated data.
DATA_LABELS = {
    0x07FC90DC: (
        "v204_calendar_conversion_constants",
        "Divisors and month lengths loaded by convert_timestamp_to_calendar_fields at 0x07fc9004.",
    ),
    0x07FC4856: (
        "v204_clock_literal_pool",
        "Literal data referenced by the clock and periodic-work routine at 0x07fc44a8.",
    ),
    0x07FC3452: (
        "v204_registration_slot_literals",
        "Literal values used by the ten-entry registration-slot table helpers at 0x07fc33e4 and 0x07fc3410.",
    ),
    0x07FC88CA: (
        "v204_radio_range_literal_pool",
        "Literal values used by radio-state and range validation helpers around 0x07fc8500-0x07fc8878.",
    ),
    0x07FC832A: (
        "v204_radio_state_literal_pool",
        "Literal values used by configure_radio_state_and_send_command_6a and the radio-state dispatch helpers.",
    ),
    0x07FC2E4A: (
        "v204_device_setting_literal_pool",
        "Literal pointer loaded by device-setting readers and setters around 0x07fc2da8.",
    ),
    0x07FC87EA: (
        "v204_radio_dispatch_literal_pool",
        "Radio-state and command-callback literals used by helpers at 0x07fc86b8 and 0x07fc8774.",
    ),
    0x07FCF6E2: (
        "v204_hid_profile_data_region",
        "HID profile constants begin at offset 0x9e; the typed overlay identifies the callback map, 23 attribute descriptors, and four handler addresses.",
    ),
    0x07FCBFCA: (
        "v204_gatt_service_registration_literals",
        "Literal pool for register_custom_gatt_service_and_initialize_state; the 16-byte block at 0x07fcbfcc is copied into the allocated ATT table, and following words provide fixed table fields.",
    ),
    0x07FC30D2: ("v204_app_hogpd_create_db_name", 'Contains "app_hogpd_create_db".'),
    0x07FC32A6: ("v204_record_copy_format", 'Contains the diagnostic format "rcp %d,%d".'),
    0x07FC3B20: ("v204_ble_diagnostic_text", 'Includes "ble send:%d" and "malloc failure".'),
    0x07FC3D1A: ("v204_state_transition_diagnostic_text",
                 'Includes state-transition and invalid-state diagnostic strings.'),
    0x07FC501E: ("v204_counter_diagnostic_format", 'Contains the format string "c=%d".'),
    0x07FC5458: ("v204_unsupported_printf_character_message",
                 'Contains "FATAL: unsupported printf character: ".'),
    0x07FC5EEE: ("v204_fault_status_labels", 'Contains the "HF STATUS" and "NMI STATUS" labels.'),
    0x07FC5F94: ("v204_phone_key_handle_name", 'Contains the key name "find_phone_key_handle".'),
    0x07FC623C: ("v204_parameter_error_text", 'Contains the parameter error format "Pup params error=%x".'),
    0x07FC632E: ("v204_copy_diagnostic_format", 'Contains the format string "cp %d,%d,%d".'),
    0x07FC84E4: ("v204_sensor_diagnostic_format", 'Contains the sensor diagnostic format "3918_f_e %d".'),
    0x07FC8FF6: ("v204_device_model_name", 'Contains the device model string "SR08".'),
    0x07FCA5B4: ("v204_key_diagnostic_format", 'Contains the diagnostic format "k=%d".'),
    0x07FCB1A4: ("v204_hex_byte_format_data", 'Contains the byte format string "%02X ".'),
    0x07FCB598: ("v204_event_id_diagnostic_format", 'Contains the diagnostic format "e id=%d".'),
    0x07FCB742: ("v204_no_data_label", 'Contains the label "nodata".'),
    0x07FCC6E0: ("v204_upload_diagnostic_format", 'Contains the upload format "up %d,%d,%d".'),
    0x07FCC872: ("v204_sensor_check_diagnostic_text",
                 'Contains sensor-check result and start diagnostic formats.'),
    0x07FCC9FE: ("v204_hid_timer_handler_metadata",
                 'Contains the callback name "vtimer_enable_hid_timer_handler".'),
    0x07FCA0BE: ("v204_system_diagnostic_text",
                 'Includes version, NVDS MAC, and sensor-state diagnostic format strings.'),
}

# Verified NUL-terminated strings embedded inside otherwise mixed data spans.
# Each entry includes the terminator in its emitted C object.
DATA_STRINGS = {
    0x07FCF6DA: ("v204_soc_model_name", "DA14585", "Embedded SoC model identifier."),
    0x07FD0310: ("v204_time_value_format", "time %d\n", "Time-value diagnostic format string."),
    0x07FD0319: ("v204_two_value_format", "%s,%d\n", "Two-value diagnostic format string."),
    0x07FD0320: ("v204_acknowledgement_format", "%d,ack0x%x\n",
                 "Acknowledgement diagnostic format string."),
    0x07FD032C: ("v204_app_button_enable_name", "app_button_enable",
                 "Configuration name for enabling the app button."),
}

# Typed words whose use is established by their consumers. Keep them out of
# the anonymous byte arrays emitted for the remaining classified data.
TYPED_WORDS = {
    0x07FCBFDC: (
        "v204_gatt_characteristic_declaration_uuid",
        "ATT characteristic declaration UUID copied to byte offset 24 of the service attribute table.",
        "0x00002803u",
        0x00002803,
    ),
    0x07FC0600: (
        "v204_stream_cursor_index_base",
        "Base added to the stream cursor index by the buffer cursor updater.",
        "SR08_STREAM_CURSOR_INDEX_BASE", 0x00000216),
    0x07FC0604: (
        "v204_stream_progress_threshold",
        "26-bit progress threshold compared with the stream cursor delta.",
        "SR08_STREAM_PROGRESS_THRESHOLD", 0x03FFFFFF),
    0x07FC30F0: ("v204_display_code_record_message_id",
                 "Message ID literal loaded by submit_display_code_record_for_fd.",
                 "SR08_DISPLAY_CODE_RECORD_MESSAGE_ID", 0x00000D1B),
    0x07FC321C: ("v204_per_slot_state_record_type",
                 "PC-relative message-type literal loaded by publish_per_slot_state_byte.",
                 "SR08_PER_SLOT_STATE_RECORD_TYPE", 0x00000E02),
    0x07FC5758: ("v204_crc32_reflected_polynomial",
                 "Reflected CRC-32 polynomial consumed by crc32_update_one_byte.",
                 "0xedb88320u", 0xEDB88320),
    0x07FCB90C: ("v204_ring_s_peripheral_init_value",
                 "Value stored to MMIO register 0x40000080 during ring initialization.",
                 "0x0754054cu", 0x0754054C),
    0x07FCB914: ("v204_ring_s_sensor_init_value",
                 "Halfword stored to MMIO register 0x5000286a during ring initialization.",
                 "0x0000e6ebu", 0x0000E6EB),
    0x07FC0140: ("v204_initial_stack_top",
                 "Initial stack pointer loaded by the reset entry at 0x07fc0130.",
                 "0x07fd2668u", 0x07FD2668),
}

# Six indexed words consumed by the readiness evaluators. Each selected word
# is dereferenced at offset 0x10; the full pointee layout is still unknown.
TYPED_WORD_ARRAYS = {
    0x07FCBFE0: (
        "v204_gatt_service_literal_words",
        "77 aligned PC-relative literal words loaded while initializing fixed fields in the ATT service table; paired halfwords are retained in one word where the code uses both.",
        "uint32_t",
        (
            0x000A0009, 0x00008082, 0x0000CAA8, 0x000041A6, 0x00004021, 0x000091C6,
            0x000056F9, 0x0000B954, 0x0000CC34, 0x00008651, 0x00007242, 0x000049F0,
            0x00005EC3, 0x00004B5F, 0x00008804, 0x00004234, 0x00005AF0, 0x00004FD4,
            0x00080001, 0x00006C53, 0x0000DB25, 0x000047A1, 0x000045FE, 0x0000A022,
            0x00007C92, 0x0000FB33, 0x0000DA31, 0x00009D84, 0x0000B9A3, 0x000049D8,
            0x00009183, 0x0000855B, 0x0000673F, 0x00008009, 0x00009CB2, 0x00004578,
            0x000071E8, 0x0000D516, 0x00004CA1, 0x00009116, 0x000057D0, 0x0000B17B,
            0x00000201, 0x00002902, 0x00005F78, 0x0000DF94, 0x0000798C, 0x000046F5,
            0x0000990A, 0x0000B3EB, 0x00006A06, 0x00005C88, 0x000064B4, 0x0000E8B5,
            0x00000DE5, 0x0000401B, 0x0000A21D, 0x0000ACC8, 0x0000DB3B, 0x0000913A,
            0x000042C3, 0x0000DFDD, 0x000077BE, 0x00004D9C, 0x00008454, 0x00008F87,
            0x00005267, 0x0000FB3B, 0x00008002, 0x0000B7DE, 0x00001EEA, 0x0000823D,
            0x000043BB, 0x0000A3AF, 0x0000C490, 0x00003DFC, 0x0000E23C,
        ),
    ),
    0x07FC05E8: (
        "v204_readiness_lookup_context_words",
        "Six lookup words used by readiness evaluators; each selected value is dereferenced at offset 0x10.",
        "uintptr_t",
        (0x07FD7E2C, 0x07FD7918, 0x07FD764C, 0x07FD7E4C, 0x07FD79CF, 0x07FD7FB4),
    ),
}

# Fixed pointer literals whose uses and pointee types are established.
TYPED_POINTERS = {
    0x07FCC114: (
        "v204_hid_service_descriptor_template",
        "Pointer installed at service-context offset 4 after ATT registration; points to the typed HID service-template view at 0x07fcf780.",
        "const struct sr08_hid_service_descriptor_template",
        0x07FCF780,
    ),
    0x07FC33E0: (
        "v204_shared_state_bytes_for_slot_helpers",
        "Shared state base used by per-slot records, compact sensor requests, and timing-state updates.",
        "volatile uint8_t",
        0x07FD56D0,
    ),
    0x07FCCF7C: (
        "v204_uart_registers_50001100",
        "UART register block used by transmit_uart_buffer; status is read as a halfword at register index 10.",
        "volatile uint16_t",
        0x50001100,
    ),
    0x07FC1EE4: (
        "v204_state_nibble_registers",
        "MMIO base 0x50001104 read and updated as halfwords at offsets 0 and 4 by poll_state_nibble_clear_state_specific_at_1ea4.",
        "volatile uint16_t",
        0x50001104,
    ),
    0x07FCA534: (
        "v204_sensor_conversion_request_register",
        "32-bit MMIO register set to one and polled until zero by the sensor measurement state cycle.",
        "volatile uint32_t",
        0x400000FC,
    ),
    0x07FCCA64: (
        "v204_cycle_control_state",
        "Cycle-control state read and updated by advance_state_cycle_and_dispatch_action.",
        "volatile struct sr08_cycle_control_state",
        0x07FD1EA4,
    ),
    0x07FC2F28: (
        "v204_submission_queue_from_event_dispatch",
        "Submission queue state loaded by the sensor/display event dispatcher; aliases the record-helper queue at 0x07fd1f1c.",
        "volatile struct sr08_submission_queue_state",
        0x07FD1F1C,
    ),
    0x07FC2F88: (
        "v204_submission_queue_from_record_helpers",
        "Submission queue state used by ring-record insertion and search helpers; aliases the event-dispatch queue.",
        "volatile struct sr08_submission_queue_state",
        0x07FD1F1C,
    ),
    0x07FC5668: (
        "v204_shared_context_bytes_for_display_character",
        "Shared context base loaded by increment_character_by_ten_wrap_at_d; its byte at offset 0x95 is updated there.",
        "volatile uint8_t",
        0x07FD557C,
    ),
    0x07FCAC74: (
        "v204_shared_context_bytes_for_signed_display",
        "Shared context base loaded by format_signed_state_byte_as_three_display_digits; it reads the signed byte at offset 0x95.",
        "volatile uint8_t",
        0x07FD557C,
    ),
    0x07FCAC78: (
        "v204_shared_state_bytes_for_signed_formatter",
        "Shared state base loaded by format_signed_state_byte_as_three_display_digits; digits are written at offset 0x42.",
        "volatile uint8_t",
        0x07FD56D0,
    ),
    0x07FC737C: (
        "v204_shared_state_bytes_for_packet_display_helpers",
        "Shared state base used by the incoming-packet handler and display-code lookup helper.",
        "volatile uint8_t",
        0x07FD56D0,
    ),
    0x07FC867C: (
        "v204_shared_control_state_bytes_for_radio_setup",
        "Shared control-state base used by configure_radio_state_and_send_command_6a.",
        "volatile uint8_t",
        0x07FD1E28,
    ),
    0x07FC8834: (
        "v204_measurement_range_state_bytes",
        "State base shared by the bounded record scanner and range updater; a ring-buffer descriptor begins at offset 0x28.",
        "volatile uint8_t",
        0x07FD1F8C,
    ),
    0x07FCAAE4: (
        "v204_shared_control_state_bytes_for_display_timing",
        "Shared control-state base used by display timing and value formatting helpers.",
        "volatile uint8_t",
        0x07FD1E28,
    ),
    0x07FCBBF0: (
        "v204_shared_context_bytes_for_state_switch",
        "Shared context base used when clearing the mode flag and switching display state.",
        "volatile uint8_t",
        0x07FD557C,
    ),
    0x07FC522C: (
        "v204_shared_context_bytes_for_step_accumulator",
        "Shared context base used by the step accumulator; the main total is at offset 0x38.",
        "volatile uint8_t",
        0x07FD557C,
    ),
    0x07FCAF98: (
        "v204_shared_context_bytes_for_step_display",
        "Shared context base used by the step display renderer; it formats the main total at offset 0x38.",
        "volatile uint8_t",
        0x07FD557C,
    ),
    0x07FC20EC: (
        "v204_radio_device_state_pointer",
        "Radio-state singleton pointer loaded by process_radio_state_if_active.",
        "volatile struct sr08_device_state",
        0x07FD5650,
    ),
    0x07FC64A4: (
        "v204_indexed_record_table",
        "Writable 122-byte indexed-record blocks used by store_byte_in_table_by_high_index and the measurement-status updater.",
        "volatile struct sr08_indexed_record_block",
        0x07FD53E4,
    ),
    0x07FCD9C4: (
        "v204_record_operation_config",
        "Configuration prefix read by applies_pending_record_operation_item_while_at_d99c.",
        "const struct sr08_record_operation_config_prefix",
        0x07FD0360,
    ),
    0x07FCB908: (
        "v204_ring_s_register_40000080",
        "MMIO register pointer used by ring sensor/display initialization.",
        "volatile uint32_t",
        0x40000080,
    ),
    0x07FCB910: (
        "v204_ring_s_register_5000286a",
        "Halfword MMIO register pointer used by ring sensor/display initialization.",
        "volatile uint16_t",
        0x5000286A,
    ),
    0x07FCB918: (
        "v204_ring_s_register_50002600",
        "Halfword MMIO register pointer used by ring sensor/display initialization.",
        "volatile uint16_t",
        0x50002600,
    ),
    0x07FCB91C: (
        "v204_ring_s_register_50002c06",
        "Halfword MMIO register pointer used by ring sensor/display initialization.",
        "volatile uint16_t",
        0x50002C06,
    ),
    0x07FCB920: (
        "v204_ring_s_register_50002810",
        "Halfword MMIO register pointer used by ring sensor/display initialization.",
        "volatile uint16_t",
        0x50002810,
    ),
    0x07FCB168: (
        "v204_dispatch_records",
        "32-record RAM table scanned by both callback dispatchers.",
        "volatile struct sr08_dispatch_record",
        0x07FD50C0,
    ),
    0x07FCB16C: (
        "v204_callback_table_for_type_26",
        "Callback address table selected for record type 0x26.",
        "const uintptr_t",
        0x07FCF89C,
    ),
    0x07FCB170: (
        "v204_callback_table_for_type_fd",
        "Callback address table selected for record type 0xfd.",
        "const uintptr_t",
        0x07FCF6F0,
    ),
    0x07FCB174: (
        "v204_callback_table_for_type_fc",
        "Callback address table selected for record type 0xfc.",
        "const uintptr_t",
        0x07FCF750,
    ),
}

TYPED_FUNCTION_POINTERS = {
    0x07FC013C: (
        "v204_initial_startup_hook",
        "Sensor-measurement initialization entry called by the startup thunk at 0x07fc0138.",
        0x07FC98D5,
    ),
}

STARTUP_EXCEPTION_VECTORS = (
    0x07FC0184,
    "v204_startup_exception_vectors",
    "Function entries loaded by startup and exception dispatch paths.",
    (
        ("initialization_hook", "void (*)(void)", 0x07FCF11D),
        ("reset_entry", "void (*)(void)", 0x07FC0131),
        ("nmi_entry", "void (*)(const uint32_t *)", 0x07FC1DF9),
        ("hardfault_entry", "void (*)(const uint32_t *)", 0x07FC1D89),
    ),
)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--exact-csv", action="append", type=Path, default=[],
                        help="include an exact-function CSV and reserve its emitted span")
    args = parser.parse_args()
    payload = PAYLOAD.read_bytes()
    hid_blob = payload[0x07FCF6E2 - BASE:0x07FCF6E2 - BASE + 1002]

    def blob_word(offset: int) -> int:
        return int.from_bytes(hid_blob[offset:offset + 4], "little")

    actual_callback_map = tuple(
        (blob_word(0x7E + index * 8), blob_word(0x82 + index * 8))
        for index in range(4)
    )
    if actual_callback_map != HID_CALLBACK_MAP:
        raise SystemExit("HID profile callback map differs from the reviewed V204 layout")
    if (blob_word(0x9E) != 0x07FCF760 or blob_word(0xA2) != 4):
        raise SystemExit("HID service template callback-map pointer/count changed")
    actual_hid_uuids = tuple(blob_word(0xA6 + index * 12) & 0xFFFF
                             for index in range(len(HID_ATTRIBUTE_UUIDS)))
    if actual_hid_uuids != HID_ATTRIBUTE_UUIDS:
        raise SystemExit("HID service attribute UUID sequence changed")
    actual_handler_addresses = tuple(blob_word(0x1BA + index * 4) for index in range(4))
    if actual_handler_addresses != HID_HANDLER_ADDRESSES:
        raise SystemExit("HID service handler-address table changed")
    clock_blob = payload[0x07FC4856 - BASE:0x07FC4856 - BASE + 82]
    for offset, expected_value in CLOCK_LITERAL_WORDS.items():
        actual_value = int.from_bytes(clock_blob[offset:offset + 4], "little")
        if actual_value != expected_value:
            raise SystemExit(f"clock literal pool word at +0x{offset:02x} changed")
    calendar_blob = payload[0x07FC90DC - BASE:0x07FC90DC - BASE + 40]
    for offset, expected_value in CALENDAR_CONSTANT_WORDS.items():
        actual_value = int.from_bytes(calendar_blob[offset:offset + 4], "little", signed=True)
        if actual_value != expected_value:
            raise SystemExit(f"calendar constant at +0x{offset:02x} changed")
    actual_month_lengths = tuple(calendar_blob[0x18:0x24])
    if actual_month_lengths != COMMON_YEAR_MONTH_LENGTHS:
        raise SystemExit("common-year month-length table changed")
    occupied: set[int] = set()
    for start, end in MANUAL:
        occupied.update(range(start, end + 1))
    mapped: set[int] = set()
    with UNITS.open(newline="") as stream:
        for row in csv.DictReader(stream, delimiter="\t"):
            if row["kind"] == "data":
                mapped.update(range(int(row["start"], 16),
                                    int(row["end"], 16) + 1))
    for start, end in DATA_OVERRIDE_RANGES:
        mapped.update(range(start, end + 1))
    with CATALOG.open(newline="") as stream:
        readable_symbols = {
            int(row["address"], 16): row["readable_symbol"]
            for row in csv.DictReader(stream)
        }
    expected_overlap = (set(range(0x7FC0000, 0x7FC00A0)) |
                        set(range(0x7FD0340, 0x7FD0360)))
    for data_start, data_end in DATA_OVERRIDE_RANGES:
        for manual_start, manual_end in MANUAL:
            first = max(data_start, manual_start)
            last = min(data_end, manual_end)
            if first <= last:
                expected_overlap.update(range(first, last + 1))
    if mapped & occupied != expected_overlap:
        raise SystemExit("classified-data overlap with typed sections changed")
    if any(address < BASE or address >= BASE + len(payload)
           for address in mapped):
        raise SystemExit("data-unit address falls outside V204.payload.bin")

    exact_functions: list[tuple[int, int, str]] = []
    code_addresses: set[int] = set()
    for csv_path in args.exact_csv:
        with csv_path.open(newline="") as stream:
            for row in csv.DictReader(stream):
                if row.get("status") != "exact":
                    continue
                start = int(row["address"], 16)
                code = bytes.fromhex(row["compiled_hex"])
                size_field = row.get("range_size") or row.get("target_size")
                pointer_globals = int(row.get("pointer_globals") or "0")
                # Data-literal candidates include their pinned pointer globals
                # in compiled_hex, while range_size records the function body.
                if (size_field and not pointer_globals
                        and int(size_field) != len(code)):
                    raise SystemExit(f"{csv_path}: exact row {row['address']} span metadata "
                                     f"does not match emitted bytes")
                if not code or payload[start - BASE:start - BASE + len(code)] != code:
                    raise SystemExit(f"{csv_path}: exact row {row['address']} failed payload check")
                span = set(range(start, start + len(code)))
                if code_addresses & span:
                    raise SystemExit(f"overlapping exact function sections at {row['address']}")
                if occupied & span:
                    raise SystemExit(f"exact function overlaps a typed data section at {row['address']}")
                code_addresses.update(span)
                function_symbol = readable_symbols.get(start, row["function"])
                exact_functions.append((start, len(code), function_symbol))

    if len(code_addresses & mapped) != sum(
            len(set(range(start, start + size)) & mapped)
            for start, size, _ in exact_functions):
        raise SystemExit("unexpected function/data address overlap")
    skipped_data_bytes = len(code_addresses & mapped)
    addresses = set(mapped - occupied - code_addresses)
    typed_word_bytes: set[int] = set()
    for address, (symbol, _, _, _) in TYPED_WORDS.items():
        word_bytes = set(range(address, address + 4))
        if not word_bytes <= addresses:
            raise SystemExit(f"typed word {symbol} at 0x{address:08x} is not wholly classified data")
        typed_word_bytes.update(word_bytes)
    for address, (symbol, _, _, expected_values) in TYPED_WORD_ARRAYS.items():
        array_bytes = set(range(address, address + 4 * len(expected_values)))
        if not array_bytes <= addresses:
            raise SystemExit(f"typed array {symbol} at 0x{address:08x} is not wholly classified data")
        for index, expected_value in enumerate(expected_values):
            start = address - BASE + index * 4
            value = int.from_bytes(payload[start:start + 4], "little")
            if value != expected_value:
                raise SystemExit(f"typed array {symbol}[{index}] changed: 0x{value:08x}")
        typed_word_bytes.update(array_bytes)
    for address, (symbol, _, _, _) in TYPED_POINTERS.items():
        word_bytes = set(range(address, address + 4))
        if not word_bytes <= addresses:
            raise SystemExit(f"typed pointer {symbol} at 0x{address:08x} is not wholly classified data")
        typed_word_bytes.update(word_bytes)
    for address, (symbol, _, _) in TYPED_FUNCTION_POINTERS.items():
        word_bytes = set(range(address, address + 4))
        if not word_bytes <= addresses:
            raise SystemExit(f"typed function pointer {symbol} at 0x{address:08x} is not wholly classified data")
        typed_word_bytes.update(word_bytes)
    vectors_address, vectors_symbol, _, vectors = STARTUP_EXCEPTION_VECTORS
    vectors_bytes = set(range(vectors_address, vectors_address + 4 * len(vectors)))
    if not vectors_bytes <= addresses:
        raise SystemExit(f"startup vector table {vectors_symbol} is not wholly classified data")
    typed_word_bytes.update(vectors_bytes)
    addresses = sorted(addresses - typed_word_bytes)
    spans: list[tuple[int, int]] = []
    for address in addresses:
        if spans and address == spans[-1][1] + 1:
            spans[-1] = (spans[-1][0], address)
        else:
            spans.append((address, address))

    lines = [
        "/* Optional extraction of classified V204 data. The checked-in arrays",
        " * are build inputs; this generator is not part of the source build.",
        " * Unclassified bytes retain address-based names. */",
        "#include <stdint.h>",
        '#include "../include/sr08_display_record.h"',
        '#include "../include/sr08_per_slot_state_record.h"',
        '#include "../include/sr08_device_state.h"',
        '#include "../include/sr08_indexed_record_table.h"',
        '#include "../include/sr08_cycle_control_state.h"',
        '#include "../include/sr08_submission_queue_state.h"',
        '#include "../include/sr08_record_operation_config.h"',
        '#include "../include/sr08_dispatch_record.h"',
        '#include "../include/sr08_startup_exception_vectors.h"',
        '#include "../include/sr08_stream_lookup.h"',
        '#include "../include/sr08_hid_service_data.h"',
        '#include "../include/sr08_clock_literal_pool.h"',
        '#include "../include/sr08_calendar_constants.h"',
        '#include "../include/sr08_registration_slot_literals.h"',
        '#include "../include/sr08_radio_range_literals.h"',
        '#include "../include/sr08_radio_state_literals.h"',
        '#include "../include/sr08_device_setting_literals.h"',
        '#include "../include/sr08_radio_dispatch_literals.h"',
        "#define V204_AUTO_DATA(address) \\",
        "  __attribute__((used, aligned(1), section(\".v204.auto.\" #address)))",
        "",
    ]

    def append_byte_array_initializer(field: str, data: bytes, indent: str) -> None:
        lines.append(f"{indent}.{field} = {{")
        for offset in range(0, len(data), 16):
            chunk = data[offset:offset + 16]
            lines.append(indent + "    " + ", ".join(f"0x{x:02x}" for x in chunk) + ",")
        lines.append(f"{indent}}},")

    def hid_word(data: bytes, offset: int) -> int:
        return int.from_bytes(data[offset:offset + 4], "little")

    def append_hid_profile_data_view(data: bytes) -> None:
        append_byte_array_initializer("bytes_before_callback_map", data[:0x7E], "        ")
        lines.append("        .callback_map = {")
        for index in range(4):
            key = hid_word(data, 0x7E + index * 8)
            callback = hid_word(data, 0x82 + index * 8)
            callback_name = HID_CALLBACK_C_NAMES.get(callback)
            if callback_name is None:
                raise SystemExit(f"unrecognized HID callback address 0x{callback:08x}")
            lines.append(f"            {{ .key = 0x{key:08x}u, .callback_address = {callback_name} }},")
        lines.append("        },")
        callback_map_address = hid_word(data, 0x9E)
        callback_map_count = hid_word(data, 0xA2)
        lines.extend([
            "        .service = {",
            f"            .callback_map_address = 0x{callback_map_address:08x}u,",
            f"            .callback_map_count = {callback_map_count}u,",
            "            .attributes = {",
        ])
        for index in range(len(HID_ATTRIBUTE_UUIDS)):
            offset = 0xA6 + index * 12
            uuid = hid_word(data, offset) & 0xFFFF
            permissions = hid_word(data, offset + 4)
            maximum_length_and_flags = hid_word(data, offset + 8)
            uuid_name = HID_UUID_C_NAMES.get(uuid)
            if uuid_name is None:
                raise SystemExit(f"unrecognized HID attribute UUID 0x{uuid:04x}")
            lines.append(
                "                { .uuid = " + uuid_name
                + f", .permissions = 0x{permissions:08x}u,"
                + f" .maximum_length_and_flags = 0x{maximum_length_and_flags:08x}u }},"
            )
        lines.extend(["            },", "        },", "        .handler_addresses = {"])
        for index in range(4):
            address = hid_word(data, 0x1BA + index * 4)
            handler_name = HID_HANDLER_C_NAMES.get(address)
            if handler_name is None:
                raise SystemExit(f"unrecognized HID handler address 0x{address:08x}")
            lines.append(f"            {handler_name},")
        lines.append("        },")
        append_byte_array_initializer("remaining_bytes", data[0x1CA:], "        ")

    def append_clock_literal_pool_view(data: bytes) -> None:
        alignment_word = int.from_bytes(data[:2], "little")
        lines.append(f"        .instruction_alignment_word = 0x{alignment_word:04x}u,")
        pointer_fields = (
            ("sensor_conversion_request_register", 0x02, "volatile uint32_t *"),
            ("sensor_conversion_result_register", 0x06, "volatile uint32_t *"),
            ("timekeeping_state", 0x0A, "volatile struct sr08_clock_timekeeping_state *"),
            ("shared_context_bytes", 0x12, "volatile uint8_t *"),
            ("time_event_queue_bytes", 0x16, "volatile uint8_t *"),
            ("cycle_and_schedule_state", 0x1A, "volatile struct sr08_cycle_control_state *"),
            ("device_control_state_bytes", 0x1E, "volatile uint8_t *"),
            ("mode_and_display_state_bytes", 0x2A, "volatile uint8_t *"),
            ("persistent_measurement_state_bytes", 0x3E, "volatile uint8_t *"),
            ("shared_measurement_state_bytes", 0x4E, "volatile uint8_t *"),
        )
        pointer_map = {offset: (field, pointer_type) for field, offset, pointer_type in pointer_fields}
        scalar_fields = (
            (0x0E, "tick_rebase_threshold", False),
            (0x22, "schedule_threshold_4878", False),
            (0x26, "schedule_threshold_487c", False),
            (0x2E, "negative_time_adjustment_4884", True),
            (0x32, "seconds_per_day", False),
            (0x36, "last_second_of_day", False),
            (0x3A, "word_4890", False),
            (0x42, "signed_threshold_4898", True),
            (0x46, "word_489c", False),
            (0x4A, "callback_address_48a0", False),
        )
        scalar_map = {offset: (field, signed) for offset, field, signed in scalar_fields}
        for offset in range(2, 82, 4):
            value = hid_word(data, offset)
            if offset in pointer_map:
                field, pointer_type = pointer_map[offset]
                lines.append(f"        .{field} = ({pointer_type})0x{value:08x}u,")
            elif offset in scalar_map:
                field, signed = scalar_map[offset]
                if signed and value & 0x80000000:
                    magnitude = ((~value) + 1) & 0xFFFFFFFF
                    initializer = f"(-0x{magnitude:x})"
                else:
                    initializer = f"0x{value:08x}u"
                lines.append(f"        .{field} = {initializer},")
            else:
                raise SystemExit(f"unmapped clock literal pool word at +0x{offset:02x}")

    def append_calendar_conversion_constants_view(data: bytes) -> None:
        field_names = (
            "seconds_per_day",
            "seconds_per_common_year",
            "year_division_adjustment",
        )
        for index, field in enumerate(field_names):
            value = int.from_bytes(data[index * 4:index * 4 + 4], "little")
            lines.append(f"        .{field} = {value}u,")
        for offset, field in ((0x0C, "negative_days_per_common_year"),
                              (0x10, "negative_seconds_per_day"),
                              (0x14, "calendar_year_adjustment"),
                              (0x24, "negative_seconds_per_hour")):
            value = int.from_bytes(data[offset:offset + 4], "little", signed=True)
            initializer = f"(-0x{-value:x})" if value < 0 else f"{value}"
            lines.append(f"        .{field} = {initializer},")
        lines.append("        .common_year_month_lengths = {")
        month_names = (
            "SR08_DAYS_JANUARY", "SR08_DAYS_FEBRUARY_COMMON_YEAR", "SR08_DAYS_MARCH",
            "SR08_DAYS_APRIL", "SR08_DAYS_MAY", "SR08_DAYS_JUNE", "SR08_DAYS_JULY",
            "SR08_DAYS_AUGUST", "SR08_DAYS_SEPTEMBER", "SR08_DAYS_OCTOBER",
            "SR08_DAYS_NOVEMBER", "SR08_DAYS_DECEMBER",
        )
        for name in month_names:
            lines.append(f"            {name},")
        lines.append("        },")

    def append_registration_slot_literals_view(data: bytes) -> None:
        if data[:2] != b"\xc0\x46":
            raise SystemExit("registration-slot literal prefix changed")
        words = tuple(int.from_bytes(data[offset:offset + 4], "little")
                      for offset in (2, 6, 10))
        expected = (0x07FD57B8, 0x07FCC4AD, 0x00000402)
        if words != expected:
            raise SystemExit(f"registration-slot literals changed: {words!r}")
        lines.extend([
            "        .instruction_prefix = {0xc0, 0x46},",
            "        .registration_slot_values = (int32_t *)0x07fd57b8u,",
            "        .registration_slot_sentinel = (int32_t)0x07fcc4adu,",
            "        .registration_event_id_base = 0x00000402u,",
        ])

    def append_radio_range_literal_pool_view(data: bytes) -> None:
        if data[:2] != b"\xc0\x46":
            raise SystemExit("radio range literal prefix changed")
        words = tuple(int.from_bytes(data[offset:offset + 4], "little")
                      for offset in (2, 6, 10, 14, 18))
        expected = (0x07FD1E28, 0x00007FFF, 0xFFFFC000, 0x000061A8, 0x07FD1EA4)
        if words != expected:
            raise SystemExit(f"radio range literals changed: {words!r}")
        lines.extend([
            "        .instruction_prefix = {0xc0, 0x46},",
            "        .device_control_state_bytes = (volatile uint8_t *)0x07fd1e28u,",
            "        .default_range_value = 0x00007fffu,",
            "        .minimum_range_value = -0x4000,",
            "        .maximum_range_value = 0x000061a8u,",
            "        .cycle_and_schedule_state_bytes = (volatile uint8_t *)0x07fd1ea4u,",
        ])

    def append_radio_state_literal_pool_view(data: bytes) -> None:
        if data[:2] != b"\xc0\x46":
            raise SystemExit("radio state literal prefix changed")
        words = tuple(int.from_bytes(data[offset:offset + 4], "little")
                      for offset in (2, 6, 10, 14))
        expected = (0x07FD1E28, 0x00000535, 0x00000BB8, 0x07FD05AE)
        if words != expected:
            raise SystemExit(f"radio state literals changed: {words!r}")
        lines.extend([
            "        .instruction_prefix = {0xc0, 0x46},",
            "        .device_control_state_bytes = (volatile uint8_t *)0x07fd1e28u,",
            "        .radio_update_parameter_8330 = 0x00000535u,",
            "        .radio_update_parameter_8334 = 0x00000bb8u,",
            "        .radio_profile_state_bytes = (volatile uint8_t *)0x07fd05aeu,",
        ])

    def append_device_setting_literal_pool_view(data: bytes) -> None:
        if data[:2] != b"\xc0\x46":
            raise SystemExit("device-setting literal prefix changed")
        state_address = int.from_bytes(data[2:6], "little")
        if state_address != 0x07FD05AE:
            raise SystemExit(f"device-setting pointer changed: 0x{state_address:08x}")
        lines.extend([
            "        .instruction_prefix = {0xc0, 0x46},",
            "        .state_bytes = (volatile uint8_t *)0x07fd05aeu,",
        ])

    def append_radio_dispatch_literal_pool_view(data: bytes) -> None:
        if data[:2] != b"\xc0\x46":
            raise SystemExit("radio dispatch literal prefix changed")
        words = tuple(int.from_bytes(data[offset:offset + 4], "little")
                      for offset in (2, 6))
        expected = (0x07FD1FFC, 0x07FC8851)
        if words != expected:
            raise SystemExit(f"radio dispatch literals changed: {words!r}")
        lines.extend([
            "        .instruction_prefix = {0xc0, 0x46},",
            "        .radio_action_state_bytes = (volatile uint8_t *)0x07fd1ffcu,",
            "        .send_device_command_pair = (void (*)(uint32_t, uint32_t))0x07fc8851u,",
        ])

    def append_raw_data(start: int, end: int) -> None:
        if start > end:
            return
        count = end - start + 1
        data = payload[start - BASE:end - BASE + 1]
        symbol, description = DATA_LABELS.get(
            start, (f"v204_auto_{start:08x}", None))
        typed_view = TYPED_DATA_VIEWS.get(start)
        if description and not typed_view:
            lines.append(f"/* {description} */")
        if typed_view:
            view_symbol, view_description, view_type, expected_size = typed_view
            if symbol != view_symbol or count != expected_size:
                raise SystemExit(f"typed data view at 0x{start:08x} changed its symbol or size")
            lines.extend([f"/* {view_description} */",
                          f"const {view_type} {symbol} V204_AUTO_DATA({start:08x}) = {{",
                          "    .view = {"])
            if start == 0x07FCF6E2:
                append_hid_profile_data_view(data)
            elif start == 0x07FC4856:
                append_clock_literal_pool_view(data)
            elif start == 0x07FC90DC:
                append_calendar_conversion_constants_view(data)
            elif start == 0x07FC3452:
                append_registration_slot_literals_view(data)
            elif start == 0x07FC88CA:
                append_radio_range_literal_pool_view(data)
            elif start == 0x07FC832A:
                append_radio_state_literal_pool_view(data)
            elif start == 0x07FC2E4A:
                append_device_setting_literal_pool_view(data)
            elif start == 0x07FC87EA:
                append_radio_dispatch_literal_pool_view(data)
            else:
                raise SystemExit(f"no typed initializer is defined for 0x{start:08x}")
            lines.extend(["    },", "};", ""])
            return
        else:
            lines.append(f"const uint8_t {symbol}[{count}] "
                         f"V204_AUTO_DATA({start:08x}) = {{")
        for offset in range(0, count, 16):
            chunk = data[offset:offset + 16]
            lines.append("    " + ", ".join(f"0x{x:02x}" for x in chunk) + ",")
        lines.append("};")
        lines.append("")

    data_objects: list[tuple[int, int, tuple[str, str, str] | None]] = []
    covered_string_addresses: set[int] = set()
    for start, end in spans:
        cursor = start
        embedded_strings = sorted((address, *entry) for address, entry in DATA_STRINGS.items()
                                  if start <= address <= end)
        for address, symbol, value, description in embedded_strings:
            literal = value.encode("ascii") + b"\0"
            string_end = address + len(literal)
            if string_end - 1 > end:
                raise SystemExit(f"string {symbol} at 0x{address:08x} exceeds its data span")
            if address < cursor:
                raise SystemExit(f"string {symbol} overlaps a preceding data object")
            actual = payload[address - BASE:string_end - BASE]
            if actual != literal:
                raise SystemExit(f"string {symbol} at 0x{address:08x} does not match payload bytes")
            if cursor < address:
                data_objects.append((cursor, address - 1, None))
            data_objects.append((address, string_end - 1, (symbol, value, description)))
            cursor = string_end
            covered_string_addresses.add(address)
        if cursor <= end:
            data_objects.append((cursor, end, None))
    if covered_string_addresses != set(DATA_STRINGS):
        missing = sorted(set(DATA_STRINGS) - covered_string_addresses)
        raise SystemExit("embedded strings are outside classified data spans: " +
                         ", ".join(f"0x{address:08x}" for address in missing))

    for start, end, string in data_objects:
        if string is None:
            append_raw_data(start, end)
            continue
        symbol, value, description = string
        lines.extend([f"/* {description} */",
                      f"const char {symbol}[] V204_AUTO_DATA({start:08x}) = "
                      f"{json.dumps(value)};",
                      ""])
    for address, (symbol, description, element_type, expected_values) in sorted(TYPED_WORD_ARRAYS.items()):
        lines.extend([f"/* {description} */",
                      f"const {element_type} {symbol}[{len(expected_values)}] "
                      f"V204_AUTO_DATA({address:08x}) = {{"])
        for offset in range(0, len(expected_values), 4):
            chunk = expected_values[offset:offset + 4]
            lines.append("    " + ", ".join(f"0x{value:08x}u" for value in chunk) + ",")
        lines.extend(["};", ""])
    for address, (symbol, description, initializer, expected_value) in sorted(TYPED_WORDS.items()):
        value = int.from_bytes(payload[address - BASE:address - BASE + 4], "little")
        if value != expected_value:
            raise SystemExit(f"typed word {symbol} at 0x{address:08x} changed: 0x{value:08x}")
        lines.extend([f"/* {description} */",
                      f"const uint32_t {symbol} V204_AUTO_DATA({address:08x}) = {initializer};",
                      ""])
    for address, (symbol, description, target_type, expected_value) in sorted(TYPED_POINTERS.items()):
        value = int.from_bytes(payload[address - BASE:address - BASE + 4], "little")
        if value != expected_value:
            raise SystemExit(f"typed pointer {symbol} at 0x{address:08x} changed: 0x{value:08x}")
        lines.extend([f"/* {description} */",
                      f"{target_type} * const {symbol} "
                      f"V204_AUTO_DATA({address:08x}) = "
                      f"({target_type} *)0x{expected_value:08x}u;",
                      ""])
    for address, (symbol, description, expected_value) in sorted(TYPED_FUNCTION_POINTERS.items()):
        value = int.from_bytes(payload[address - BASE:address - BASE + 4], "little")
        if value != expected_value:
            raise SystemExit(f"typed function pointer {symbol} at 0x{address:08x} changed: 0x{value:08x}")
        lines.extend([f"/* {description} */",
                      f"void (* const {symbol})(void) V204_AUTO_DATA({address:08x}) = "
                      f"(void (*)(void))0x{expected_value:08x}u;",
                      ""])
    vectors_address, vectors_symbol, vectors_description, vectors = STARTUP_EXCEPTION_VECTORS
    for index, (field, _, expected_value) in enumerate(vectors):
        value = int.from_bytes(payload[vectors_address - BASE + index * 4:
                                       vectors_address - BASE + index * 4 + 4], "little")
        if value != expected_value:
            raise SystemExit(f"startup vector {field} changed: 0x{value:08x}")
    lines.extend([f"/* {vectors_description} */",
                  f"const struct sr08_startup_exception_vectors {vectors_symbol} "
                  f"V204_AUTO_DATA({vectors_address:08x}) = {{"])
    for field, pointer_type, expected_value in vectors:
        lines.append(f"    .{field} = ({pointer_type})0x{expected_value:08x}u,")
    lines.extend(["};", ""])
    OUTPUT_C.write_text("\n".join(lines))

    sections = [(start, end - start + 1, "v204.data", None)
                for start, end in MANUAL]
    sections.extend((start, end - start + 1, "v204.auto", None)
                    for start, end, _ in data_objects)
    sections.extend((address, 4, "v204.auto", None) for address in TYPED_WORDS)
    sections.extend((address, 4 * len(values), "v204.auto", None)
                    for address, (_, _, _, values) in TYPED_WORD_ARRAYS.items())
    sections.extend((address, 4, "v204.auto", None) for address in TYPED_POINTERS)
    sections.extend((address, 4, "v204.auto", None) for address in TYPED_FUNCTION_POINTERS)
    sections.append((vectors_address, 4 * len(vectors), "v204.auto", None))
    sections.extend((start, size, "v204.func", function)
                    for start, size, function in exact_functions)
    sections.extend((address, 0, "v204.func", function)
                    for address, function in EXTRA_FUNCTION_SECTIONS)
    sections.sort(key=lambda item: item[0])
    linker = ["SECTIONS", "{"]
    for address, size, prefix, function in sections:
        name = f".{prefix}.{address:08x}"
        input_section = (f".text.{function}" if function else name)
        linker.append(f"  {name} 0x{address:08x} : {{ KEEP(*({input_section})) }}")
    linker.extend(["}", ""])
    OUTPUT_LD.write_text("\n".join(linker))
    print(f"generated {len(data_objects)} C data objects / {len(addresses)} data bytes; "
          f"reserved {len(exact_functions)} exact function sections and "
          f"{skipped_data_bytes} overlapping classified-data bytes")


if __name__ == "__main__":
    main()
