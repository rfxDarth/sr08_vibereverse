#ifndef SR08_DISPLAY_CODE_LOOKUP_H
#define SR08_DISPLAY_CODE_LOOKUP_H

#include <stddef.h>
#include <stdint.h>

struct sr08_display_code_lookup_pair {
    uint8_t mode;
    uint8_t value;
};

enum { SR08_DISPLAY_CODE_LOOKUP_PAIR_COUNT = 10 };

/* The lookup pairs are the tail of the shared table referenced by the
 * packet/display helpers. This view names that tail without assigning
 * meaning to the preceding 0x66 bytes.
 */
struct sr08_display_code_lookup_table {
    uint8_t reserved_prefix[0x66];
    struct sr08_display_code_lookup_pair pairs[SR08_DISPLAY_CODE_LOOKUP_PAIR_COUNT];
};

_Static_assert(offsetof(struct sr08_display_code_lookup_table, pairs) == 0x66,
               "display-code lookup pairs must begin at byte 0x66");
_Static_assert(sizeof(struct sr08_display_code_lookup_pair) == 2, "display-code lookup pairs must remain two bytes");
_Static_assert(sizeof(struct sr08_display_code_lookup_table) == 0x7a,
               "display-code lookup table view must end at byte 0x79");

#endif
