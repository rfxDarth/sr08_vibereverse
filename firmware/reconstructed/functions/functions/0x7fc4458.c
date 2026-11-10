// rea decompile_all
// name: wait_shared_timer_delta_exceed_requested_at_4458
// address: 0x7fc4458
// body: available
// range: 0x7fc4458-0x7fc449d inclusive
// non_contiguous: false
// provider: Ghidra 12.1.4 (ghidra)
// analysis_profile: 14dc6cca2dda7ca9b9817d42fff240a120b5286328f7603ab0efca850f661166
// pseudocode: provider-specific; not original source


void wait_shared_timer_delta_exceed_requested_at_4458(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  uint *puVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  
  piVar1 = v204_clock_literal_pool.view.sensor_conversion_request_register;
  *v204_clock_literal_pool.view.sensor_conversion_request_register = 1;
  puVar2 = v204_clock_literal_pool.view.sensor_conversion_result_register;
  do {
  } while (*piVar1 != 0);
  uVar4 = *v204_clock_literal_pool.view.sensor_conversion_result_register;
  uVar3 = __aeabi_uidiv(param_1 << 3,5,param_3,param_4,param_2,uVar4,0);
  do {
    *piVar1 = 1;
    do {
    } while (*piVar1 != 0);
    uVar5 = *puVar2;
    if (uVar5 < uVar4) {
      uVar5 = uVar5 + 0x5000000;
    }
  } while (uVar5 - uVar4 <= uVar3);
  return;
}

