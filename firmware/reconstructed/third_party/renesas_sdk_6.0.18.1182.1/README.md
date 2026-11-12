# Dialog/Renesas SDK6 6.0.18.1182.1 system library

Copied from the user-provided official SDK folder
`DA145xx_SDK/6.0.18.1182.1/sdk/platform/system_library/output/Keil_5/da14585_586.lib`.
No binary patches were applied. The accompanying SDK license
(`doc/dialog_license.txt`) is retained verbatim.

Library SHA-256: b80bc142db1e045bd4f049112c06955797484970ba6164ca4b4dbcd8ab0afda3

V204 linked this SDK's `patch.o` and `rf_calibration.o`. Both members
reproduce V204's bytes exactly: patch.o's `.text` at 0x07fc01b4 and
`.constdata` at 0x07fcf15c, and rf_calibration.o's `.text` at 0x07fc16f8.
The later 6.0.22 `patch.o` adds functions and its `rf_calibration.o`
compares the `enable_rf_diag_irq()` mode with 15 instead of 1.
Only hash-verified members are linked; see ../../exact_clang18/build_v204.py.

`startup_DA14585_586.s` is copied unchanged from the same SDK folder
(`sdk/platform/arch/boot/ARM/startup_DA14585_586.s`, SHA-256
8ba065061346605d01af13c8e08c5ab0b03cbf9620675d5a2f555aee0e23af9e; Apache-2.0
licence header retained). Assembled by armasm 6.16 with `__MICROLIB` defined, its
`.text` area (Reset_Handler, NMI_Handler, HardFault_Handler, SVC_Handler,
PendSV_Handler, SysTick_Handler, Default_Handler and their literal pool)
reproduces V204's 80 bytes at 0x07fc0144 exactly; see
../../exact_clang18/build_v204.py (SDK_ASSEMBLY_SOURCES).
