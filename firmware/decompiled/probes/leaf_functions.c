/*
 * Simple C reconstructions for short V204 leaf functions.
 * Their addresses are distinct function-pointer targets recovered from V204.
 */
#include <stdint.h>

#define EMPTY(address) void FUN_##address(void) { }
#define RETURN_ZERO(address) uint32_t FUN_##address(void) { return 0; }
#define RETURN_ONE(address) uint32_t FUN_##address(void) { return 1; }
#define LOOP(address) void FUN_##address(void) { for (;;) { } }

LOOP(07fc017c)
LOOP(07fc017e)
LOOP(07fc0180)
LOOP(07fc0182)

EMPTY(07fc16c6)
EMPTY(07fc1e4c)
EMPTY(07fc31f4)
EMPTY(07fc57b4)
EMPTY(07fc5e50)
EMPTY(07fc5e52)
EMPTY(07fc5f7c)
EMPTY(07fc5f7e)
EMPTY(07fc7524)
EMPTY(07fcb828)
EMPTY(07fcb8d4)
EMPTY(07fcb960)
EMPTY(07fcbc28)
EMPTY(07fcc4ac)
EMPTY(07fcc4ae)

RETURN_ONE(07fc3028)
RETURN_ZERO(07fc653c)
RETURN_ZERO(07fc6560)
RETURN_ZERO(07fc6564)
RETURN_ZERO(07fc65c8)
RETURN_ZERO(07fc65cc)
RETURN_ZERO(07fc671c)
RETURN_ZERO(07fc6720)
RETURN_ZERO(07fc6bf0)
RETURN_ONE(07fca79c)
RETURN_ZERO(07fca844)
RETURN_ONE(07fca848)
RETURN_ZERO(07fcb8d0)
RETURN_ZERO(07fcb97c)
RETURN_ZERO(07fcbc3a)
