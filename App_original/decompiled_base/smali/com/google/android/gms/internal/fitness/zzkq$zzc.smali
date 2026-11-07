.class public final Lcom/google/android/gms/internal/fitness/zzkq$zzc;
.super Lcom/google/android/gms/internal/fitness/zzgy;
.source "com.google.android.gms:play-services-fitness@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fitness/zzim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fitness/zzkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fitness/zzkq$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fitness/zzgy<",
        "Lcom/google/android/gms/internal/fitness/zzkq$zzc;",
        "Lcom/google/android/gms/internal/fitness/zzkq$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/fitness/zzim;"
    }
.end annotation


# static fields
.field private static final zzakk:Lcom/google/android/gms/internal/fitness/zzkq$zzc;

.field private static volatile zzg:Lcom/google/android/gms/internal/fitness/zziu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zziu<",
            "Lcom/google/android/gms/internal/fitness/zzkq$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzajc:I

.field private zzajh:Ljava/lang/String;

.field private zzakj:Lcom/google/android/gms/internal/fitness/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zzhh<",
            "Lcom/google/android/gms/internal/fitness/zzkq$zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzkq$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zzkq$zzc;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzakk:Lcom/google/android/gms/internal/fitness/zzkq$zzc;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/fitness/zzkq$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/fitness/zzgy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzgy;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzajh:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzbs()Lcom/google/android/gms/internal/fitness/zzhh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzakj:Lcom/google/android/gms/internal/fitness/zzhh;

    return-void
.end method

.method static synthetic zzed()Lcom/google/android/gms/internal/fitness/zzkq$zzc;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzakk:Lcom/google/android/gms/internal/fitness/zzkq$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/fitness/zzkp;->zze:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 21
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/fitness/zzkq$zzc;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzgy$zza;

    sget-object p3, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzakk:Lcom/google/android/gms/internal/fitness/zzkq$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/fitness/zzgy$zza;-><init>(Lcom/google/android/gms/internal/fitness/zzgy;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    .line 19
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

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzakk:Lcom/google/android/gms/internal/fitness/zzkq$zzc;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzajc"

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "zzajh"

    aput-object p2, p1, p3

    const-string p2, "zzakj"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/fitness/zzkq$zzd;

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 9
    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zzakk:Lcom/google/android/gms/internal/fitness/zzkq$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/fitness/zzkq$zzc;->zza(Lcom/google/android/gms/internal/fitness/zzik;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzkq$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/fitness/zzkq$zzc$zza;-><init>(Lcom/google/android/gms/internal/fitness/zzkp;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzkq$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/fitness/zzkq$zzc;-><init>()V

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
