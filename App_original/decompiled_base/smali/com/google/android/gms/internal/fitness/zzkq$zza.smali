.class public final Lcom/google/android/gms/internal/fitness/zzkq$zza;
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
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fitness/zzkq$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fitness/zzgy<",
        "Lcom/google/android/gms/internal/fitness/zzkq$zza;",
        "Lcom/google/android/gms/internal/fitness/zzkq$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/fitness/zzim;"
    }
.end annotation


# static fields
.field private static final zzaji:Lcom/google/android/gms/internal/fitness/zzkq$zza;

.field private static volatile zzg:Lcom/google/android/gms/internal/fitness/zziu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zziu<",
            "Lcom/google/android/gms/internal/fitness/zzkq$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzajc:I

.field private zzajd:Ljava/lang/String;

.field private zzaje:Ljava/lang/String;

.field private zzajf:Ljava/lang/String;

.field private zzajg:Lcom/google/android/gms/internal/fitness/zzhi;

.field private zzajh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzkq$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zzkq$zza;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzaji:Lcom/google/android/gms/internal/fitness/zzkq$zza;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/fitness/zzkq$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/fitness/zzgy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzgy;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzajd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzaje:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzajf:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzbr()Lcom/google/android/gms/internal/fitness/zzhi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzajg:Lcom/google/android/gms/internal/fitness/zzhi;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzajh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzea()Lcom/google/android/gms/internal/fitness/zzkq$zza;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzaji:Lcom/google/android/gms/internal/fitness/zzkq$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/fitness/zzkp;->zze:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 24
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    if-nez p1, :cond_1

    .line 17
    const-class p2, Lcom/google/android/gms/internal/fitness/zzkq$zza;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzgy$zza;

    sget-object p3, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzaji:Lcom/google/android/gms/internal/fitness/zzkq$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/fitness/zzgy$zza;-><init>(Lcom/google/android/gms/internal/fitness/zzgy;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    .line 22
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

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzaji:Lcom/google/android/gms/internal/fitness/zzkq$zza;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzajc"

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "zzajd"

    aput-object p2, p1, p3

    const-string p2, "zzaje"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "zzajf"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "zzajg"

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const-string p2, "zzajh"

    const/4 p3, 0x5

    aput-object p2, p1, p3

    .line 12
    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u0014\u0005\u1008\u0003"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zzaji:Lcom/google/android/gms/internal/fitness/zzkq$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/fitness/zzkq$zza;->zza(Lcom/google/android/gms/internal/fitness/zzik;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzkq$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/fitness/zzkq$zza$zza;-><init>(Lcom/google/android/gms/internal/fitness/zzkp;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzkq$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/fitness/zzkq$zza;-><init>()V

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
