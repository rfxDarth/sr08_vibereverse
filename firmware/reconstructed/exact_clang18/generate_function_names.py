#!/usr/bin/env python3
"""Build a readable symbol/behavior catalog from exact sources and Ghidra."""
from __future__ import annotations

import csv
import argparse
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
FIRMWARE = ROOT / "firmware"
EXACT = FIRMWARE / "reconstructed" / "exact_clang18"
MANUAL = EXACT / "manual_sources" / "V204_manual_exact.csv"
DIRECT = FIRMWARE / "decompiled" / "V204_clang18_fomit_linked_c_scan_current.csv"
GLOBALS = FIRMWARE / "decompiled" / "V204_clang18_data_literal_3global_current.csv"
INDEX = FIRMWARE / "decompiled" / "V204_functions" / "thumb_full" / "index.tsv"
FUNCTIONS = FIRMWARE / "decompiled" / "V204_functions" / "thumb_full" / "functions"
AUTHORITATIVE_CATALOG = EXACT / "V204_function_names.csv"
SOURCE_MANIFEST = EXACT / "V204_source_manifest.json"

# Names with clear behavior evidence from the decompiler and existing notes.
OVERRIDES = {
    "FUN_07fc1d10": (
        "update_status_slots_for_group_bit",
        "Select a 32-byte group slot (group three aliases group four). Write a "
        "one-hot bit at offset zero or two according to the alternate flag, "
        "then store low|high at offset 4 + 2*bit.",
        "high"),
    "FUN_07fcc2f0": (
        "check_status_record_range_and_publish_code",
        "If the record status byte at offset two is set, inspect the halfword "
        "at offset four. Publish code five when it is zero, code seven at or "
        "above the configured limit, or store an in-range nonzero value at "
        "shared-state offset 24. Return zero.",
        "high"),
    "FUN_07fc5260": (
        "set_pending_flag_while_preserving_caller_at_5260",
        "Set pending flag bit zero when status bit seven is clear. Disable "
        "interrupts during the update, restore the prior PRIMASK value, and "
        "return it.",
        "high"),
    "FUN_07fc2fcc": (
        "copy_scaled_payload_slice_on_mask_hit",
        "Compute the descriptor's masked delta. On a nonzero mask hit, copy the "
        "scaled payload slice and return zero; otherwise return UINT32_MAX.",
        "medium"),
    "FUN_07fcb014": (
        "dispatch_callback_for_record_types_26_fc_fd",
        "Scan 32 records, dispatch types 0x26, 0xfc, and 0xfd to their "
        "callback tables, and forward each record with two caller values.",
        "high"),
    "FUN_07fc4fa0": (
        "clear_mode_state_and_flags_before_status_update",
        "Clear the selected mode state and flag fields, then enqueue the "
        "computed status records.",
        "high"),
    "FUN_07fc5940": (
        "drain_record_list_and_release_state",
        "Drain the linked record list, clear its head, and release the owning "
        "state object.",
        "medium"),
    "FUN_07fcb178": (
        "format_byte_span_with_hexadecimal_output",
        "Format each byte in a span as hexadecimal using the shared variadic "
        "formatter.",
        "medium"),
    "FUN_07fc5f70": (
        "clear_mode_flags_0x0022_entry",
        "Invoke the shared mode-flag updater to clear mask 0x00220000.",
        "high"),
    "FUN_07fc5db4": (
        "set_attribute_value_from_measurement_record",
        "Find the measurement record's base handle, add the record's relative "
        "offset, then write its value bytes to the resulting attribute.",
        "medium"),
    "FUN_07fcaa4c": (
        "write_display_values_53_65_at_selected_offset",
        "Read the display selector from config byte 0x30 and mask it to two "
        "bits. Write values 0x53 and 0x65 at the selected display offset "
        "0x40 and the following byte.",
        "high"),
    "FUN_07fcba98": (
        "transfer_flash_controller_word",
        "Configure the flash controller, write the input low halfword and "
        "conditionally its high halfword, poll for completion, trigger "
        "readback, and return one or two response halfwords.",
        "high"),
    "FUN_07fc1988": (
        "add_v204_software_float_values",
        "Order operands by magnitude, align the smaller significand, combine "
        "significands according to the operand signs, then normalize and "
        "round the result.",
        "high"),
    "FUN_07fc1a3a": (
        "multiply_v204_software_float_values",
        "Multiply the two 23-bit fraction fields using split products and "
        "cross terms, normalize the product, round ties to even, and adjust "
        "the biased exponent. Return zero for a zero input magnitude and "
        "apply the XOR of the input signs to the result.",
        "high"),
    "FUN_07fc1ab4": (
        "divide_v204_software_float_values",
        "Normalize the 24-bit significands, compute their quotient with "
        "restoring shift/subtract division, derive rounding status from the "
        "remainder, and apply the XOR sign. Return zero for zero magnitudes "
        "or exponent underflow.",
        "high"),
    "FUN_07fc1b98": (
        "normalize_and_round_v204_software_float",
        "Left-normalize the significand, fold in sticky bits, adjust the "
        "biased exponent, and round the packed result to even. Return zero "
        "when the normalized exponent underflows.",
        "high"),
    "FUN_07fc1b88": (
        "round_v204_float_value_from_status",
        "Leave nonnegative rounding status unchanged. For negative status, "
        "increment the value; when status is INT32_MIN, clear the result's "
        "low bit to select the even tie.",
        "high"),
    "FUN_07fc5fb0": (
        "dispatch_indexed_message_by_id",
        "Dispatch message IDs 2 through 7 using the high byte of the fourth "
        "argument as the per-entry index. ID 2 updates its indexed record and, "
        "when the input high bit is set, copies six configuration bytes, "
        "erases and programs flash, and schedules a timer. ID 3 clears indexed "
        "flags and queues a compact sensor request. ID 4 and other unhandled "
        "IDs use the fallback handler. IDs 5 through 7 copy fixed payload "
        "fields into indexed records and set flags.",
        "high"),
    "FUN_07fc2e1c": (
        "update_device_settings_record_and_run_mode_callback",
        "Write the selected settings record, run the associated mode "
        "callback, and update the delayed state transition.",
        "medium"),
    "FUN_07fc3220": (
        "build_compact_sensor_request_for_index",
        "Build and publish a compact sensor request record for the selected "
        "index.",
        "medium"),
    "FUN_07fc54b4": (
        "initialize_display_image_region",
        "Initialize the fixed image region used by the display.",
        "medium"),
    "FUN_07fc3dd8": (
        "copy_display_coordinates_from_shared_state",
        "Copy the signed coordinate and angle values into the display state.",
        "medium"),
    "FUN_07fc2e6c": (
        "store_measurement_value_divided_by_1000",
        "Divide the measured value by 1,000 and store it in device state.",
        "high"),
    "FUN_07fc677c": (
        "build_measurement_message_from_service_record",
        "Parse a variable-length service record and publish its measurement message.",
        "medium"),
    "FUN_07fcc2f0": (
        "check_status_record_range_and_publish_code",
        "If the record status byte at offset two is set, inspect the halfword at offset four. Publish code "
        "five when it is zero, code seven at or above the configured limit, or store an in-range nonzero "
        "value at shared-state offset 24. Return zero.",
        "high"),
    "FUN_07fc2488": (
        "gate_mode_activation_on_sensor_flags",
        "Activate mode flags only when the selected mode and sensor-state flags satisfy their gate.",
        "medium"),
    "FUN_07fc1d10": (
        "update_status_slots_for_group_bit",
        "Select the status slot for a group and bit, update its flag, and store the combined status value.",
        "medium"),
    "FUN_07fca904": (
        "write_literal_halfword_to_shared_state_offset_0x40",
        "Write the literal halfword to shared-state byte offset 0x40.",
        "high"),
    "thunk_FUN_07fc98d4": (
        "initialize_sensor_measurement_state_entry_thunk",
        "Preserve the original startup address and branch indirectly to sensor-measurement initialization.",
        "high"),
    "FUN_07fc01b4": (
        "append_clamped_timing_record",
        "Allocate and stamp a timing record, release its temporary state, and "
        "clamp the stored timing value.",
        "medium"),
    "FUN_07fc8c3c": (
        "is_gregorian_leap_year",
        "Return whether the year is divisible by 4, except century years must "
        "be divisible by 400.",
        "high"),
    "FUN_07fcb770": (
        "combine_two_six_byte_records",
        "Read two six-byte records and combine the selected values into the "
        "output structure.",
        "medium"),
    "FUN_07fc0874": (
        "allocate_typed_message_with_context",
        "Allocate and initialize a typed message using its kind, argument, "
        "and context fields.",
        "medium"),
    "FUN_07fc1144": (
        "dispatch_l2cap_smp_receive_frame",
        "Route a received link-layer frame to the L2CAP or SMP handler based "
        "on its channel and payload fields.",
        "high"),
    "FUN_07fc5848": (
        "append_or_replace_variable_length_list_entry",
        "Find the selected variable-length list record and insert or replace "
        "its payload.",
        "medium"),
    "FUN_07fc077e": (
        "pack_key_and_transform_sr08_block",
        "Pack the key material and transform the input block into the output "
        "buffer.",
        "medium"),
    "FUN_07fc532c": (
        "format_string_into_bounded_output",
        "Expand a format string into the caller's bounded output buffer.",
        "medium"),
    "FUN_07fccf80": (
        "average_top_three_nonzero_sample_values_by_frequency",
        "Destructively count nonzero samples, select up to three distinct "
        "values with the highest frequencies (reusing the top value if needed), "
        "and return their integer average.",
        "medium"),
    "FUN_07fcd99c": (
        "apply_pending_record_operations",
        "Apply the pending operation code to each item in the supplied list.",
        "medium"),
    "FUN_07fc74a8": (
        "update_display_for_selected_mode",
        "Apply the selected mode's conditional updates to the two display "
        "state values.",
        "medium"),
    "FUN_07fc2efc": (
        "advance_ring_queue_head_and_submit_record",
        "Advance the ring queue head and submit the selected record.",
        "medium"),
    "FUN_07fcbb94": (
        "update_mode_dependent_output_state_during_flash_transfer",
        "Map the current mode byte to both output-state halfwords around a flash-word transfer; return the transfer result.",
        "medium"),
    "FUN_07fc6dbc": (
        "dispatch_attribute_request_by_opcode",
        "Validate the request context, classify the request opcode relative to "
        "the active service, dispatch supported request cases, and return the "
        "protocol status for unsupported or completed operations.",
        "medium"),
    "FUN_07fc7c88": (
        "complete_pending_attribute_write",
        "Validate the pending write against the active connection and service "
        "state, emit the completion response with any accepted payload, clear "
        "the pending request fields, and resume link-layer processing.",
        "medium"),
    "FUN_07fc76a0": (
        "parse_variable_length_service_record",
        "Walk the service field descriptors to locate the requested record, "
        "validate its encoded length and optional fields, and return the "
        "record parse status and field offset.",
        "high"),
    "FUN_07fc9da0": (
        "run_sensor_measurement_state_cycle",
        "Coordinate sensor sampling, calibration and measurement state, "
        "process available readings, update time-derived values, and trigger "
        "the corresponding display and record transitions.",
        "medium"),
    "FUN_07fc25c4": (
        "dispatch_sensor_and_display_events",
        "Handle the firmware's central sensor and display event cases, "
        "including measurement record updates, mode transitions, status "
        "changes, and follow-up event dispatch.",
        "medium"),
    "FUN_07fc9104": (
        "dispatch_radio_and_sensor_state_events",
        "Inspect the pending radio and sensor state, run the matching event "
        "handler, update shared status, and return the next state object.",
        "medium"),
    "FUN_07fcb1b0": (
        "process_measurement_records_and_sensor_state",
        "Consume pending measurement records, update sensor mode and timing "
        "state, and publish the resulting record or status changes.",
        "medium"),
    "FUN_07fcca68": (
        "process_motion_axes_and_activity_state",
        "Transform the packed motion-axis samples, update the activity "
        "history and derived values, and publish the resulting sensor state.",
        "medium"),
    "FUN_07fc48a8": (
        "load_and_update_persistent_measurement_state",
        "Read persisted measurement state, reconcile it with current values, "
        "and write back any required record or status updates.",
        "medium"),
    "FUN_07fc98d4": (
        "initialize_sensor_measurement_state",
        "Initialize shared sensor and measurement state, load retained values, "
        "and run the initial sensor, clock, and display state transitions.",
        "medium"),
    "FUN_07fcd9c8": (
        "estimate_pulse_rate_from_sample_window",
        "Scan a 100-sample two-axis signal window, rank candidate peaks, "
        "compare their surrounding energy, and return the selected rate "
        "estimate for the sensor-frame update path.",
        "medium"),
    "FUN_07fcd4f8": (
        "update_sensor_signal_state_from_sample",
        "Update the rolling sensor-signal state from one input sample, "
        "including phase-indexed lookup-table contributions and the paired "
        "40-sample signal buffers.",
        "medium"),
    "FUN_07fc8c90": (
        "dispatch_timed_state_callbacks",
        "Read the scaled timer, update the selected state and bit tables, "
        "advance the callback interval, invoke the matching registered "
        "callback when due, and refresh status bits for seven entries.",
        "medium"),
    "FUN_07fc4e98": (
        "handle_record_flag_and_queue_sensor_configuration",
        "When the current record flag is one and the shared transition marker "
        "is clear, enqueue two 0xf6 records, build and queue sensor/status "
        "records, optionally dispatch a three-byte request, and update the "
        "transition state.",
        "medium"),
    "FUN_07fc85e0": (
        "synchronize_callback_values_and_notify",
        "Read callback values for modes zero and one, store and compare the "
        "mode-one pair, update the shared difference and state markers, and "
        "send command pairs 0x9c/7 and 0x70/0 when the notification gate "
        "allows it.",
        "medium"),
    "FUN_07fc552c": (
        "find_latest_valid_record_within_bitset",
        "Use the supplied time to select a 900-record block, read its status "
        "bitmap, scan the requested index range, validate each flagged "
        "record's status and timestamp, and return the offset of the latest "
        "qualifying record.",
        "medium"),
    "FUN_07fc6998": (
        "allocate_and_send_typed_message",
        "Check the response state, select a fixed or encoded payload based on "
        "the request type, allocate the kernel message, copy its header and "
        "payload, and send it. Return the packed response-state result on the "
        "early path.",
        "medium"),
    "FUN_07fcbc40": (
        "register_custom_gatt_service_and_initialize_state",
        "Allocate and populate the service's 0x1e0-byte ATT attribute table, "
        "register it through the ATT database, and on success allocate and "
        "initialize per-connection request state and protocol values before "
        "freeing the temporary table.",
        "high"),
    "FUN_07fc7538": (
        "update_profile_values_and_send_status",
        "When the source state differs, copy the indexed 16-bit values into "
        "the profile object and update the related state flag. Then allocate "
        "and send the two-byte status message selected from the input type "
        "and state.",
        "medium"),
    "FUN_07fcc148": (
        "receive_transfer_chunk_and_program_flash",
        "Append each incoming chunk to the bounded transfer buffer, validate "
        "the completed header and transfer state, erase the target flash "
        "range when starting a new transfer, program header and payload data, "
        "and publish transfer progress or status.",
        "medium"),
    "FUN_07fc1426": (
        "process_ble_connection_request",
        "Validate the received link-layer connection fields, resolve the peer "
        "address, check whitelist and resolving-list policy, initialize the "
        "connection state, start the link-layer connection, and restore the "
        "white list when required.",
        "high"),
    "FUN_07fc6358": (
        "activate_staged_firmware_image",
        "For the accepted update state, clear the staging marker, erase the "
        "active image range, copy 0x14000 bytes from the staged flash region "
        "to the active region in 1 KiB blocks, write the 0xaa activation "
        "marker, update image metadata, and complete the update state.",
        "high"),
    "FUN_07fc3584": (
        "process_sensor_mode_and_update_display",
        "Read the active sensor mode and timing state, collect and combine "
        "sample records for the 0x2000 mode, update the derived measurement "
        "fields, apply mode-specific rate limits, and pass the result to the "
        "measurement display and transition handler.",
        "medium"),
    "FUN_07fc0374": (
        "clamp_indexed_state_fields_and_sync_values",
        "Clamp four 16-bit fields in the indexed state record to paired bounds, "
        "store the normalized values, mirror two fields into a second indexed "
        "table, and return whether any tracked value changed.",
        "medium"),
    "FUN_07fc4d6c": (
        "dispatch_callback_table_command_and_clear_result",
        "Handle three command values by validating a callback-table slot, "
        "updating or invoking its entry, and clearing the result byte on "
        "handled paths; return one for command values outside the supported "
        "range. Invalid table indices enter the firmware's fatal loop.",
        "medium"),
    "FUN_07fc34a8": (
        "zero_prefix_and_fill_random_suffix",
        "Validate that the requested random suffix fits within the destination, "
        "fill that suffix from the ROM random-word helper, and zero the bytes "
        "before it. An invalid size writes the firmware error fields and enters "
        "a fatal loop.",
        "medium"),
    "FUN_07fc56a0": (
        "crc32_update_buffer",
        "Update a CRC-32 state over a byte buffer using the reflected "
        "0xedb88320 polynomial, complementing the input and result. The "
        "eight-byte loop uses the table callback; the tail uses the local "
        "eight-round helper. A null buffer returns zero.",
        "high"),
    "FUN_07fc5cbc": (
        "prepare_measurement_record_append_at_5cbc",
        "Check the measurement item status, locate and validate its matching "
        "record, mark the item active, store the pending record pointer and "
        "value, then invoke the measurement append/finalize routine. Return "
        "two when the item is already active; invalid lookup results enter "
        "the firmware's fatal loop.",
        "medium"),
    "FUN_07fc5d34": (
        "prepare_measurement_record_append_at_5d34",
        "Check the measurement item status, locate and validate its matching "
        "record, mark the item active, store the pending record pointer and "
        "value, then invoke the measurement append/finalize routine. Return "
        "two when the item is already active; invalid lookup results enter "
        "the firmware's fatal loop.",
        "medium"),
    "FUN_07fc5c44": (
        "replace_byte_in_variable_length_record_at_index",
        "Validate an index below eight, look up the variable-length record, "
        "copy its bytes to a local buffer, replace the selected byte, and "
        "upsert the modified record. Invalid indices or missing record data "
        "enter the firmware's fatal loop.",
        "medium"),
    "FUN_07fc1c18": (
        "configure_peripheral_and_wait_for_status_flags",
        "Conditionally run the companion setup routine, program the "
        "memory-mapped peripheral control registers, wait for the reported "
        "status thresholds, and finish by copying the peripheral result into "
        "shared state.",
        "medium"),
    "FUN_07fc32bc": (
        "get_or_initialize_cached_text_record",
        "Return the existing cached-text record when present; otherwise "
        "allocate and initialize the record, copy a fixed shared-data block, "
        "append the text and length returned by the cache helper, and retain "
        "the updated record pointer in shared state.",
        "medium"),
    "FUN_07fc64a8": (
        "build_and_submit_record_for_selector_type",
        "Use the first input byte to select a record variant: emit fixed fields "
        "for type 2, a shared 16-bit value for type 1, or a variable-length "
        "shared payload for type 0. Return without emitting for other types.",
        "medium"),
    "FUN_07fcb0f8": (
        "initialize_or_release_indexed_objects",
        "When the input is zero, initialize slots 0x10 through 0x2f and register "
        "each slot. Otherwise, run type-specific cleanup callbacks where "
        "required, clear all 32 slots, restore their empty marker, and release "
        "each slot's associated resource.",
        "medium"),
    "FUN_07fc0274": (
        "update_slot_event_state_and_dispatch",
        "Decode the packed status and slot, set the slot's event flag, and "
        "handle statuses 0x13 through 0x15 specially. For other statuses, use "
        "the slot's state bits to choose the event callback or the paired "
        "update calls; return two on the designated early-completion paths.",
        "medium"),
    "FUN_07fc3838": (
        "start_or_stop_sensor_calibration",
        "Start or stop sensor calibration. Mode 0x4000 runs a bounded search "
        "using repeated device measurements; mode 0x40 initializes its "
        "timed operation, and other nonzero modes dispatch to their handler.",
        "medium"),
    "FUN_07fc02ec": (
        "dispatch_packed_event_to_indexed_record",
        "Ignore event statuses 0, 0x13, and 0x14; mark the indexed record and "
        "return 2 for status 0x15; otherwise log the event and apply its "
        "configured follow-up transition.",
        "medium"),
    "FUN_07fcc728": (
        "process_sensor_sample_and_maybe_save_record",
        "Process a sensor sample, update measurement counters, compare recent "
        "queued records, and append the resulting record. When the record "
        "state requests it, validate and write the saved data to flash.",
        "medium"),
    "FUN_07fca64c": (
        "advance_registration_data_transfers",
        "Advance two active registration transfer state machines. The first "
        "emits data through up to four stages using configured thresholds; "
        "the second sends seven-byte chunks for up to twelve steps. Clear a "
        "transfer flag when its sequence completes or its source becomes "
        "invalid.",
        "medium"),
    "FUN_07fcc578": (
        "dispatch_service_event_and_update_shared_state",
        "Dispatch service event identifiers: log and store type-two records, "
        "build response messages for state events, clear transfer state for "
        "the reset event, and log and submit numeric status updates.",
        "medium"),
    "FUN_07fcadf8": (
        "initialize_peripheral_state_and_interrupts",
        "Configure several memory-mapped peripheral registers, initialize the "
        "associated state blocks, clear paired status entries, and update the "
        "interrupt enable state while preserving its prior setting.",
        "medium"),
    "FUN_07fc686c": (
        "build_and_send_measurement_item_response",
        "Check the connection state, match the requested measurement index, "
        "and allocate and send the corresponding response message. For indexed "
        "records, validate the selected slot and copy its measurement byte; "
        "invalid record metadata enters the firmware's fatal loop.",
        "medium"),
    "FUN_07fc7db4": (
        "validate_and_queue_attribute_request",
        "Check the connection and request type, validate the selected "
        "attribute slot and payload length, and queue a message for accepted "
        "requests. Rejected requests are returned with the corresponding "
        "protocol status code.",
        "medium"),
    "FUN_07fc41e4": (
        "update_motion_sample_history_and_activity_flags",
        "Compare four incoming sample fields with their stored values, track "
        "the largest change, update the sample history and timestamps, and "
        "set activity flags when movement crosses the firmware thresholds.",
        "medium"),
    "FUN_07fcb080": (
        "find_keyed_record_value",
        "Search up to 32 fixed 24-byte records for a 16-bit key at offset 22; "
        "return the 32-bit value at offset 16 of the matching record, or zero.",
        "high"),
    "FUN_07fc57b8": (
        "find_measurement_record_by_id",
        "Walk the measurement record list and match the ID byte at offset four. "
        "Return its length byte and value pointer through the output arguments; "
        "write zero outputs when no record matches. Null output pointers enter "
        "the firmware's fatal wait.",
        "high"),
    "FUN_07fc66c0": (
        "send_type_9_message_if_task_state_zero",
        "Check the supplied kernel task ID. If its state is nonzero, write the "
        "timeout/error MMIO values and wait forever. If its state is zero, "
        "allocate a four-byte type-9 message, set its first byte to one, send "
        "it, and return zero.",
        "high"),
    "FUN_07fc7f94": (
        "retry_radio_command_until_status_0x27",
        "Up to ten times, send command (1, 0), wait for timer delta five, and "
        "store the returned status byte at radio-configuration offset 0x13. "
        "Return one when status 0x27 arrives, otherwise zero after ten tries.",
        "high"),
    "FUN_07fc532c": (
        "format_and_send_uart_message",
        "Format into a 96-byte bounded buffer and send it through the UART. The supported conversions are %c, %s, "
        "%d, %i, %u, %x, and %X, with an optional h modifier and one-digit zero-prefixed width. An unsupported "
        "conversion emits the firmware's fatal-format diagnostic.",
        "medium"),
    "FUN_07fccf5c": (
        "transmit_uart_buffer",
        "For each byte, poll UART status register ten until bit five indicates ready, write the byte to data register "
        "zero, then wait for status bit six to acknowledge the transfer.",
        "high"),
    "FUN_07fc5294": (
        "format_integer_radix_zero_padded",
        "Format an integer in decimal or hexadecimal, zero-pad to the requested minimum width, append a sign for "
        "negative decimal values, choose uppercase or lowercase hexadecimal digits, null-terminate the result, "
        "and return the character count.",
        "high"),
    "FUN_07fc0758": (
        "find_variable_record_value_by_marker",
        "Walk length-prefixed records up to the byte limit. Return the byte at record offset two for the first record "
        "whose marker byte at offset one is one; return zero if no marker matches.",
        "high"),
    "FUN_07fc1e70": (
        "integer_square_root_restoring",
        "Compute floor(sqrt(input)) with the restoring base-four algorithm: test root plus the current power-of-four "
        "bit, conditionally subtract it and update the root, then shift the bit by two until zero.",
        "high"),
    "FUN_07fc7bcc": (
        "complete_pending_attribute_operation",
        "Validate the pending attribute-operation state and request fields, "
        "update the selected record when accepted, send a completion message "
        "with the result code, then clear the pending operation fields.",
        "medium"),
    "FUN_07fcc31c": (
        "handle_service_control_command_and_publish_status",
        "Decode the service event command, dispatch reset, stop, and periodic "
        "measurement actions, clear the associated transfer counters, and "
        "publish the resulting status code.",
        "medium"),
    "FUN_07fcc414": (
        "store_attribute_value_and_send_update_event",
        "Copy the incoming value into the selected attribute record, then "
        "queue an internal update message when the record is active. The "
        "message type reflects the record's event mode.",
        "medium"),
    "FUN_07fcb82c": (
        "initialize_sensor_peripheral_and_sample_state",
        "Apply peripheral control settings, populate the supplied callback "
        "configuration, seed a 40-byte sequence table, run the companion "
        "initialization routine, convert the initial sensor value, and start "
        "the follow-up state handler.",
        "medium"),
    "FUN_07fc88e0": (
        "program_peripheral_registers_from_descriptor",
        "Temporarily manage interrupt state, wait for the peripheral to become "
        "idle, copy configuration fields from the input descriptor into its "
        "memory-mapped registers, and wait for the operation to complete.",
        "medium"),
    "FUN_07fcaf9c": (
        "lookup_or_register_request_handler",
        "Select a handler for one of three supported request identifiers and "
        "search the 33-entry record table for an existing entry. If no entry "
        "exists and a slot is available, invoke the selected handler and store "
        "the request identifier; return the corresponding status and record.",
        "medium"),
    "FUN_07fc017c": ("nonreturning_spin_loop_at_017c",
                     "Loop forever without changing device state."),
    "FUN_07fc017e": ("nonreturning_spin_loop_at_017e",
                     "Loop forever without changing device state."),
    "FUN_07fc0180": ("nonreturning_spin_loop_at_0180",
                     "Loop forever without changing device state."),
    "FUN_07fc0182": ("nonreturning_spin_loop_at_0182",
                     "Loop forever without changing device state."),
    "FUN_07fc16c6": ("return_without_action_at_16c6",
                     "Return immediately without changing device state."),
    "FUN_07fc2ed6": ("enqueue_ring_record_overwriting_oldest",
                     "Advance the tail when full, then enqueue the new record and advance the head."),
    "FUN_07fc2ea8": ("enqueue_ring_record_if_space",
                     "Copy a source record into the head slot and advance the head when space remains."),
    "FUN_07fc3028": ("return_constant_one_at_3028",
                     "Return the constant value one."),
    "FUN_07fc1fa8": ("append_bounded_bytes_and_terminate",
                     "Copy a bounded byte range into the output buffer and append a zero byte."),
    "FUN_07fc3e90": ("erase_flash_range",
                     "Erase the requested flash range through the shared flash operation routine."),
    "FUN_07fc3e60": ("update_state_bits_and_publish_empty_status",
                     "Set or clear selected state bits, then publish whether the resulting state word is empty."),
    "FUN_07fc3ea0": ("perform_flash_memory_operation",
                     "Read, program, or erase flash memory; operations use 256-byte write chunks and the device's erase unit."),
    "FUN_07fc5484": ("fill_buffer_with_32_random_bytes",
                     "Write 32 bytes from the DA14585 ROM random-number routine into the destination and return zero."),
    "FUN_07fc2e80": ("conditionally_initialize_peripheral_and_schedule_service",
                     "Check the peripheral status, conditionally initialize it, set the pending flag, and schedule ROM service 0x413."),
    "FUN_07fc5e54": ("print_exception_context_to_uart",
                     "Write a HardFault or NMI label and eight exception-context words as hexadecimal through the memory-mapped UART."),
    "FUN_07fc5f80": ("log_message_with_code_17_and_enqueue_operation_one",
                     "Format a caller-supplied string and code 17 with the fixed %s,%d newline template, send it to the UART, then enqueue operation one."),
    "FUN_07fc8018": ("configure_radio_profile_and_mark_state_ready",
                     "Select a radio control value from the mode argument, ensure the radio profile, configure radio state, and set its ready byte."),
    "FUN_07fc82b0": ("configure_radio_state_and_send_command_6a",
                     "Clear radio state flags, configure profile-dependent fields, then send command 0x6a with value two."),
    "FUN_07fc8584": ("ensure_radio_profile_then_exchange_word",
                     "Apply the radio register profile unless status contains mask 0x44, then perform a one-word radio exchange."),
    "FUN_07fc3ab0": ("allocate_ble_data_record_and_send",
                     "Allocate a variable-length BLE data record, copy the payload, log and format its bytes, then submit it; log allocation failure when no record is available."),
    "FUN_07fc625c": ("store_indexed_measurement_status_record",
                     "Validate the incoming status, select the indexed state entry, copy its measurement fields, update the per-slot state, and publish the resulting status."),
    "FUN_07fc9004": ("convert_timestamp_to_calendar_fields",
                     "Convert the supplied time value into calendar fields, including month and leap-year adjustments, and write the result to the output array."),
    "FUN_07fcb980": ("dispatch_pending_peripheral_operations",
                     "Process each set bit in the pending-operation word by writing its operation code and invoking the corresponding peripheral service."),
    "FUN_07fc5968": ("append_or_finalize_measurement_record_chunk",
                     "Append a chunk to the selected variable-length measurement record, or allocate and submit its completed record before releasing the pending buffer."),
    "FUN_07fc8354": ("read_three_byte_samples_and_update_history",
                     "Read three-byte records with device command 0x41, decode them into the shared 32-bit sample history, shift retained samples to make room, and request a refresh when the requested window is 64."),
    "FUN_07fc833c": ("read_callback_pair_for_mode_window_39_3a",
                     "Multiply the mode by three, subtract byte offsets 0x39 and 0x3a modulo 256, then read the callback values for that pair."),
    "FUN_07fc045a": ("read_eight_bytes_from_rom_helper",
                     "Call ROM helper 0x07f02976 eight times and store each returned byte in the output buffer."),
    "FUN_07fc18f4": ("nul_terminated_string_length",
                     "Return the number of bytes before the terminating NUL."),
    "FUN_07fc856c": ("read_callback_pair_for_mode_window_42_43",
                     "Multiply the mode by three, subtract byte offsets 0x42 and 0x43 modulo 256, then read the callback values for that pair."),
    "FUN_07fc8a0c": ("exchange_one_radio_word",
                     "Write one command word to the radio interface, trigger the transfer, wait for completion, and return the received byte or zero on the error path."),
    "FUN_07fcacd0": ("write_shared_state_byte_44_and_word_40",
                     "Write 0x1f to byte offset 0x44 and a fixed 32-bit data word to offset 0x40 of the shared state object."),
    "FUN_07fcacb8": ("write_shared_state_byte_45_and_word_40",
                     "Write 0x10 to byte offset 0x45 and a fixed 32-bit data word to offset 0x40 of the shared state object."),
    "FUN_07fc31f8": ("publish_per_slot_state_byte",
                     "Allocate a 44-byte per-slot record, store its state byte at offset 0x28, set the flag at 0x29, and submit it."),
    "FUN_07fca8ec": ("format_signed_state_byte_as_three_display_digits",
                     "Read the signed byte at state offset 0x95 and format it into three display digits at buffer offset 0x42."),
    "FUN_07fc5200": ("stage_and_program_flash_region_3c000",
                     "Stage one word in the RAM buffer, erase flash range 0x3c000-0x3dfff, then program 0x70 bytes at 0x3c000."),
    "FUN_07fc2e50": ("replace_state_timer_with_600_delay_entry",
                     "Release the timer slot at state offset nine, allocate a new registration with delay value 600, and store its slot ID."),
    "FUN_07fc4440": (
        "request_sensor_sample_then_scale_result",
        "Write one to the conversion-request register at 0x400000fc and wait for it to clear. Read the result at "
        "0x4000001c and return raw_value times five, shifted right by three.",
        "high"),
    "FUN_07fc5a6c": ("lookup_measurement_value_by_index",
                     "Return the indexed measurement value when the index is within the record count."),
    "FUN_07fc6540": ("create_empty_measurement_record",
                     "Allocate and submit an initialized measurement record."),
    "FUN_07fc66f8": ("initialize_measurement_for_enabled_slot",
                     "Initialize measurement state when the selected slot is enabled."),
    "FUN_07fc67f0": ("dispatch_measurement_record_type",
                     "Dispatch the record handler when the first record byte is 0x12 or 0x13."),
    "FUN_07fc7526": ("release_and_clear_object_handle",
                     "Clear the object handle field and release its previous value."),
    "FUN_07fc8838": ("write_two_bytes_from_packed_value",
                     "Write the high and low bytes of a packed 12-bit value through the shared writer."),
    "FUN_07fc33a4": ("refresh_cache_then_clear_indexed_word_at_index",
                     "Run the cache update and service calls, then clear the 32-bit table entry at the supplied index."),
    "FUN_07fc33c0": ("clear_cache_entry_and_publish_sensor_request",
                     "Clear the cached byte, refresh the indexed cache entry, publish the compact sensor request, then clear the sensor state byte at offset 100."),
    "FUN_07fc1fd0": ("wait_for_state_flag_bit_one_to_clear_and_read_result",
                     "Set state bit one, wait for it to clear, clear the halfword at state offset eight, and return the halfword at offset ten."),
    "FUN_07fc869c": ("initialize_radio_scan_and_mark_state_ready_entry",
                     "Clear the radio state byte at offset 27, scan the paired-byte data after ensuring the radio profile, send command 0x6a, and set state byte 17."),
    "FUN_07fc3a18": ("store_mode_flag_and_copy_configuration_word",
                     "Set mode flag four, store the input byte at state offset 15, and copy a configuration word to byte offset 24."),
    "FUN_07fcc9a4": ("update_indexed_delay_entry_if_changed",
                     "For the 16-byte table entry selected by the index, update its delay and derived value only when the delay differs."),
    "FUN_07fcc9c8": ("schedule_callback_in_slot_eleven",
                     "Log the scheduling message, allocate and initialize a four-byte timer record, then update timer slot 11 with its configured delay."),
    "FUN_07fc1b3e": ("convert_float32_bits_to_unsigned_integer",
                     "Decode the exponent and significand from a 32-bit floating-point value and shift the significand to produce its truncated unsigned integer value."),
    "FUN_07fc2568": ("initialize_configuration_record_defaults",
                     "Initialize the configuration record fields at offsets 52 through 88 with fixed defaults and a linked configuration pointer."),
    "FUN_07fc5848": ("append_or_replace_variable_length_list_entry",
                     "Find the list for selector 253, replace a matching record when its length changes, then write the selector, length, and payload bytes."),
    "FUN_07fccf38": ("write_indexed_timing_record",
                     "Write the tagged record at index times 16, storing the caller's timing value, a helper-derived interval, and the supplied data word."),
    "FUN_07fcf11c": ("initialize_control_registers_and_enable_irqs",
                     "Write value six to MMIO address 0x50003400, clear three interrupt masks through NVIC address 0xe000e180 with barriers, clear address 0x50000000, and enable interrupts."),
    "FUN_07fcc118": ("set_attribute_value_and_halt_on_failure",
                     "Use the key 0xfc attribute entry's value offset plus six to set a four-byte value from the caller's buffer. On failure, set the MMIO timeout/status values and spin forever; otherwise return zero."),
    "FUN_07fc31d4": ("reset_transition_state_and_store_scaled_value",
                     "Wait for and scale the shared timer value, clear the transition-state byte at offset 48, set offset 44 to 0xff, and store the scaled result at shared-state word offset 15."),
    "FUN_07fcca2c": ("advance_state_cycle_and_dispatch_action",
                     "Increment the state word at index 13, set transition flag 0x400000 after the count passes three, and when state word eight is 0x40 dispatch an action selected from the previous count's low two bits."),
    "FUN_07fceedc": ("write_shared_sensor_profile_fields",
                     "Store the caller's three leading bytes, two 32-bit profile values, and final byte at offsets 0, 1, 2, 4, 8, and 12 of the shared sensor-profile record."),
    "FUN_07fcee44": ("reinitialize_sensor_processing_state_wrapper",
                     "Call the full sensor-processing state initializer at 0x07fcec2c."),
    "FUN_07fcec2c_exact": ("initialize_sensor_processing_state",
                           "Reset shared sensor state, clear per-entry arrays and counters, initialize their defaults, run the shared service initializer, and return one."),
    "FUN_07fcec2c": ("initialize_sensor_processing_state",
                     "Reset shared sensor state, clear per-entry arrays and counters, initialize their defaults, run the shared service initializer, and return one."),
    "FUN_07fc20f0": ("process_sensor_reading_and_update_state",
                     "Read the current sensor value, update interface control words, derive a bounded 0-100 result from recent readings, advance threshold counters, and publish state changes."),
    "FUN_07fcd908_extra0": ("initialize_shared_control_state_tables",
                            "Set the shared controller's active flag and pointer, initialize two byte defaults to 72, clear its fixed fields and 40-, 120-, and 40-entry tables, set the final status byte, and return one."),
    "FUN_07fcd908": ("initialize_shared_control_state_tables",
                     "Set the shared controller's active flag and pointer, initialize two byte defaults to 72, clear its fixed fields and 40-, 120-, and 40-entry tables, set the final status byte, and return one."),
    "FUN_07fc86b8": ("dispatch_radio_state_action",
                     "Dispatch action indices zero through five to their radio-state handlers; the cases configure radio state, start the paired-byte scan, or update radio control fields."),
    "FUN_07fc8e58": ("apply_sensor_control_action",
                     "For action 2, initialize paired sensor state and write its profile; for actions 0x400, 0x800, and 0x1000, update the selected sensor fields; otherwise apply the default profile and initialize shared state when needed."),
    "FUN_07fca7a0": ("build_command_response_from_status",
                     "Build the response selected by a command ID: copy six shared bytes for command one, emit fixed status bytes for IDs 0x40 through 0x44 or seven, and return the associated result code."),
    "FUN_07fc046e": ("decode_packet_into_output_record",
                     "Initialize the output record header, extract status bits and a bounded payload length from the input, copy its fixed six-byte prefix and variable payload, and store the decoded callback value."),
    "FUN_07fc0e18": ("encode_record_with_schema",
                     "In copy mode, append a bounded byte span and update offset/remaining counters; in schema mode, choose a format table from the record type, expand its field directives into the output, and return protocol error 0x34 for invalid or incomplete input."),
    "FUN_07fc04fc": ("advance_buffer_cursor_and_publish_record",
                     "Advance the masked cursor in the stream state by its configured unit, issue progress callbacks when cursor-distance thresholds are crossed, fill a 16-byte record with stream metadata, publish it, and return the stream state."),
    "FUN_07fc11f8": ("process_indexed_payload_state",
                     "Inspect the indexed record's state byte, copy its 16-byte payload for states '$' and 0x0c, advance the '$' state to '%', and apply the associated callback/flag transitions for state 0x0c."),
    "FUN_07fcd2dc": ("filter_accelerometer_sample_and_classify_level",
                     "Filter the three accelerometer axes, compute a combined magnitude, maintain a short peak/average history, and return the configured motion level from zero through three."),
    "FUN_07fcd0f0": ("compute_and_store_display_coordinates",
                     "Derive two display coordinates from the supplied measurement values and store them in the shared display state."),
    "FUN_07fc7380": ("update_measurement_display_and_mode_state",
                     "Handle a measurement result mode, update display-related state, retain computed values, and trigger state transitions when their timing conditions are met."),
    "FUN_07fc0664": ("validate_record_stream_fields",
                     "Walk one or two bounded record streams, reject duplicate tracked field tags, and stop processing on malformed field data."),
    "FUN_07fc302c": ("initialize_display_config_or_run_handler",
                     "On first entry, create and submit the display configuration record; on later entries, invoke the selected handler and clear the initialization state when its sequence completes."),
    "FUN_07fcd0c8": ("integer_square_root_newton_iteration",
                     "Compute an integer square root by iterating floor((input / estimate + estimate) / 2) until the estimate stabilizes, using the firmware ROM division helper."),
    "FUN_07fcc8b0": ("advance_sensor_cycle_and_toggle_mode_flags",
                     "Advance the sensor-cycle counters, toggle the shared mode flag on alternating cycles, and invoke the enabled follow-up handler."),
    "FUN_07fc0a98": ("process_indexed_response_and_release_buffer",
                     "Handle the indexed pending response, construct or update its result record when needed, release temporary storage, and clear the slot's buffer pointer."),
    "FUN_07fceef8": ("clear_sensor_processing_history_tables",
                     "Clear the sensor processor's indexed history tables and working fields, set its 30-unit default, and return one."),
    "FUN_07fc180c": ("build_type_27_packet_or_set_fallback_state",
                     "Build a type-0x27 packet from two reversed 32-byte slices of the indexed record, validate it, and set fallback state when validation fails."),
    "FUN_07fc174c": ("configure_interrupt_registers_and_optional_mode",
                     "Write the fixed interrupt-control registers with memory barriers, update the peripheral control halfword, and apply extra mode bits when the argument equals one."),
    "FUN_07fc2da8": ("read_state_word_at_10_with_record_flag_clamp_entry",
                     "Return the halfword at state offset 10, clamping values below 21 to 20 when record flag bit zero is clear."),
    "FUN_07fc549c": ("switch_to_display_state_1b_when_word_44_is_100",
                     "Switch display state to 0x1b when the 32-bit state field at byte offset 44 equals 100."),
    "FUN_07fcd990": ("initialize_state_then_return_success",
                     "Call the state initializer at 0x07fcd908 and return one."),
    "FUN_07fc20d4": ("register_thumb_handler_and_store_slot_index",
                     "Register the Thumb handler at 0x07fc20d5 in the 0x0bb8 table and store its returned slot index at state offset 11."),
    "FUN_07fc8c64": ("disable_interrupt_mask_0x8000_and_publish_control_state",
                     "Write mask 0x8000 to the interrupt clear-enable register, clear control bit zero, then publish state values 1 and 2."),
    "FUN_07fc5a88": ("match_measurement_index_and_write_offset",
                     "If the candidate lies in [range_start, range_start + entry_count), write its relative offset and return zero; otherwise return 0x80."),
    "FUN_07fc2fa4": ("copy_ring_buffer_entry_if_index_available",
                     "Copy the indexed queued record when its index is below the masked queue occupancy."),
    "FUN_07fcd0ba": ("zero_word_buffer_by_byte_count",
                     "Write zero to each 32-bit destination word, reducing the remaining byte count by four until it reaches zero."),
    "FUN_07fcb924": ("configure_ring_s_display_sensor_control_registers",
                     "Update the ring display/sensor control registers and initialize their shared configuration."),
    "FUN_07fcbb6c": ("set_ring_s_output_mode_and_enable",
                     "Clear output-control bit zero, apply the shifted mode through mask 0xfe7f, then set bit zero."),
    "FUN_07fc8a54": ("scan_pair_table_until_terminator",
                     "Scan at most 254 two-byte entries, stopping when both bytes are 0xff and processing each earlier pair."),
    "FUN_07fc8680": ("ensure_radio_profile_then_scan_paired_bytes_with_input",
                     "Apply the radio register profile unless the observed status contains required mask 0x44, then scan the supplied byte pairs."),
    "FUN_07fcba7c": ("read_current_record_value_byte",
                     "Return the byte at offset six of the current record value when present."),
    "FUN_07fcbad0": ("map_record_flag_to_status_mask",
                     "Map the low bit of the record flag to either zero or the fixed negative mask."),
    "FUN_07fcbae2": ("initialize_shared_state_when_status_clear",
                     "Initialize shared output state when the status helper returns zero."),
    "FUN_07fcbafc": ("initialize_output_state_for_mode_five_hundred",
                     "Set output mode one and initialize shared state with 0x500."),
    "FUN_07fcbc2a": ("clear_secondary_object_handle_and_release_value",
                     "Clear the secondary object handle field and release its previous value."),
    "FUN_07fcc494": ("read_record_flag_bit_zero",
                     "Return bit zero of the selected record field, or zero when the record is absent."),
    "FUN_07fc8b20": ("set_shared_halfword_40_to_000b",
                     "Write 0x000b to the shared state halfword at offset 0x40."),
    "FUN_07fc8b2c": ("conditionally_dispatch_then_set_dash_state",
                     "Conditionally dispatch a mode value, then write 0x002d to shared state."),
    "FUN_07fc8b48": ("set_shared_halfword_40_to_0005",
                     "Write 0x0005 to the shared state halfword at offset 0x40."),
    "FUN_07fc8b54": ("set_shared_halfword_40_to_001e",
                     "Write 0x001e to the shared state halfword at offset 0x40."),
    "FUN_07fc8b60": ("set_shared_halfword_40_to_0006_at_8b60",
                     "Write 0x0006 to the shared state halfword at offset 0x40."),
    "FUN_07fc8b6c": ("conditionally_dispatch_then_set_dash_state_at_8b6c",
                     "Conditionally dispatch a mode value, then write 0x002d to shared state."),
    "FUN_07fc8b88": ("set_shared_halfword_40_to_0005_at_8b88",
                     "Write 0x0005 to the shared state halfword at offset 0x40."),
    "FUN_07fc8b94": ("set_shared_halfword_40_to_001e_at_8b94",
                     "Write 0x001e to the shared state halfword at offset 0x40."),
    "FUN_07fc8ba0": ("set_shared_halfword_40_to_0006_at_8ba0",
                     "Write 0x0006 to the shared state halfword at offset 0x40."),
    "FUN_07fc8bac": ("set_shared_halfword_40_to_0002_at_8bac",
                     "Write 0x0002 to the shared state halfword at offset 0x40."),
    "FUN_07fc8bb8": ("set_shared_halfword_40_to_0006_at_8bb8",
                     "Write 0x0006 to the shared state halfword at offset 0x40."),
    "FUN_07fc8bc4": ("set_shared_halfword_40_to_0002_at_8bc4",
                     "Write 0x0002 to the shared state halfword at offset 0x40."),
    "FUN_07fc8bd0": ("set_shared_halfword_40_to_0002_at_8bd0",
                     "Write 0x0002 to the shared state halfword at offset 0x40."),
    "FUN_07fc5f28": ("get_random_number",
                     "Return the value from the DA14585 ROM rand routine."),
    "FUN_07fc5f30": ("seed_random_number_generator",
                     "Call the DA14585 ROM srand routine."),
    "FUN_07fc5f64": ("clear_mode_flags_0x0011",
                     "Clear mode flag bits 0 and 4 through the shared flag updater."),
    "FUN_07fc5f70": ("clear_mode_flags_0x0022_entry",
                     "Clear mode flag bits 1 and 5 through the shared flag updater."),
    "FUN_07fcb962": ("decode_halved_offset_minus_112",
                     "Return the low byte of the input shifted right one and reduced by 112."),
    "FUN_07fc1b30": ("convert_unsigned_integer_to_float_bits",
                     "Convert an unsigned integer to its IEEE-754 single-precision bit pattern."),
    "FUN_07fc1b66": ("shift_unsigned_64_right",
                     "Shift the 64-bit value formed by the high and low words right by the requested bit count."),
    "FUN_07fc4144": ("dispatch_callback_table_profile_4",
                     "Call the shared table dispatcher using the profile at 0x07fc4160 and four entries."),
    "FUN_07fc3564": ("dispatch_callback_table_profile_14",
                     "Forward the callback arguments through the shared dispatcher with profile 14."),
    "FUN_07fc3e40": ("dispatch_callback_table_profile_7",
                     "Forward the callback arguments through the shared dispatcher with profile 7."),
    "FUN_07fc1f00": ("wait_for_status_mask_0x04_set_minimum_32",
                     "Wait for status mask 0x04 to become set, with a 32-tick minimum elapsed interval."),
    "FUN_07fc1f10": ("wait_for_status_mask_0x20_clear_minimum_8_entry",
                     "Wait for status mask 0x20 to become clear, with an eight-tick minimum elapsed interval."),
    "FUN_07fc1ee8": ("wait_for_any_status_bit_or_elapsed_200",
                     "Poll the 16-bit status register at 0x50001378 until any bit is set or 200 timer units elapse."),
    "FUN_07fc1d88": ("report_hardfault_context_and_halt",
                     "Report the HardFault status and supplied exception context, set hardware status codes, and halt."),
    "FUN_07fc4110": ("submit_display_code_status_record",
                     "Create and submit a type-0x1b record containing lookup data for display code 0xfc."),
    "FUN_07fc2ff4": ("submit_display_code_record_for_fd",
                     "Create and submit a type-0x1b record for display code 0xfd with zeroed trailing fields."),
    "FUN_07fc1df8": ("handle_nmi_and_report_context",
                     "Update the interrupt-control registers, wait for the NMI status flag, report its context, and resume."),
    "FUN_07fc566c": ("initialize_peripheral_control_state",
                     "Set peripheral control word fields, enable bits zero through two, and set the shared enabled byte."),
    "FUN_07fc9830": ("clear_shared_state_and_mmio_flag",
                     "Clear the shared state word, call the fixed ROM service, and clear bit 31 of the control register."),
    "FUN_07fc7f68": ("read_device_bytes_into_buffer",
                     "Check the radio profile, issue the command, and copy the requested response bytes into the caller's buffer."),
    "FUN_07fc8850": ("send_device_command_pair",
                     "Check the radio profile, then transmit the two supplied command bytes through the packed-input helper."),
    "FUN_07fc7308": ("read_sensor_conversion_result",
                     "Start a peripheral conversion, wait for completion, return its result, and restore the prior control settings."),
    "FUN_07fcaf60": ("set_control_bit_15_clear_bits_0_1",
                     "Set bit 15, clear bits zero and one, and preserve bits 2 through 14 in the control word."),
    "FUN_07fcc3cc": ("publish_transfer_progress",
                     "Allocate and submit a type-0xfc04 record containing the current 32-bit transfer progress."),
    "FUN_07fcc3f0": ("publish_transfer_status_code",
                     "Allocate and submit a type-0xfc05 record containing the one-byte transfer status code."),
    "FUN_07fc3a38": ("update_mode_flags_and_transitions",
                     "Apply mode flag changes and run the associated transition handlers."),
    "FUN_07fc3b78": ("switch_display_state_and_run_hooks",
                     "Switch the display state, update associated output state, and run hooks."),
    "FUN_07fc97c0": ("switch_display_state_to_one",
                     "Call the display state switcher with state value one."),
    "FUN_07fc97ca": ("select_operation_four_and_reset_state",
                     "Select operation four and reset display state when it equals 0x0e."),
    "FUN_07fc3b40": ("switch_to_display_state_zero_if_fourteen",
                     "Switch display state to zero when the current state is 0x0e."),
    "FUN_07fcaf78": ("build_mode_status_record_operation_zero",
                     "Build a mode-status record selecting operation zero."),
    "FUN_07fc1c0c": ("write_one_to_peripheral_status_register",
                     "Write the value one to peripheral status register 0x50001508."),
    "FUN_07fc1e50": ("apply_device_state_radio_profile",
                     "Apply the radio register profile used while processing device and motion state."),
    "FUN_07fc1f20": ("wait_for_status_mask_0x02_set_minimum_8",
                     "Wait until status mask 0x02 is set or eight timer units elapse."),
    "FUN_07fc7f58": ("restore_radio_profile_before_command",
                     "Apply the radio register profile used to restore readiness before radio commands."),
    "FUN_07fc82a0": ("configure_radio_state_from_profile",
                     "Configure radio state using the referenced profile."),
    "FUN_07fcb96c": ("set_shared_flags_0x07",
                     "Set bits zero through two in the selected shared flags word."),
    "FUN_07fcc528": ("clear_shared_control_bit_zero",
                     "Clear bit zero in the shared control register at 0x50001104."),
    "FUN_07fcd8a0": ("clear_state_counter_at_offset_four",
                     "Clear the state counter at offset four when it is nonzero."),
    "FUN_07fcebc4": ("clear_state_word_at_offset_1c",
                     "Clear the state word at offset 0x1c when it is nonzero."),
    "FUN_07fc1e60": ("process_radio_state_if_active",
                     "Run the radio-state handler when the state field at offset 0x4c is active."),
    "FUN_07fc8004": ("clear_radio_flag_and_configure_state",
                     "Clear the state byte at offset 0x1b and apply the selected radio profile."),
    "FUN_07fc6440": ("store_byte_in_table_by_high_index",
                     "Store the input byte in the table slot selected by the high index byte."),
    "FUN_07fc72f0": ("copy_six_profile_bytes_from_offsets_two_to_seven",
                     "Copy six bytes from profile offsets two through seven."),
    "FUN_07fcaf84": ("set_state_flag_and_switch_to_twenty_two",
                     "Set the state flag at offset 0x94 and switch display state to 0x16."),
    "FUN_07fcbbdc": ("switch_to_state_zero_unless_flag_is_one",
                     "Switch to display state zero when the state flag is not one."),
    "FUN_07fc5654": ("increment_character_by_ten_wrap_at_d",
                     "Add ten to the selected character, wrapping to line feed past 'd'."),
    "FUN_07fc1cdc": ("update_selected_hot_bit_10",
                     "Call the shared selected-bit updater with bit index 10."),
    "FUN_07fc1ce6": ("update_selected_hot_bit_11",
                     "Call the shared selected-bit updater with bit index 11."),
    "FUN_07fc1cf0": ("update_selected_hot_bit_12",
                     "Call the shared selected-bit updater with bit index 12."),
    "FUN_07fc1cfa": ("update_selected_hot_bit_13",
                     "Call the shared selected-bit updater with bit index 13."),
    "FUN_07fc1d04": ("update_selected_hot_bit_14",
                     "Call the shared selected-bit updater with bit index 14."),
    "FUN_07fc24c6": ("search_queue_and_insert_limit_twenty",
                     "Search the circular record queue and insert with limit 0x14."),
    "FUN_07fc24d0": ("search_queue_and_insert_limit_one",
                     "Search the circular record queue and insert with limit one."),
    "FUN_07fc5694": ("select_dispatch_operation_two",
                     "Build a dispatch record selecting operation two."),
    "FUN_07fc97ac": ("switch_to_display_state_three_if_flag_clear",
                     "Switch to display state three when flag bit zero is clear."),
    "FUN_07fc97d8": ("switch_to_display_state_four_if_flag_clear",
                     "Switch to display state four when flag bit one is clear."),
    "FUN_07fc9880": ("call_divider_for_indexed_record",
                     "Compute the indexed record address and call the ROM unsigned divider."),
    "FUN_07fca904": ("copy_literal_to_shared_state_halfword",
                     "Copy the adjacent literal halfword into shared state at offset 0x40."),
    "FUN_07fcad54": ("format_shared_value_and_set_flag_40",
                     "Format the selected shared value and set the byte at offset 0x45 to 0x40."),
    "FUN_07fca9b4": ("format_shared_value_and_set_flag_10_at_a9b4",
                     "Format a shared value and set the byte at offset 0x45 to 0x10."),
    "FUN_07fcaac8": ("format_shared_value_and_set_flag_10_entry",
                     "Format a shared value and set the byte at offset 0x45 to 0x10."),
    "FUN_07fcbbc4": ("clear_shared_flag_and_switch_to_state_zero_entry",
                     "Clear the shared flag when set, then switch display state to zero."),
    "FUN_07fc2f8c": ("advance_queue_tail_if_nonempty",
                     "Advance the ring queue tail modulo capacity when the queue is nonempty."),
    "FUN_07fc5808": ("populate_measurement_slot_when_empty",
                     "Fill the selected measurement record when its state is empty."),
    "FUN_07fc5ab0": ("build_service_information_record",
                     "Build and submit the service-information record."),
    "FUN_07fc6a40": ("parse_service_record_and_update_state",
                     "Dispatch parsed service-record types to response/state updates."),
    "FUN_07fc6bf4": ("handle_incoming_service_record",
                     "Validate an incoming record, search history when needed, and build a reply."),
    "FUN_07fc6fc0": ("handle_incoming_packet",
                     "Parse packet records and dispatch the matching handler."),
    "FUN_07fc8134": ("configure_command_record",
                     "Build the shared command record and dispatch the selected mode."),
    "FUN_07fc77fc": ("build_measurement_packet_and_handle_reply",
                     "Build per-record sensor requests, collect results, and submit the response."),
    "FUN_07fc44a8": ("update_clock_and_process_events",
                     "Update clock state and process timed device events."),
    "FUN_07fcdd68": ("process_sensor_frame_and_update_state",
                     "Process the incoming sensor frame and update shared measurement state."),
    "FUN_07fc0bac": ("process_incoming_data_fragment",
                     "Accumulate incoming data fragments in per-channel buffers, maintain their offsets, and dispatch completed records."),
    "FUN_07fc1b88": ("round_v204_float_value_from_status",
                     "Leave nonnegative status unchanged; increment negative results and clear the low bit at the INT32_MIN tie."),
    "FUN_07fc08ba": ("process_ble_link_layer_event_payload",
                     "Check link-layer event and session state, then build the selected message record from reversed payload blocks or 0xff fill."),
    "FUN_07fc60ec": ("handle_per_slot_ble_data_record",
                     "Use the slot index from the request to update its 0x7a-byte record, copy a type-7 payload, or create the type-0 notification."),
    "FUN_07fc50b4": ("queue_computed_status_records",
                     "Build and enqueue a type-3 record with computed state values, then a type-0x13 record from shared status fields."),
}
SECTION_OVERRIDES = {
    "07fcdd68": (
        "process_sensor_frame_entry_dd68",
        "Set up sensor-frame state, record incoming samples, update short sample "
        "histories, and enter the measurement and classification paths.",
        "process_sensor_frame_and_update_state",
        "high"),
    "07fce194": (
        "sensor_frame_rate_continuation_e194",
        "Update the per-record counter and result history; periodically estimate "
        "pulse rate, apply bounded result changes, then continue into shared-state processing.",
        "process_sensor_frame_and_update_state",
        "high"),
    "07fce6b0": (
        "sensor_frame_state_continuation_e6b0",
        "Resume sensor-frame processing with inherited register and stack state, "
        "update rolling measurement values, and continue sensor-result reporting.",
        "process_sensor_frame_and_update_state",
        "high"),
    "07fc046e": (
        "decode_packet_into_output_record_entry",
        "Initialize the output record, derive the callback result and status "
        "nibble, then branch to the continuation block.",
        "decode_packet_into_output_record",
        "high"),
    "07fc04bc": (
        "decode_packet_into_output_record_continuation",
        "Clamp the encoded payload length to 31, copy the fixed prefix and "
        "variable payload, store the status flag, and return.",
        "decode_packet_into_output_record",
        "high"),
    "07fca7a0": (
        "dispatch_command_response_by_id",
        "Dispatch IDs 0x40 through 0x44 through the jump table; route other "
        "IDs to the shared command-response cases.",
        "build_command_response_from_status",
        "high"),
    "07fca7c8": (
        "handle_command_response_cases_and_finalize",
        "Handle response cases for IDs 0x40 through 0x44, 1, and 7; copy six "
        "shared bytes for ID 1, write fixed response bytes for the others, "
        "then update status and return code.",
        "build_command_response_from_status",
        "high"),
}

