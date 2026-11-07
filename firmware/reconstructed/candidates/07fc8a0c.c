#include <stdint.h>
#include <stdbool.h>
typedef uint32_t uint;
typedef uint8_t undefined1;
typedef uint16_t undefined2;
typedef uint32_t undefined4;
typedef uint64_t undefined8;
typedef void code();
typedef uint8_t byte;
typedef uint16_t ushort;
typedef unsigned long ulong;
typedef unsigned long long ulonglong;
typedef long long longlong;
#define CONCAT44(high, low) ((((uint64_t)(high)) << 32) | (uint32_t)(low))
#define DataSynchronizationBarrier(x) __asm__ volatile ("dsb sy" ::: "memory")
#define InstructionSynchronizationBarrier(x) __asm__ volatile ("isb sy" ::: "memory")
#define enableIRQinterrupts() __asm__ volatile ("cpsie i" ::: "memory")
#define DAT_07fc8b14 ((volatile uint16_t*)0x50001310u)
#define DAT_07fc8b18 ((volatile uint16_t*)0x50001354u)
#define DAT_07fc8b1c (0x07fd0320u)



undefined1 FUN_07fc8a0c(undefined2 param_1)

{
  volatile undefined2 *puVar1;
  volatile ushort *puVar2;
  uint uVar3;
  undefined1 uVar4;
  
  FUN_07fc1f20();
  __asm__ volatile ("ldr %0, [pc, #252]" : "=r" (puVar1));
  *puVar1 = param_1;
  FUN_07fc1f20();
  *puVar1 = 0x100;
  FUN_07fc1f00();
  __asm__ volatile ("ldr %0, [pc, #240]" : "=r" (puVar2));
  if ((puVar2[0x16] & 1) == 0) {
    uVar3 = FUN_07fc1ee8(*puVar2);
    uVar4 = (undefined1)*puVar1;
  }
  else {
    uint32_t rom_arg;
    __asm__ volatile ("ldr %0, [pc, #224]" : "=r" (rom_arg));
    FUN_07fc532c(rom_arg,0x76,1);
    uVar3 = (uint)*puVar2;
    uVar4 = 0;
  }
  FUN_07fc1f00(uVar3);
  FUN_07fc1f10();
  return uVar4;
}

