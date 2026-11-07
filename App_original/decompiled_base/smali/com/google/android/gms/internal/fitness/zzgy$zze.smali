.class public final Lcom/google/android/gms/internal/fitness/zzgy$zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fitness/zzgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zze"
.end annotation


# static fields
.field public static final enum zzyd:I = 0x1

.field public static final enum zzye:I = 0x2

.field public static final enum zzyf:I = 0x3

.field public static final enum zzyg:I = 0x4

.field public static final enum zzyh:I = 0x5

.field public static final enum zzyi:I = 0x6

.field public static final enum zzyj:I = 0x7

.field private static final synthetic zzyk:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 9
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/fitness/zzgy$zze;->zzyk:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public static zzcc()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzgy$zze;->zzyk:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
