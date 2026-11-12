#!/usr/bin/env python3
"""Isolated literal-sharing experiment, not a firmware builder or acceptance gate.

Compile the actual C writer; vary input order of synthetic far/near caller
objects. No compiler output is rewritten. Optional analysis needs the existing
licensed ARM compiler and OEM reference solely for byte comparison.
"""
from pathlib import Path
import itertools, subprocess, sys
E=Path(__file__).resolve().parents[2];sys.path.insert(0,str(E))
import arm_compilers,build_v204 as b
p=Path('/tmp/sr08-alice-native-pool-order');p.mkdir(exist_ok=True)
c=arm_compilers.ArmCompilers(b.ARM_TOOLS_DIR)
name='write_shared_state_byte_45_and_word_40';native=p/'native_writer.o'
source=Path(__file__).parent/(name+'.c.txt')
c.run('ac6lto','armclang',*[flag for flag in arm_compilers.COMPILERS['ac6lto'][2] if flag!='-flto'],
      '-I',str(b.ROOT),'-x','c','-c',str(source),'-o',str(native),label='native C writer for isolated pool probe')
(p/'far.s').write_text('''    .syntax unified
    .thumb
    .section .text.far,"ax",%progbits
    .global far_reader
    .thumb_func
far_reader:
    ldr r0,__arm_cp.7fca914_copy_07fd56d0
    bx lr
    .balign 4
__arm_cp.7fca914_copy_07fd56d0:
    .long merged_globals_56d0
    .size __arm_cp.7fca914_copy_07fd56d0,4
''')
(p/'near.s').write_text('''    .syntax unified
    .thumb
    .section .text.reader,"ax",%progbits
    .global near_reader
    .thumb_func
near_reader:
    ldr r0,__arm_cp.7fcad54_20
    bx lr
    .reloc near_reader,R_ARM_NONE,__arm_cp.7fcad54_20
    .section .text.pool,"ax",%progbits
    .balign 4
    .global __arm_cp.7fcad54_20
__arm_cp.7fcad54_20:
    .long merged_globals_56d0
    .size __arm_cp.7fcad54_20,4
''')
for tag in ('far','near'):
 c.run('ac6lto','armclang','--target=arm-arm-none-eabi','-mcpu=cortex-m0','-mthumb','-c',str(p/(tag+'.s')),'-o',str(p/(tag+'.o')),label='native pool object-order context')
(p/'symbols.symdefs').write_text('#<SYMDEFS>#\n0x07fd56d0 D merged_globals_56d0\n')
(p/'layout.scat').write_text('LR 0x07fca914 {\n ER_FAR 0x07fca914 FIXED { *(.text.far) *(.text) }\n ER_WRITER 0x07fcacb8 FIXED { *(.text.'+name+') }\n ER_READER 0x07fcad54 FIXED { *(.text.reader) }\n ER_POOL 0x07fcad74 FIXED { *(.text.pool) }\n}\n')
expected=(b.ROOT/'firmware/V204.bin').read_bytes()[64+0xacb8:64+0xacd0]
objects={'native':native,'far':p/'far.o','near':p/'near.o'}
for order in itertools.permutations(objects):
 image=p/('_'.join(order)+'.axf')
 c.run('ac6lto','armlink','--lto','--cpu=Cortex-M0','--no_startup','--entry=far_reader','--keep='+name,'--keep=far_reader','--keep=near_reader','--keep=__arm_cp.7fcad54_20','--scatter='+str(p/'layout.scat'),*[str(objects[x]) for x in order],str(p/'symbols.symdefs'),'-o',str(image),label='native pool object-order test')
 raw=image.with_suffix('.bin');subprocess.run(['arm-none-eabi-objcopy','-O','binary','-j','ER_WRITER',str(image),str(raw)],check=True)
 print(order,'writer_bytes',len(raw.read_bytes()),'OEM_equal',raw.read_bytes()==expected,flush=True)