EXTRA_SECTIONS = (
    ("0x07fc6060", "FUN_07fc5fb0_default", "dispatch_switch_default_case_from_5fb0",
     "firmware/reconstructed/exact_clang18/manual_sources/dispatch_indexed_message_by_id.c",
     "Default branch block for the switch dispatcher."),
    ("0x07fc60da", "FUN_07fc5fb0_return", "return_from_switch_dispatch_5fb0",
     "firmware/reconstructed/exact_clang18/manual_sources/dispatch_indexed_message_by_id.c",
     "Return block shared by the switch dispatcher."),
    ("0x07fc65fc", "FUN_07fc65d0_return", "return_from_switch_dispatch_65d0",
     "firmware/reconstructed/exact_clang18/manual_sources/07fc65d0_multirange.c",
     "Return block shared by the switch dispatcher."),
    ("0x07fc6614", "FUN_07fc65d0_default", "dispatch_switch_default_case_from_65d0",
     "firmware/reconstructed/exact_clang18/manual_sources/07fc65d0_multirange.c",
     "Default branch block for the switch dispatcher."),
    ("0x07fc0a94", "FUN_07fc0a2a_indirect", "dispatch_indirect_record_path_0a2a",
     "firmware/reconstructed/exact_clang18/manual_sources/07fc0a2a_multirange.c",
     "Indirect dispatch block for the record initialization path."),
)

