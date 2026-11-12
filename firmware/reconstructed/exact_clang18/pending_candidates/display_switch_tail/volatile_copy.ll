; ModuleID = 'Z:/home/drath/Projects/personal/code/sr08_ai/firmware/reconstructed/exact_clang18/pending_candidates/display_switch_tail/volatile_copy.c.txt'
source_filename = "Z:/home/drath/Projects/personal/code/sr08_ai/firmware/reconstructed/exact_clang18/pending_candidates/display_switch_tail/volatile_copy.c.txt"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv6m-arm-none-eabi"

%struct.sr08_merged_globals_5650 = type { [2 x i8], i8, [5 x i8], i8, i8, i8, i8, %union.anon, i8, [3 x i8], i8, [9 x i8], i8, [17 x i8], i16, [22 x i8], i32, %union.anon.0, [1 x %struct.gapc_bond_cfm*], [1 x %struct.gapc_bond_cfm*], %union.anon.2 }
%union.anon = type { [12 x i8] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [4 x i8], %struct.gapm_start_advertise_cmd* }
%struct.gapm_start_advertise_cmd = type opaque
%struct.gapc_bond_cfm = type opaque
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { [16 x i8], i32, i32, [4 x i8] }
%struct.display_state_descriptor = type { i16, i16, void (i32)*, void (i32)* }
%struct.sr08_merged_globals_56d0 = type { [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, [40 x i8], [1 x %struct.app_env_tag] }
%struct.app_env_tag = type { i16, i8, i8, i8, %struct.bd_addr, i8, i8, i8 }
%struct.bd_addr = type { [6 x i8] }
%struct.gpio_pin_ref = type { i8, i8 }

@.str = private unnamed_addr constant [22 x i8] c"newstate error %d,%d\0A\00", align 1
@merged_globals_5650 = external dso_local global %struct.sr08_merged_globals_5650, align 4
@display_state_descriptors = external dso_local local_unnamed_addr constant [35 x %struct.display_state_descriptor*], align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"shared one\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [147 x i8] c"Z:/home/drath/Projects/personal/code/sr08_ai/firmware/reconstructed/exact_clang18/pending_candidates/display_switch_tail/volatile_copy.c.txt\00", section "llvm.metadata"
@merged_globals_56d0 = external dso_local local_unnamed_addr global %struct.sr08_merged_globals_56d0, align 4
@display_low_pins = external dso_local local_unnamed_addr constant [7 x %struct.gpio_pin_ref], align 1
@display_high_pins = external dso_local local_unnamed_addr constant [6 x %struct.gpio_pin_ref], align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"mode flag one\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [25 x i8] c"systate %d switch to %d\0A\00", align 1

; Function Attrs: minsize nounwind optsize
define hidden void @switch_display_state_and_run_hooks(i32 %0) local_unnamed_addr #0 {
  %2 = alloca void (i32)*, align 4
  %3 = icmp ugt i32 %0, 35
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (i8*, ...) @arch_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %0, i32 36) #4
  br label %123

5:                                                ; preds = %1
  %6 = load i8, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 7, i32 0, i32 0), align 4, !tbaa !8
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %6, 30
  br i1 %8, label %123, label %9

9:                                                ; preds = %5, %12
  %10 = phi i32 [ %19, %12 ], [ 0, %5 ]
  %11 = icmp eq i32 %10, 35
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds [35 x %struct.display_state_descriptor*], [35 x %struct.display_state_descriptor*]* @display_state_descriptors, i32 0, i32 %10
  %14 = load %struct.display_state_descriptor*, %struct.display_state_descriptor** %13, align 4, !tbaa !11
  %15 = getelementptr inbounds %struct.display_state_descriptor, %struct.display_state_descriptor* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 4, !tbaa !13
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %17, %0
  %19 = add nuw nsw i32 %10, 1
  br i1 %18, label %20, label %9, !llvm.loop !16

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.display_state_descriptor, %struct.display_state_descriptor* %14, i32 0, i32 2
  %22 = load void (i32)*, void (i32)** %21, align 4, !tbaa !18
  br label %23

