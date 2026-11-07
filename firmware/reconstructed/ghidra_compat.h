/* Minimal type and address shim for compiling individual Ghidra pseudocode files. */
#include <stdbool.h>
#include <stdint.h>

typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef uint8_t byte;
typedef uint16_t ushort;
typedef uint32_t uint;
typedef void code(void);

/* Ghidra DAT names refer to 32-bit values loaded from these literal addresses. */
#define DAT_07fc438c (*(uint32_t *)(uintptr_t)0x07fc438c)
#define DAT_07fc4390 (*(uint32_t *)(uintptr_t)0x07fc4390)
#define DAT_07fc4394 (*(uint32_t *)(uintptr_t)0x07fc4394)
#define DAT_07fc4398 (*(uint32_t *)(uintptr_t)0x07fc4398)
#define DAT_07fc439c (*(uint32_t *)(uintptr_t)0x07fc439c)
#define DAT_07fc43a0 (*(uint32_t *)(uintptr_t)0x07fc43a0)
#define DAT_07fc4434 (*(uint32_t *)(uintptr_t)0x07fc4434)