STOP = {
    "a", "an", "and", "as", "at", "by", "for", "from", "if", "in", "into",
    "is", "it", "its", "of", "on", "or", "the", "then", "to", "with", "when",
    "whose", "that", "this", "only", "each", "one", "both", "before", "after",
}
GENERIC = re.compile(
    r"address[- ]exact|fixed[- ]address|fixed address|thumb transcription|"
    r"executable range|decompiler output|ghidra|not original source|"
    r"reconstruction of v204|instruction transcription|range is pinned|"
    r"warning:|equivalent c:|ghidra pseudocode begins", re.I)
FUN_RE = re.compile(r"^(thunk_)?FUN_([0-9a-fA-F]{8})(.*)$")
C_LITERAL_RE = re.compile(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'')


def read_csv(path: Path) -> list[dict[str, str]]:
    with path.open(newline="") as stream:
        return list(csv.DictReader(stream))


def invoked_macro_definitions(path: Path, source: str) -> str:
    """Read definitions of source-invoked SR08 macros from local headers."""
    names = set(re.findall(r"\b(SR08_DEFINE_[A-Z0-9_]+)\s*\(", source))
    if not names:
        return ""

    headers: list[Path] = []
    pending = [path]
    visited: set[Path] = set()
    while pending:
        current = pending.pop()
        current = current.resolve()
        if current in visited or not current.is_file():
            continue
        visited.add(current)
        text = current.read_text(errors="replace")
        for include in re.findall(r'^\s*#\s*include\s*"([^"]+)"', text, re.M):
            candidates = (ROOT / include, current.parent / include)
            header = next((candidate for candidate in candidates if candidate.is_file()), None)
            if header is not None:
                pending.append(header)
                headers.append(header)

    definitions: list[str] = []
    for header in headers:
        lines = header.read_text(errors="replace").splitlines()
        for index, line in enumerate(lines):
            match = re.match(r"\s*#\s*define\s+(SR08_DEFINE_[A-Z0-9_]+)\b", line)
            if not match or match.group(1) not in names:
                continue
            definition = [line]
            while definition[-1].rstrip().endswith("\\") and index + len(definition) < len(lines):
                definition.append(lines[index + len(definition)])
            definitions.extend(definition)
    return "\n".join(definitions)


