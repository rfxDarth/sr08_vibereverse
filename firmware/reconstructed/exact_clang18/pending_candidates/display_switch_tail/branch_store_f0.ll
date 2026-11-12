; ModuleID = 'Z:/home/drath/Projects/personal/code/sr08_ai/firmware/reconstructed/exact_clang18/pending_candidates/display_switch_tail/branch_store_f0.c.txt'
source_filename = "Z:/home/drath/Projects/personal/code/sr08_ai/firmware/reconstructed/exact_clang18/pending_candidates/display_switch_tail/branch_store_f0.c.txt"
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
@.str.2 = private unnamed_addr constant [149 x i8] c"Z:/home/drath/Projects/personal/code/sr08_ai/firmware/reconstructed/exact_clang18/pending_candidates/display_switch_tail/branch_store_f0.c.txt\00", section "llvm.metadata"
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
  br label %124

5:                                                ; preds = %1
  %6 = load i8, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 7, i32 0, i32 0), align 4, !tbaa !8
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %6, 30
  br i1 %8, label %124, label %9

9:                                                ; preds = %5
  %10 = bitcast void (i32)** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10)
  br label %11

11:                                               ; preds = %14, %9
  %12 = phi i32 [ 0, %9 ], [ %21, %14 ]
  %13 = icmp eq i32 %12, 35
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds [35 x %struct.display_state_descriptor*], [35 x %struct.display_state_descriptor*]* @display_state_descriptors, i32 0, i32 %12
  %16 = load %struct.display_state_descriptor*, %struct.display_state_descriptor** %15, align 4, !tbaa !11
  %17 = getelementptr inbounds %struct.display_state_descriptor, %struct.display_state_descriptor* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 4, !tbaa !13
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %19, %0
  %21 = add nuw nsw i32 %12, 1
  br i1 %20, label %22, label %11, !llvm.loop !16

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.display_state_descriptor, %struct.display_state_descriptor* %16, i32 0, i32 2
  %24 = load void (i32)*, void (i32)** %23, align 4, !tbaa !18
  store volatile void (i32)* %24, void (i32)** %2, align 4, !tbaa !11
  br label %26

25:                                               ; preds = %11
  store volatile void (i32)* null, void (i32)** %2, align 4, !tbaa !11
  br label %26

26:                                               ; preds = %22, %25
  %27 = zext i8 %6 to i16
  br label %28

28:                                               ; preds = %31, %26
  %29 = phi i32 [ 0, %26 ], [ %37, %31 ]
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds [35 x %struct.display_state_descriptor*], [35 x %struct.display_state_descriptor*]* @display_state_descriptors, i32 0, i32 %29
  %33 = load %struct.display_state_descriptor*, %struct.display_state_descriptor** %32, align 4, !tbaa !11
  %34 = getelementptr inbounds %struct.display_state_descriptor, %struct.display_state_descriptor* %33, i32 0, i32 0
  %35 = load i16, i16* %34, align 4, !tbaa !13
  %36 = icmp eq i16 %35, %27
  %37 = add nuw nsw i32 %29, 1
  br i1 %36, label %38, label %28, !llvm.loop !19

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.display_state_descriptor, %struct.display_state_descriptor* %33, i32 0, i32 3
  %40 = load void (i32)*, void (i32)** %39, align 4, !tbaa !20
  br label %41

41:                                               ; preds = %28, %38
  %42 = phi void (i32)* [ %40, %38 ], [ null, %28 ]
  %43 = icmp eq i32 %7, %0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i8 0, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 9), align 4, !tbaa !8
  br label %45

45:                                               ; preds = %44, %41
  %46 = icmp ult i32 %0, 22
  br i1 %46, label %47, label %79

47:                                               ; preds = %45
  tail call void @reset_transition_state_and_store_scaled_value() #4
  %48 = tail call i32 @llvm.annotation.i32(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.2, i32 0, i32 0), i32 95)
  %49 = load i8, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 13), align 4, !tbaa !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  tail call void @update_state_bits_and_publish_empty_status(i32 0, i32 8) #4
  %52 = trunc i32 %48 to i8
  store i8 %52, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 13), align 4, !tbaa !8
  br label %53

