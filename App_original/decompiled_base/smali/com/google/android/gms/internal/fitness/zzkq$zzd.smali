.class public final Lcom/google/android/gms/internal/fitness/zzkq$zzd;
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
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fitness/zzkq$zzd$zzb;,
        Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fitness/zzgy<",
        "Lcom/google/android/gms/internal/fitness/zzkq$zzd;",
        "Lcom/google/android/gms/internal/fitness/zzkq$zzd$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/fitness/zzim;"
    }
.end annotation


# static fields
.field private static final zzakn:Lcom/google/android/gms/internal/fitness/zzkq$zzd;

.field private static volatile zzg:Lcom/google/android/gms/internal/fitness/zziu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zziu<",
            "Lcom/google/android/gms/internal/fitness/zzkq$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzajc:I

.field private zzajh:Ljava/lang/String;

.field private zzakl:I

.field private zzakm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzkq$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zzkq$zzd;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zzakn:Lcom/google/android/gms/internal/fitness/zzkq$zzd;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/fitness/zzkq$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/fitness/zzgy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzgy;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zzajh:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zzakl:I

    return-void
.end method

.method static synthetic zzee()Lcom/google/android/gms/internal/fitness/zzkq$zzd;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zzakn:Lcom/google/android/gms/internal/fitness/zzkq$zzd;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/fitness/zzkp;->zze:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/fitness/zzkq$zzd;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzgy$zza;

    sget-object p3, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zzakn:Lcom/google/android/gms/internal/fitness/zzkq$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/fitness/zzgy$zza;-><init>(Lcom/google/android/gms/internal/fitness/zzgy;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zzakn:Lcom/google/android/gms/internal/fitness/zzkq$zzd;

    return-object p1

    .line 9
    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zza;->zzec()Lcom/google/android/gms/internal/fitness/zzhd;

    move-result-object p1

    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "zzajc"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "zzajh"

    aput-object v0, p2, p3

    const-string p3, "zzakl"

    const/4 v0, 0x2

    aput-object p3, p2, v0

    const/4 p3, 0x3

    aput-object p1, p2, p3

    const-string p1, "zzakm"

    const/4 p3, 0x4

    aput-object p1, p2, p3

    .line 10
    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0003\u100c\u0001\u0004\u1007\u0002"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zzakn:Lcom/google/android/gms/internal/fitness/zzkq$zzd;

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/fitness/zzkq$zzd;->zza(Lcom/google/android/gms/internal/fitness/zzik;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/fitness/zzkq$zzd$zzb;-><init>(Lcom/google/android/gms/internal/fitness/zzkp;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzkq$zzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/fitness/zzkq$zzd;-><init>()V

    return-object p1

    nop

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