def source_style(path: Path) -> str:
    text = path.read_text(errors="replace")
    text += "\n" + invoked_macro_definitions(path, text)
    # Comments often discuss "assembly" without the function containing any.
    text = re.sub(r"/\*.*?\*/|//[^\n]*", "", text, flags=re.S)
    # A naked function has no compiler-generated prologue or epilogue. In this
    # reconstruction those bodies are explicitly pinned Thumb sequences, not
    # ordinary C merely because the instructions use an asm string.
    if re.search(r"\bnaked\b", text):
        return "pinned Thumb instructions"
    has_exact_instruction = ".inst.n" in text or ".inst.w" in text
    if has_exact_instruction:
        # Some readable C functions pin just one instruction with .inst.
        # Classify the function body after removing inline-assembly blocks so
        # those mixed implementations are not reported as assembly-only.
        definition = re.search(r"\)\s*\{", text)
        if definition:
            body = text[definition.end():]
            body = re.sub(r"__asm__\s*(?:volatile\s*)?\(.*?\);", "", body,
                          flags=re.S)
            body = body.split("}", 1)[0]
            if ";" in body:
                return "C with inline assembly; exact instruction sequence"
        return "pinned Thumb instructions"
    if re.search(r"\b(?:asm|__asm__)\b", text):
        return "C with inline assembly"
    return "C"