23:                                               ; preds = %9, %20
  %24 = phi void (i32)* [ %22, %20 ], [ null, %9 ]
  %25 = bitcast void (i32)** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25)
  store volatile void (i32)* %24, void (i32)** %2, align 4, !tbaa !11
  %26 = zext i8 %6 to i16
  br label %27

27:                                               ; preds = %30, %23
  %28 = phi i32 [ 0, %23 ], [ %36, %30 ]
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds [35 x %struct.display_state_descriptor*], [35 x %struct.display_state_descriptor*]* @display_state_descriptors, i32 0, i32 %28
  %32 = load %struct.display_state_descriptor*, %struct.display_state_descriptor** %31, align 4, !tbaa !11
  %33 = getelementptr inbounds %struct.display_state_descriptor, %struct.display_state_descriptor* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 4, !tbaa !13
  %35 = icmp eq i16 %34, %26
  %36 = add nuw nsw i32 %28, 1
  br i1 %35, label %37, label %27, !llvm.loop !19

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.display_state_descriptor, %struct.display_state_descriptor* %32, i32 0, i32 3
  %39 = load void (i32)*, void (i32)** %38, align 4, !tbaa !20
  br label %40

40:                                               ; preds = %27, %37
  %41 = phi void (i32)* [ %39, %37 ], [ null, %27 ]
  %42 = icmp eq i32 %7, %0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i8 0, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 9), align 4, !tbaa !8
  br label %44

44:                                               ; preds = %43, %40
  %45 = icmp ult i32 %0, 22
  br i1 %45, label %46, label %78

46:                                               ; preds = %44
  tail call void @reset_transition_state_and_store_scaled_value() #4
  %47 = tail call i32 @llvm.annotation.i32(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.2, i32 0, i32 0), i32 94)
  %48 = load i8, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 13), align 4, !tbaa !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  tail call void @update_state_bits_and_publish_empty_status(i32 0, i32 8) #4
  %51 = trunc i32 %47 to i8
  store i8 %51, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 13), align 4, !tbaa !8
  br label %52

52:                                               ; preds = %50, %46
  tail call void @disable_interrupt_mask_0x8000_and_publish_control_state() #4
  store i16 0, i16* bitcast (i8* getelementptr inbounds (%struct.sr08_merged_globals_56d0, %struct.sr08_merged_globals_56d0* @merged_globals_56d0, i32 0, i32 11, i32 20) to i16*), align 4, !tbaa !21
  store i32 0, i32* bitcast (i8* getelementptr inbounds (%struct.sr08_merged_globals_56d0, %struct.sr08_merged_globals_56d0* @merged_globals_56d0, i32 0, i32 11, i32 16) to i32*), align 4, !tbaa !22
  br label %53

53:                                               ; preds = %58, %52
  %54 = phi i32 [ 0, %52 ], [ %63, %58 ]
  %55 = icmp eq i32 %54, 7
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = icmp ne i32 %47, 0
  br label %64

58:                                               ; preds = %53
  %59 = getelementptr inbounds [7 x %struct.gpio_pin_ref], [7 x %struct.gpio_pin_ref]* @display_low_pins, i32 0, i32 %54, i32 0
  %60 = load i8, i8* %59, align 1, !tbaa !24
  %61 = getelementptr inbounds [7 x %struct.gpio_pin_ref], [7 x %struct.gpio_pin_ref]* @display_low_pins, i32 0, i32 %54, i32 1
  %62 = load i8, i8* %61, align 1, !tbaa !26
  tail call void @GPIO_ConfigurePin(i8 zeroext %60, i8 zeroext %62, i16 zeroext 768, i8 zeroext 0, i1 zeroext false) #4
  %63 = add nuw nsw i32 %54, 1
  br label %53, !llvm.loop !27

