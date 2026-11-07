.class public final Lcom/google/android/gms/internal/fitness/zzf;
.super Lcom/google/android/gms/internal/fitness/zzgy;
.source "com.google.android.gms:play-services-fitness@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fitness/zzim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fitness/zzf$zzb;,
        Lcom/google/android/gms/internal/fitness/zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fitness/zzgy<",
        "Lcom/google/android/gms/internal/fitness/zzf;",
        "Lcom/google/android/gms/internal/fitness/zzf$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/fitness/zzim;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/fitness/zzf;

.field private static volatile zzg:Lcom/google/android/gms/internal/fitness/zziu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zziu<",
            "Lcom/google/android/gms/internal/fitness/zzf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zzf;-><init>()V

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/fitness/zzf;->zzf:Lcom/google/android/gms/internal/fitness/zzf;

    .line 24
    const-class v1, Lcom/google/android/gms/internal/fitness/zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/fitness/zzgy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzgy;-><init>()V

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/fitness/zzf;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzf;->zzf:Lcom/google/android/gms/internal/fitness/zzf;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/fitness/zze;->zze:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 18
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzf;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/gms/internal/fitness/zzf;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzf;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzgy$zza;

    sget-object p3, Lcom/google/android/gms/internal/fitness/zzf;->zzf:Lcom/google/android/gms/internal/fitness/zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/fitness/zzgy$zza;-><init>(Lcom/google/android/gms/internal/fitness/zzgy;)V

    .line 15
    sput-object p1, Lcom/google/android/gms/internal/fitness/zzf;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    .line 16
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 8
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzf;->zzf:Lcom/google/android/gms/internal/fitness/zzf;

    return-object p1

    .line 6
    :pswitch_4
    const-string p1, "\u0000\u0000"

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/fitness/zzf;->zzf:Lcom/google/android/gms/internal/fitness/zzf;

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/fitness/zzf;->zza(Lcom/google/android/gms/internal/fitness/zzik;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzf$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/fitness/zzf$zzb;-><init>(Lcom/google/android/gms/internal/fitness/zze;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/fitness/zzf;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