def analysis_source_path(row: dict[str, str], source_paths: dict[int, Path]) -> Path:
    """Prefer the current manifested reconstruction over analysis-era files."""
    address = int(row["address"], 16)
    current = source_paths.get(address)
    if current is not None and current.is_file():
        return current

    if row["_manifest"] == MANUAL.name:
        return EXACT / "manual_sources" / row["_source"]
    if row["_manifest"] == GLOBALS.name:
        return EXACT / "literal_scan_functions" / row["_source"]
    return FUNCTIONS / f"{address:08x}.c"


def description(path: Path | None, symbol: str) -> str:
    if path and path.exists():
        text = C_LITERAL_RE.sub(" ", path.read_text(errors="replace"))
        for block in re.findall(r"/\*([\s\S]*?)\*/", text):
            lines = [re.sub(r"^\s*\* ?", "", line).strip()
                     for line in block.splitlines()]
            lines = [line for line in lines if line]
            cleaned = []
            for line in lines:
                line = re.sub(r"^FUN_[0-9a-fA-F]{8}(?:_[\w]+)?\s*:\s*", "", line)
                line = re.sub(r"^Address-exact (?:C )?reconstruction of V204 FUN_[^.;]+[.;]?\s*", "", line, flags=re.I)
                if line and not GENERIC.search(line):
                    cleaned.append(line)
            candidate = " ".join(cleaned)
            candidate = re.sub(r"\s+", " ", candidate).strip(" -*")
            if len(candidate) >= 24:
                sentence = re.split(r"(?<=[.!?])\s+", candidate)[0]
                if len(sentence) >= 24 and not GENERIC.search(sentence):
                    return sentence[:240]

    return "Behavior needs review; see the linked Ghidra pseudocode and source."