64:                                               ; preds = %56, %72
  %65 = phi i32 [ %77, %72 ], [ 0, %56 ]
  %66 = icmp eq i32 %65, 6
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  tail call void @reset_transition_state_and_store_scaled_value() #4
  store i8 -1, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 5), align 4, !tbaa !8
  %68 = shl i32 %47, 15
  store volatile i32 %68, i32* inttoptr (i32 -536813312 to i32*), align 256, !tbaa !22
  %69 = load volatile i16, i16* inttoptr (i32 1342190592 to i16*), align 1024, !tbaa !21
  %70 = trunc i32 %47 to i16
  %71 = or i16 %69, %70
  store volatile i16 %71, i16* inttoptr (i32 1342190592 to i16*), align 1024, !tbaa !21
  tail call void @update_state_bits_and_publish_empty_status(i32 0, i32 2) #4
  br label %109

72:                                               ; preds = %64
  %73 = getelementptr inbounds [6 x %struct.gpio_pin_ref], [6 x %struct.gpio_pin_ref]* @display_high_pins, i32 0, i32 %65, i32 0
  %74 = load i8, i8* %73, align 1, !tbaa !24
  %75 = getelementptr inbounds [6 x %struct.gpio_pin_ref], [6 x %struct.gpio_pin_ref]* @display_high_pins, i32 0, i32 %65, i32 1
  %76 = load i8, i8* %75, align 1, !tbaa !26
  tail call void @GPIO_ConfigurePin(i8 zeroext %74, i8 zeroext %76, i16 zeroext 768, i8 zeroext 0, i1 zeroext %57) #4
  %77 = add nuw nsw i32 %65, 1
  br label %64, !llvm.loop !28

78:                                               ; preds = %44
  %79 = load i8, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 13), align 4, !tbaa !8
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  tail call void @disable_interrupt_mask_0x8000_and_publish_control_state() #4
  br label %82

82:                                               ; preds = %85, %81
  %83 = phi i32 [ 0, %81 ], [ %90, %85 ]
  %84 = icmp eq i32 %83, 7
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds [7 x %struct.gpio_pin_ref], [7 x %struct.gpio_pin_ref]* @display_low_pins, i32 0, i32 %83, i32 0
  %87 = load i8, i8* %86, align 1, !tbaa !24
  %88 = getelementptr inbounds [7 x %struct.gpio_pin_ref], [7 x %struct.gpio_pin_ref]* @display_low_pins, i32 0, i32 %83, i32 1
  %89 = load i8, i8* %88, align 1, !tbaa !26
  tail call void @GPIO_ConfigurePin(i8 zeroext %87, i8 zeroext %89, i16 zeroext 512, i8 zeroext 0, i1 zeroext false) #4
  %90 = add nuw nsw i32 %83, 1
  br label %82, !llvm.loop !29

91:                                               ; preds = %82, %95
  %92 = phi i32 [ %100, %95 ], [ 0, %82 ]
  %93 = icmp eq i32 %92, 6
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  tail call void @update_state_bits_and_publish_empty_status(i32 1, i32 8) #4
  store i8 -1, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 5), align 4, !tbaa !8
  fence syncscope("singlethread") seq_cst
  store i8 0, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 13), align 4, !tbaa !8
  br label %101

95:                                               ; preds = %91
  %96 = getelementptr inbounds [6 x %struct.gpio_pin_ref], [6 x %struct.gpio_pin_ref]* @display_high_pins, i32 0, i32 %92, i32 0
  %97 = load i8, i8* %96, align 1, !tbaa !24
  %98 = getelementptr inbounds [6 x %struct.gpio_pin_ref], [6 x %struct.gpio_pin_ref]* @display_high_pins, i32 0, i32 %92, i32 1
  %99 = load i8, i8* %98, align 1, !tbaa !26
  tail call void @GPIO_ConfigurePin(i8 zeroext %97, i8 zeroext %99, i16 zeroext 512, i8 zeroext 0, i1 zeroext true) #4
  %100 = add nuw nsw i32 %92, 1
  br label %91, !llvm.loop !30