53:                                               ; preds = %51, %47
  tail call void @disable_interrupt_mask_0x8000_and_publish_control_state() #4
  store i16 0, i16* bitcast (i8* getelementptr inbounds (%struct.sr08_merged_globals_56d0, %struct.sr08_merged_globals_56d0* @merged_globals_56d0, i32 0, i32 11, i32 20) to i16*), align 4, !tbaa !21
  store i32 0, i32* bitcast (i8* getelementptr inbounds (%struct.sr08_merged_globals_56d0, %struct.sr08_merged_globals_56d0* @merged_globals_56d0, i32 0, i32 11, i32 16) to i32*), align 4, !tbaa !22
  br label %54

54:                                               ; preds = %59, %53
  %55 = phi i32 [ 0, %53 ], [ %64, %59 ]
  %56 = icmp eq i32 %55, 7
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = icmp ne i32 %48, 0
  br label %65

59:                                               ; preds = %54
  %60 = getelementptr inbounds [7 x %struct.gpio_pin_ref], [7 x %struct.gpio_pin_ref]* @display_low_pins, i32 0, i32 %55, i32 0
  %61 = load i8, i8* %60, align 1, !tbaa !24
  %62 = getelementptr inbounds [7 x %struct.gpio_pin_ref], [7 x %struct.gpio_pin_ref]* @display_low_pins, i32 0, i32 %55, i32 1
  %63 = load i8, i8* %62, align 1, !tbaa !26
  tail call void @GPIO_ConfigurePin(i8 zeroext %61, i8 zeroext %63, i16 zeroext 768, i8 zeroext 0, i1 zeroext false) #4
  %64 = add nuw nsw i32 %55, 1
  br label %54, !llvm.loop !27

65:                                               ; preds = %57, %73
  %66 = phi i32 [ %78, %73 ], [ 0, %57 ]
  %67 = icmp eq i32 %66, 6
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  tail call void @reset_transition_state_and_store_scaled_value() #4
  store i8 -1, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 5), align 4, !tbaa !8
  %69 = shl i32 %48, 15
  store volatile i32 %69, i32* inttoptr (i32 -536813312 to i32*), align 256, !tbaa !22
  %70 = load volatile i16, i16* inttoptr (i32 1342190592 to i16*), align 1024, !tbaa !21
  %71 = trunc i32 %48 to i16
  %72 = or i16 %70, %71
  store volatile i16 %72, i16* inttoptr (i32 1342190592 to i16*), align 1024, !tbaa !21
  tail call void @update_state_bits_and_publish_empty_status(i32 0, i32 2) #4
  br label %110

73:                                               ; preds = %65
  %74 = getelementptr inbounds [6 x %struct.gpio_pin_ref], [6 x %struct.gpio_pin_ref]* @display_high_pins, i32 0, i32 %66, i32 0
  %75 = load i8, i8* %74, align 1, !tbaa !24
  %76 = getelementptr inbounds [6 x %struct.gpio_pin_ref], [6 x %struct.gpio_pin_ref]* @display_high_pins, i32 0, i32 %66, i32 1
  %77 = load i8, i8* %76, align 1, !tbaa !26
  tail call void @GPIO_ConfigurePin(i8 zeroext %75, i8 zeroext %77, i16 zeroext 768, i8 zeroext 0, i1 zeroext %58) #4
  %78 = add nuw nsw i32 %66, 1
  br label %65, !llvm.loop !28

79:                                               ; preds = %45
  %80 = load i8, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 13), align 4, !tbaa !8
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  tail call void @disable_interrupt_mask_0x8000_and_publish_control_state() #4
  br label %83