def slug(text: str, address: str) -> str:
    words = re.findall(r"[a-z0-9]+", text.lower())
    words = [word for word in words if word not in STOP and not word.isdigit()]
    if not words:
        words = ["firmware", "routine"]
    return "_".join(words[:6]) + f"_at_{address[-4:].lower()}"


def classify_trivial_c(path: Path | None, address: str) -> tuple[str, str] | None:
    """Name only mechanically obvious constant-return and spin-loop bodies."""
    if path is None or not path.exists():
        return None
    text = path.read_text(errors="replace")
    text = C_LITERAL_RE.sub(" ", text)
    text = re.sub(r"/\*[\s\S]*?\*/|//[^\n]*", " ", text)
    definition = re.search(r"\b[A-Za-z_]\w*\s*\([^;{}]*\)\s*\{", text)
    if not definition:
        return None
    start = definition.end()
    depth = 1
    end = start
    while end < len(text) and depth:
        if text[end] == "{":
            depth += 1
        elif text[end] == "}":
            depth -= 1
        end += 1
    if depth:
        return None
    body = re.sub(r"\s+", "", text[start:end - 1])
    suffix = address[-4:].lower()
    if re.fullmatch(r"(?:do\{\}while\((?:true|1)\);|while\((?:true|1)\)\{\})", body):
        return f"nonreturning_spin_loop_at_{suffix}", "Loop forever without changing device state."
    returned = re.fullmatch(r"return(0x[0-9a-fA-F]+|[0-9]+)?;", body)
    if returned:
        value = returned.group(1)
        if value is None:
            return f"return_without_action_at_{suffix}", "Return immediately without changing device state."
        number = int(value, 0)
        return f"return_constant_{number}_at_{suffix}", f"Return the constant value {number}."
    return None


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--output", type=Path,
        help="write a generated draft to this path; the checked-in build catalog is never overwritten by default",
    )
    args = parser.parse_args()
    if args.output is not None and args.output.resolve() == AUTHORITATIVE_CATALOG.resolve():
        parser.error("--output cannot replace the checked-in catalog; choose a draft path")
    manifest = json.loads(SOURCE_MANIFEST.read_text())
    source_paths = {int(item["address"]): ROOT / item["source"]
                    for item in manifest["sources"]}
    rows: list[dict[str, str]] = []
    for path, size_field in ((DIRECT, "target_size"), (GLOBALS, "range_size"), (MANUAL, "range_size")):
        for row in read_csv(path):
            if row.get("status") != "exact":
                continue
            row = dict(row)
            row["_manifest"] = path.name
            row["_size"] = row.get(size_field, "")
            row["_source"] = row.get("source_file", "")
            rows.append(row)

    index: dict[str, dict[str, str]] = {}
    with INDEX.open(newline="") as stream:
        for row in csv.DictReader(stream, delimiter="\t"):
            index[row["name"]] = row

    descriptions: dict[str, tuple[str, Path | None]] = {}
    for row in rows:
        match = FUN_RE.match(row["function"])
        if not match:
            continue
        canonical = ("thunk_" if match.group(1) else "") + f"FUN_{match.group(2).lower()}"
        path = analysis_source_path(row, source_paths)
        desc = description(path, row["function"])
        previous = descriptions.get(canonical)
        if previous is None or ("Behavior needs review" in previous[0] and
                                "Behavior needs review" not in desc):
            descriptions[canonical] = (desc, path)

    canonical_names: dict[str, str] = {}
    canonical_summaries: dict[str, str] = {}
    canonical_quality: dict[str, str] = {}
    for name, info in index.items():
        address = info["address"].lower().removeprefix("0x")
        canonical = name
        if canonical in OVERRIDES:
            override = OVERRIDES[canonical]
            alias, desc = override[:2]
            quality = override[2] if len(override) > 2 else "high"
        else:
            desc = descriptions.get(canonical, ("Behavior needs review; see the linked Ghidra pseudocode and source.", None))[0]
            quality = "medium" if not GENERIC.search(desc) and not desc.startswith("Behavior needs review") else "low"
            if canonical.startswith("thunk_FUN_"):
                target = canonical.removeprefix("thunk_")
                target_alias = (OVERRIDES.get(target, (None,))[0] or
                                slug(descriptions.get(target, ("firmware routine", None))[0],
                                     target.removeprefix("FUN_")[-4:]))
                alias = f"thunk_to_{target_alias}_from_{address[-4:]}"
                desc = f"Tail-call thunk to {target}; preserves the original entry address."
                quality = "high"
            else:
                simple = classify_trivial_c(descriptions.get(canonical, ("", None))[1], address)
                if simple:
                    alias, desc = simple
                    quality = "high"
                else:
                    alias = (slug(desc, address) if quality != "low"
                             else f"unclassified_routine_at_{address[-4:]}")
        canonical_names[canonical] = alias
        canonical_summaries[canonical] = desc
        canonical_quality[canonical] = quality

    # Manual function rows can include original-entry thunks absent from the
    # decompiler index. Apply explicit names to those rows as well.
    for row in rows:
        match = FUN_RE.match(row["function"])
        if not match:
            continue
        canonical = ("thunk_" if match.group(1) else "") + f"FUN_{match.group(2).lower()}"
        override = OVERRIDES.get(canonical)
        if override:
            alias, desc = override[:2]
            quality = override[2] if len(override) > 2 else "high"
            canonical_names[canonical] = alias
            canonical_summaries[canonical] = desc
            canonical_quality[canonical] = quality

    # Add readable per-section aliases, including split blocks belonging to a function.
    output_rows: list[dict[str, str]] = []
    used: set[str] = set()
    for row in rows:
        symbol = row["function"]
        address = row["address"].lower().removeprefix("0x")
        match = FUN_RE.match(symbol)
        if not match:
            continue
        canonical = ("thunk_" if match.group(1) else "") + f"FUN_{match.group(2).lower()}"
        family = canonical_names.get(canonical, slug("Behavior needs review", address))
        suffix = match.group(3)
        alias = family
        if suffix:
            suffix = suffix.strip("_")
            range_match = re.fullmatch(r"(?:exact|part|extra)(\d*)", suffix)
            if range_match:
                if range_match.group(1):
                    alias = f"{family}_range{int(range_match.group(1)) + 1}"
            elif suffix in {"entry", "body", "exit", "dispatch", "cases", "fault", "default", "return"}:
                alias = f"{family}_{suffix}"
            else:
                alias = f"{family}_{re.sub(r'[^a-zA-Z0-9]+', '_', suffix).strip('_')}"
        if symbol == "FUN_07fc5808":
            alias = "populate_measurement_slot_when_empty"
        if symbol == "FUN_07fc5fb0_cases_low":
            alias = f"{family}_cases_2_and_3"
        elif symbol == "FUN_07fc5fb0_cases_high":
            alias = f"{family}_cases_5_to_7"
        section_override = SECTION_OVERRIDES.get(address)
        readable_function = canonical_names.get(canonical, canonical)
        summary = canonical_summaries.get(
            canonical, "Behavior needs review; see the linked Ghidra pseudocode and source.")
        confidence = canonical_quality.get(canonical, "low")
        if section_override:
            alias, summary, readable_function, confidence = section_override
        if alias in used:
            alias = f"{alias}_section_{address[-4:]}"
        used.add(alias)
        path = analysis_source_path(row, source_paths)
        style = source_style(path) if path.exists() else "C source unavailable"
        output_rows.append({
            "address": f"0x{address}", "original_symbol": symbol,
            "readable_symbol": alias,
            "readable_function": readable_function,
            "summary": summary, "source_style": style,
            "confidence": confidence,
            "source_file": row["_source"], "manifest": row["_manifest"],
        })

    for address, symbol, alias, source, summary in EXTRA_SECTIONS:
        output_rows.append({
            "address": address, "original_symbol": symbol,
            "readable_symbol": alias,
            "readable_function": canonical_names.get(
                re.match(r"^(?:thunk_)?FUN_[0-9a-fA-F]{8}", symbol).group(0), alias),
            "summary": summary, "source_style": "C with inline assembly",
            "confidence": "high", "source_file": Path(source).name,
            "manifest": "extra linker section",
        })

    # Preserve reviewed names and summaries when regenerating a draft. Match
    # both the address and original symbol so a changed analysis range is
    # regenerated instead of inheriting stale metadata from another section.
    if AUTHORITATIVE_CATALOG.exists():
        with AUTHORITATIVE_CATALOG.open(newline="") as stream:
            curated = {row["address"].lower(): row
                       for row in csv.DictReader(stream)}
        for row in output_rows:
            reviewed = curated.get(row["address"].lower())
            if not reviewed or reviewed["original_symbol"] != row["original_symbol"]:
                continue
            for field in ("readable_symbol", "readable_function", "summary",
                          "confidence", "source_file"):
                row[field] = reviewed[field]

    fields = ["address", "original_symbol", "readable_symbol", "readable_function",
              "summary", "source_style", "confidence", "source_file", "manifest"]
    if args.output is not None:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        with args.output.open("w", newline="") as stream:
            writer = csv.DictWriter(stream, fieldnames=fields)
            writer.writeheader()
            writer.writerows(output_rows)
        print(f"wrote {len(output_rows)} draft section names to {args.output}")
    else:
        print(f"generated {len(output_rows)} draft section names; no file written")
        print(f"authoritative build catalog remains {AUTHORITATIVE_CATALOG}")
    print(f"low-confidence names: {sum(r['confidence'] == 'low' for r in output_rows)}")


if __name__ == "__main__":
    main()