101:                                              ; preds = %94, %78
  store volatile i16 15, i16* bitcast (i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 15, i32 6) to i16*), align 4, !tbaa !21
  %102 = tail call i32 @llvm.annotation.i32(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.2, i32 0, i32 0), i32 126)
  %103 = shl i32 %102, 26
  %104 = icmp eq i32 %0, 32
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  store volatile i16 180, i16* bitcast (i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 15, i32 6) to i16*), align 4, !tbaa !21
  tail call void @update_mode_flags_and_transitions(i32 %103) #4
  %106 = shl i32 %102, 11
  tail call void @update_mode_flags_and_transitions(i32 %106) #4
  br label %109

107:                                              ; preds = %101
  tail call void @update_mode_flags_and_transitions(i32 %103) #4
  %108 = shl i32 %102, 27
  tail call void @update_mode_flags_and_transitions(i32 %108) #4
  br label %109

109:                                              ; preds = %105, %107, %67
  %110 = load i8, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 7, i32 0, i32 0), align 4, !tbaa !8
  %111 = zext i8 %110 to i32
  tail call void (i8*, ...) @arch_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32 %111, i32 %0) #4
  %112 = tail call i32 @update_indexed_delay_entry_if_changed(i32 1, i32 0) #4
  %113 = icmp eq void (i32)* %41, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  tail call void %41(i32 %0) #4
  br label %115

115:                                              ; preds = %114, %109
  %116 = load i8, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 7, i32 0, i32 0), align 4, !tbaa !8
  %117 = trunc i32 %0 to i8
  store i8 %117, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 7, i32 0, i32 0), align 4, !tbaa !8
  %118 = load volatile void (i32)*, void (i32)** %2, align 4, !tbaa !11
  %119 = icmp eq void (i32)* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = zext i8 %116 to i32
  tail call void %118(i32 %121) #4
  br label %122

122:                                              ; preds = %120, %115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25)
  br label %123

123:                                              ; preds = %122, %5, %4
  ret void
}

; Function Attrs: minsize optsize
declare dso_local void @arch_printf(i8*, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: minsize optsize
declare dso_local void @reset_transition_state_and_store_scaled_value() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind willreturn
declare i32 @llvm.annotation.i32(i32, i8*, i8*, i32) #3

; Function Attrs: minsize optsize
declare dso_local void @update_state_bits_and_publish_empty_status(i32, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare dso_local void @disable_interrupt_mask_0x8000_and_publish_control_state() local_unnamed_addr #1

; Function Attrs: minsize optsize
declare dso_local void @GPIO_ConfigurePin(i8 zeroext, i8 zeroext, i16 zeroext, i8 zeroext, i1 zeroext) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare dso_local void @update_mode_flags_and_transitions(i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare dso_local i32 @update_indexed_delay_entry_if_changed(i32, i32) local_unnamed_addr #1

attributes #0 = { minsize nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-dotprod,-dsp,-fp16fml,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-pacbti,-ras,-sb,-sha2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { minsize optsize "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-dotprod,-dsp,-fp16fml,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-pacbti,-ras,-sb,-sha2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { minsize nounwind optsize }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"display_state_descriptor", !15, i64 0, !15, i64 2, !12, i64 4, !12, i64 8}
!15 = !{!"short", !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!14, !12, i64 4}
!19 = distinct !{!19, !17}
!20 = !{!14, !12, i64 8}
!21 = !{!15, !15, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !9, i64 0}
!24 = !{!25, !9, i64 0}
!25 = !{!"gpio_pin_ref", !9, i64 0, !9, i64 1}
!26 = !{!25, !9, i64 1}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