83:                                               ; preds = %86, %82
  %84 = phi i32 [ 0, %82 ], [ %91, %86 ]
  %85 = icmp eq i32 %84, 7
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds [7 x %struct.gpio_pin_ref], [7 x %struct.gpio_pin_ref]* @display_low_pins, i32 0, i32 %84, i32 0
  %88 = load i8, i8* %87, align 1, !tbaa !24
  %89 = getelementptr inbounds [7 x %struct.gpio_pin_ref], [7 x %struct.gpio_pin_ref]* @display_low_pins, i32 0, i32 %84, i32 1
  %90 = load i8, i8* %89, align 1, !tbaa !26
  tail call void @GPIO_ConfigurePin(i8 zeroext %88, i8 zeroext %90, i16 zeroext 512, i8 zeroext 0, i1 zeroext false) #4
  %91 = add nuw nsw i32 %84, 1
  br label %83, !llvm.loop !29

92:                                               ; preds = %83, %96
  %93 = phi i32 [ %101, %96 ], [ 0, %83 ]
  %94 = icmp eq i32 %93, 6
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  tail call void @update_state_bits_and_publish_empty_status(i32 1, i32 8) #4
  store i8 -1, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 5), align 4, !tbaa !8
  fence syncscope("singlethread") seq_cst
  store i8 0, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 13, i32 13), align 4, !tbaa !8
  br label %102

96:                                               ; preds = %92
  %97 = getelementptr inbounds [6 x %struct.gpio_pin_ref], [6 x %struct.gpio_pin_ref]* @display_high_pins, i32 0, i32 %93, i32 0
  %98 = load i8, i8* %97, align 1, !tbaa !24
  %99 = getelementptr inbounds [6 x %struct.gpio_pin_ref], [6 x %struct.gpio_pin_ref]* @display_high_pins, i32 0, i32 %93, i32 1
  %100 = load i8, i8* %99, align 1, !tbaa !26
  tail call void @GPIO_ConfigurePin(i8 zeroext %98, i8 zeroext %100, i16 zeroext 512, i8 zeroext 0, i1 zeroext true) #4
  %101 = add nuw nsw i32 %93, 1
  br label %92, !llvm.loop !30

102:                                              ; preds = %95, %79
  store volatile i16 15, i16* bitcast (i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 15, i32 6) to i16*), align 4, !tbaa !21
  %103 = tail call i32 @llvm.annotation.i32(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.2, i32 0, i32 0), i32 127)
  %104 = shl i32 %103, 26
  %105 = icmp eq i32 %0, 32
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  store volatile i16 180, i16* bitcast (i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 15, i32 6) to i16*), align 4, !tbaa !21
  tail call void @update_mode_flags_and_transitions(i32 %104) #4
  %107 = shl i32 %103, 11
  tail call void @update_mode_flags_and_transitions(i32 %107) #4
  br label %110

108:                                              ; preds = %102
  tail call void @update_mode_flags_and_transitions(i32 %104) #4
  %109 = shl i32 %103, 27
  tail call void @update_mode_flags_and_transitions(i32 %109) #4
  br label %110

110:                                              ; preds = %106, %108, %68
  %111 = load i8, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 7, i32 0, i32 0), align 4, !tbaa !8
  %112 = zext i8 %111 to i32
  tail call void (i8*, ...) @arch_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32 %112, i32 %0) #4
  %113 = tail call i32 @update_indexed_delay_entry_if_changed(i32 1, i32 0) #4
  %114 = icmp eq void (i32)* %42, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  tail call void %42(i32 %0) #4
  br label %116

116:                                              ; preds = %115, %110
  %117 = load i8, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 7, i32 0, i32 0), align 4, !tbaa !8
  %118 = trunc i32 %0 to i8
  store i8 %118, i8* getelementptr inbounds (%struct.sr08_merged_globals_5650, %struct.sr08_merged_globals_5650* @merged_globals_5650, i32 0, i32 7, i32 0, i32 0), align 4, !tbaa !8
  %119 = load volatile void (i32)*, void (i32)** %2, align 4, !tbaa !11
  %120 = icmp eq void (i32)* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = zext i8 %117 to i32
  tail call void %119(i32 %122) #4
  br label %123

123:                                              ; preds = %121, %116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10)
  br label %124

124:                                              ; preds = %123, %5, %4
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
