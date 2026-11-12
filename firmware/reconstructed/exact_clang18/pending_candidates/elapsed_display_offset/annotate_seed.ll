; ModuleID = 'Z:/home/drath/Projects/personal/code/sr08_ai/firmware/reconstructed/exact_clang18/pending_candidates/elapsed_display_offset/annotate_seed.c.txt'
source_filename = "Z:/home/drath/Projects/personal/code/sr08_ai/firmware/reconstructed/exact_clang18/pending_candidates/elapsed_display_offset/annotate_seed.c.txt"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv6m-arm-none-eabi"

%struct.sr08_cycle_control_state = type { [4 x i8], i32, i32, i32, i32, i32, [8 x i8], i32, [16 x i8], i32, i32 }
%struct.sr08_merged_globals_56d0 = type { [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, [40 x i8], [1 x %struct.app_env_tag] }
%struct.app_env_tag = type { i16, i8, i8, i8, %struct.bd_addr, i8, i8, i8 }
%struct.bd_addr = type { [6 x i8] }

@.str = private unnamed_addr constant [19 x i8] c"hours divisor seed\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [150 x i8] c"Z:/home/drath/Projects/personal/code/sr08_ai/firmware/reconstructed/exact_clang18/pending_candidates/elapsed_display_offset/annotate_seed.c.txt\00", section "llvm.metadata"
@cycle_control_state = external dso_local local_unnamed_addr global %struct.sr08_cycle_control_state, align 4
@merged_globals_56d0 = external dso_local global %struct.sr08_merged_globals_56d0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @convert_elapsed_sensor_time_minute_second_at_ace8 to i8*)], section "llvm.metadata"

; Function Attrs: minsize nounwind optsize
define hidden void @convert_elapsed_sensor_time_minute_second_at_ace8() #0 section ".text.convert_elapsed_sensor_time_minute_second_at_ace8" {
  %1 = tail call i32 @llvm.annotation.i32(i32 225, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.1, i32 0, i32 0), i32 9)
  %2 = shl i32 %1, 4
  %3 = load i32, i32* bitcast (i8* getelementptr inbounds (%struct.sr08_cycle_control_state, %struct.sr08_cycle_control_state* @cycle_control_state, i32 0, i32 8, i32 8) to i32*), align 4, !tbaa !8
  %4 = tail call i32 @__aeabi_uidiv(i32 %3, i32 %2) #3
  %5 = icmp ult i32 %3, 9001
  %6 = select i1 %5, i32 0, i32 %4
  tail call void @convert_quotient_remainder_sequence_ring_s_at_3148(i32 %6, i8* getelementptr inbounds (%struct.sr08_merged_globals_56d0, %struct.sr08_merged_globals_56d0* @merged_globals_56d0, i32 0, i32 11, i32 16), i32 2, i32 0) #3
  %7 = mul i32 %4, -3600
  %8 = add i32 %7, %3
  %9 = and i32 %8, 65535
  %10 = tail call i32 @__aeabi_uidiv(i32 %9, i32 60) #3
  %11 = select i1 %5, i32 0, i32 %10, !prof !13
  tail call void @convert_quotient_remainder_sequence_ring_s_at_3148(i32 %11, i8* getelementptr inbounds (%struct.sr08_merged_globals_56d0, %struct.sr08_merged_globals_56d0* @merged_globals_56d0, i32 0, i32 11, i32 19), i32 2, i32 0) #3
  store volatile i8 72, i8* getelementptr inbounds (%struct.sr08_merged_globals_56d0, %struct.sr08_merged_globals_56d0* @merged_globals_56d0, i32 0, i32 11, i32 18), align 2, !tbaa !14
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i32 @llvm.annotation.i32(i32, i8*, i8*, i32) #1

; Function Attrs: minsize optsize
declare dso_local i32 @__aeabi_uidiv(i32, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare dso_local void @convert_quotient_remainder_sequence_ring_s_at_3148(i32, i8*, i32, i32) local_unnamed_addr #2

attributes #0 = { minsize nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-dotprod,-dsp,-fp16fml,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-pacbti,-ras,-sb,-sha2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { minsize optsize "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-dotprod,-dsp,-fp16fml,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-pacbti,-ras,-sb,-sha2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"static_rwdata", i32 1}
!2 = !{i32 1, !"enumsize_buildattr", i32 1}
!3 = !{i32 1, !"armlib_unavailable", i32 0}
!4 = !{i32 1, !"branch-target-enforcement", i32 0}
!5 = !{i32 1, !"sign-return-address", i32 0}
!6 = !{i32 1, !"sign-return-address-all", i32 0}
!7 = !{!"Component: ARM Compiler 6.16 Tool: armclang [5dfeb700]"}
!8 = !{!9, !12, i64 44}
!9 = !{!"elapsed_display_view", !10, i64 0, !12, i64 44}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!10, !10, i64 0}
