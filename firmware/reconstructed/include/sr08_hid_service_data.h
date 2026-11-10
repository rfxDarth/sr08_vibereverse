#ifndef SR08_HID_SERVICE_DATA_H
#define SR08_HID_SERVICE_DATA_H

#include <stddef.h>
#include <stdint.h>

enum sr08_hid_attribute_uuid {
    SR08_ATT_UUID_PRIMARY_SERVICE = 0x2800,
    SR08_ATT_UUID_INCLUDE = 0x2802,
    SR08_ATT_UUID_CHARACTERISTIC = 0x2803,
    SR08_ATT_UUID_CLIENT_CONFIGURATION = 0x2902,
    SR08_ATT_UUID_EXTENDED_REPORT_REFERENCE = 0x2907,
    SR08_ATT_UUID_REPORT_REFERENCE = 0x2908,
    SR08_HID_UUID_INFORMATION = 0x2A4A,
    SR08_HID_UUID_REPORT_MAP = 0x2A4B,
    SR08_HID_UUID_CONTROL_POINT = 0x2A4C,
    SR08_HID_UUID_REPORT = 0x2A4D,
    SR08_HID_UUID_PROTOCOL_MODE = 0x2A4E,
    SR08_HID_UUID_BOOT_KEYBOARD_INPUT = 0x2A22,
    SR08_HID_UUID_BOOT_KEYBOARD_OUTPUT = 0x2A32,
    SR08_HID_UUID_BOOT_MOUSE_INPUT = 0x2A33,
};

enum sr08_hid_callback_address {
    SR08_HID_CALLBACK_ALLOCATE_AND_SEND_TYPED_MESSAGE = 0x07FC6999,
    SR08_HID_CALLBACK_DISPATCH_ATTRIBUTE_REQUEST = 0x07FC6DBD,
    SR08_HID_CALLBACK_SET_ATTRIBUTE_VALUE = 0x07FCC119,
    SR08_HID_CALLBACK_STORE_ATTRIBUTE_AND_NOTIFY = 0x07FCC415,
    SR08_HID_HANDLER_BUILD_MEASUREMENT_PACKET = 0x07FC77FD,
    SR08_HID_HANDLER_RELEASE_OBJECT_HANDLE = 0x07FC7527,
    SR08_HID_HANDLER_RETURN_WITHOUT_ACTION = 0x07FC7525,
    SR08_HID_HANDLER_CLEAR_SELECTED_SLOT_RECORDS = 0x07FC74D5,
};

struct sr08_hid_callback_mapping {
    uint32_t key;
    uint32_t callback_address;
} __attribute__((packed));

struct sr08_hid_attribute_template {
    uint32_t uuid; /* A 16-bit ATT UUID, zero-extended to one word. */
    uint32_t permissions;
    uint32_t maximum_length_and_flags; /* RWBLE 8 RI flag is bit 15. */
} __attribute__((packed));

struct sr08_hid_service_descriptor_template {
    uint32_t callback_map_address;
    uint32_t callback_map_count;
    struct sr08_hid_attribute_template attributes[23];
} __attribute__((packed));

/* Typed view into the 1002-byte constant pool at 0x07fcf6e2. */
struct sr08_hid_profile_data_view {
    uint8_t bytes_before_callback_map[0x7e];
    struct sr08_hid_callback_mapping callback_map[4];
    struct sr08_hid_service_descriptor_template service;
    uint32_t handler_addresses[4];
    uint8_t remaining_bytes[544];
} __attribute__((packed));

union sr08_hid_profile_data_region {
    uint8_t bytes[1002];
    struct sr08_hid_profile_data_view view;
} __attribute__((packed));

_Static_assert(sizeof(struct sr08_hid_callback_mapping) == 8, "HID callback mapping must remain two words");
_Static_assert(sizeof(struct sr08_hid_attribute_template) == 12, "HID attribute template must remain three words");
_Static_assert(offsetof(struct sr08_hid_service_descriptor_template, attributes) == 8,
               "HID attribute list must follow its two-word header");
_Static_assert(sizeof(struct sr08_hid_service_descriptor_template) == 284,
               "HID service descriptor template must remain 284 bytes");
_Static_assert(offsetof(struct sr08_hid_profile_data_view, callback_map) == 0x7e,
               "HID callback map must remain at address 0x07fcf760");
_Static_assert(offsetof(struct sr08_hid_profile_data_view, service) == 0x9e,
               "HID service template must remain at address 0x07fcf780");
_Static_assert(offsetof(struct sr08_hid_profile_data_view, handler_addresses) == 0x1ba,
               "HID handler addresses must remain at address 0x07fcf89c");
_Static_assert(sizeof(struct sr08_hid_profile_data_view) == 1002,
               "typed HID data view must cover the complete constant pool");
_Static_assert(sizeof(union sr08_hid_profile_data_region) == 1002,
               "HID data region must preserve its original section size");

#endif
