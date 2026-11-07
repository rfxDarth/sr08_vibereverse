.class public final Lcom/google/android/gms/internal/fitness/zzkq$zze;
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
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fitness/zzkq$zze$zza;,
        Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;,
        Lcom/google/android/gms/internal/fitness/zzkq$zze$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fitness/zzgy<",
        "Lcom/google/android/gms/internal/fitness/zzkq$zze;",
        "Lcom/google/android/gms/internal/fitness/zzkq$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/fitness/zzim;"
    }
.end annotation


# static fields
.field private static final zzala:Lcom/google/android/gms/internal/fitness/zzkq$zze;

.field private static volatile zzg:Lcom/google/android/gms/internal/fitness/zziu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zziu<",
            "Lcom/google/android/gms/internal/fitness/zzkq$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzajc:I

.field private zzaje:Ljava/lang/String;

.field private zzajl:I

.field private zzakw:Ljava/lang/String;

.field private zzakx:Ljava/lang/String;

.field private zzaky:Ljava/lang/String;

.field private zzakz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzkq$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fitness/zzkq$zze;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzala:Lcom/google/android/gms/internal/fitness/zzkq$zze;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/fitness/zzkq$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fitness/zzgy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/fitness/zzgy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzgy;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzakw:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzaje:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzakx:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzaky:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzef()Lcom/google/android/gms/internal/fitness/zzkq$zze;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzala:Lcom/google/android/gms/internal/fitness/zzkq$zze;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/fitness/zzkp;->zze:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 25
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/gms/internal/fitness/zzkq$zze;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzgy$zza;

    sget-object p3, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzala:Lcom/google/android/gms/internal/fitness/zzkq$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/fitness/zzgy$zza;-><init>(Lcom/google/android/gms/internal/fitness/zzgy;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzg:Lcom/google/android/gms/internal/fitness/zziu;

    .line 23
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

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzala:Lcom/google/android/gms/internal/fitness/zzkq$zze;

    return-object p1

    .line 11
    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzc;->zzec()Lcom/google/android/gms/internal/fitness/zzhd;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzkq$zze$zzb;->zzec()Lcom/google/android/gms/internal/fitness/zzhd;

    move-result-object p2

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "zzajc"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "zzakw"

    aput-object v1, v0, p3

    const-string p3, "zzajl"

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 p3, 0x3

    aput-object p1, v0, p3

    const-string p1, "zzaje"

    const/4 p3, 0x4

    aput-object p1, v0, p3

    const-string p1, "zzakx"

    const/4 p3, 0x5

    aput-object p1, v0, p3

    const-string p1, "zzaky"

    const/4 p3, 0x6

    aput-object p1, v0, p3

    const-string p1, "zzakz"

    const/4 p3, 0x7

    aput-object p1, v0, p3

    const/16 p1, 0x8

    aput-object p2, v0, p1

    .line 13
    const-string p1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u100c\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u100c\u0005"

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zzala:Lcom/google/android/gms/internal/fitness/zzkq$zze;

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/fitness/zzkq$zze;->zza(Lcom/google/android/gms/internal/fitness/zzik;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzkq$zze$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/fitness/zzkq$zze$zza;-><init>(Lcom/google/android/gms/internal/fitness/zzkp;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/fitness/zzkq$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/fitness/zzkq$zze;-><init>()V

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
