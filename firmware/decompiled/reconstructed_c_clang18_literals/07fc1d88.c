#include <stdint.h>
#include <stdbool.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef uint8_t byte;
typedef uint16_t ushort;
typedef unsigned long ulong;
typedef unsigned long long ulonglong;
typedef long long longlong;
#define CONCAT44(high, low) ((((uint64_t)(high)) << 32) | (uint32_t)(low))
#define DataSynchronizationBarrier(x) __asm__ volatile ("dsb sy" ::: "memory")
#define InstructionSynchronizationBarrier(x) __asm__ volatile ("isb sy" ::: "memory")
#define enableIRQinterrupts() __asm__ volatile ("cpsie i" ::: "memory")
#define DAT_07fc1da0 ((uint16_t*)0x50003100u)
#define DAT_07fc1da4 ((uint16_t*)0x50003302u)



void FUN_07fc1d88(undefined4 param_1)

{
  undefined2 *puVar1;
  
  puVar1 = DAT_07fc1da0;
  *DAT_07fc1da0 = 200;
  FUN_07fc5e54(1,param_1);
  *puVar1 = 200;
  *DAT_07fc1da4 = 8;
  do {
                    
  } while( true );
}

