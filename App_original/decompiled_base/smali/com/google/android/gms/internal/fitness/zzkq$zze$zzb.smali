.class public final enum Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-fitness@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fitness/zzhb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fitness/zzkq$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/fitness/zzhb;"
    }
.end annotation


# static fields
.field private static final enum zzalb:Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

.field private static final enum zzalc:Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

.field private static final enum zzald:Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

.field private static final synthetic zzale:[Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

.field private static final zzjx:Lcom/google/android/gms/internal/fitness/zzhe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zzhe<",
            "Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

    const-string v1, "PLATFORM_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->zzalb:Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

    const-string v3, "PLATFORM_TYPE_BLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->zzalc:Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

    const-string v5, "PLATFORM_TYPE_ANDROID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->zzald:Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

    const/4 v5, 0x3

    .line 20
    new-array v5, v5, [Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 21
    sput-object v5, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->zzale:[Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zzky;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->zzjx:Lcom/google/android/gms/internal/fitness/zzhe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->zzale:[Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;

    return-object v0
.end method

.method public static zzec()Lcom/google/android/gms/internal/fitness/zzhd;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzkz;->zzakd:Lcom/google/android/gms/internal/fitness/zzhd;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->value:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->value:I

    return v0
.end method
