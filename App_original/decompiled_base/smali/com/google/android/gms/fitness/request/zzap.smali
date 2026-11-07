.class public final Lcom/google/android/gms/fitness/request/zzap;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@20.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzkp:Lcom/google/android/gms/fitness/data/DataType;

.field private zzkq:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzof:J

.field private final zzog:I

.field private final zzql:Lcom/google/android/gms/internal/fitness/zzcn;

.field private final zzrk:Landroid/app/PendingIntent;

.field private final zzrt:Lcom/google/android/gms/fitness/data/zzv;

.field private final zzru:J

.field private final zzrv:J

.field private final zzrw:J

.field private final zzrx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/ClientIdentity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lcom/google/android/gms/fitness/request/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzao;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;JJLandroid/app/PendingIntent;JIJLandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/fitness/data/zzu;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzv;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrt:Lcom/google/android/gms/fitness/data/zzv;

    .line 6
    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/zzap;->zzof:J

    .line 7
    iput-wide p9, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrv:J

    .line 8
    iput-wide p6, p0, Lcom/google/android/gms/fitness/request/zzap;->zzru:J

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrk:Landroid/app/PendingIntent;

    .line 10
    iput p11, p0, Lcom/google/android/gms/fitness/request/zzap;->zzog:I

    .line 11
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrx:Ljava/util/List;

    .line 12
    iput-wide p12, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrw:J

    if-nez p14, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {p14}, Lcom/google/android/gms/internal/fitness/zzcm;->zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcn;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/zzv;Landroid/app/PendingIntent;JJJILjava/util/List;JLcom/google/android/gms/internal/fitness/zzcn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Lcom/google/android/gms/fitness/data/zzv;",
            "Landroid/app/PendingIntent;",
            "JJJI",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/ClientIdentity;",
            ">;J",
            "Lcom/google/android/gms/internal/fitness/zzcn;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    .line 28
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    .line 29
    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrt:Lcom/google/android/gms/fitness/data/zzv;

    .line 30
    iput-object p4, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrk:Landroid/app/PendingIntent;

    .line 31
    iput-wide p5, p0, Lcom/google/android/gms/fitness/request/zzap;->zzof:J

    .line 32
    iput-wide p7, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrv:J

    .line 33
    iput-wide p9, p0, Lcom/google/android/gms/fitness/request/zzap;->zzru:J

    .line 34
    iput p11, p0, Lcom/google/android/gms/fitness/request/zzap;->zzog:I

    .line 35
    iput-object p12, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrx:Ljava/util/List;

    .line 36
    iput-wide p13, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrw:J

    .line 37
    iput-object p15, p0, Lcom/google/android/gms/fitness/request/zzap;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzv;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/fitness/zzcn;)V
    .locals 16

    move-object/from16 v0, p1

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/request/SensorRequest;->getSamplingRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/request/SensorRequest;->getFastestRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/request/SensorRequest;->getMaxDeliveryLatency(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRequest;->getAccuracyMode()I

    move-result v11

    .line 22
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRequest;->zzy()J

    move-result-wide v13

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v15, p4

    .line 24
    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/fitness/request/zzap;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/zzv;Landroid/app/PendingIntent;JJJILjava/util/List;JLcom/google/android/gms/internal/fitness/zzcn;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/fitness/request/zzap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 89
    :cond_1
    check-cast p1, Lcom/google/android/gms/fitness/request/zzap;

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzap;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzap;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    .line 91
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrt:Lcom/google/android/gms/fitness/data/zzv;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzap;->zzrt:Lcom/google/android/gms/fitness/data/zzv;

    .line 92
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzap;->zzof:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/zzap;->zzof:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrv:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/zzap;->zzrv:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzap;->zzru:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/zzap;->zzru:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzog:I

    iget p1, p1, Lcom/google/android/gms/fitness/request/zzap;->zzog:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrt:Lcom/google/android/gms/fitness/data/zzv;

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzap;->zzof:J

    .line 95
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrv:J

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gms/fitness/request/zzap;->zzru:J

    .line 97
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/fitness/request/zzap;->zzog:I

    .line 98
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    .line 99
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzap;->zzof:J

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrv:J

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzap;->zzru:J

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    .line 43
    const-string v0, "SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkq:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    .line 51
    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzap;->zzkp:Lcom/google/android/gms/fitness/data/DataType;

    .line 53
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrt:Lcom/google/android/gms/fitness/data/zzv;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/fitness/data/zzv;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v4, 0x3

    .line 58
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x6

    .line 60
    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzap;->zzof:J

    .line 61
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x7

    .line 63
    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzap;->zzru:J

    .line 64
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x8

    .line 66
    iget-object v4, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrk:Landroid/app/PendingIntent;

    .line 68
    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x9

    .line 70
    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrv:J

    .line 71
    invoke-static {p1, p2, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0xa

    .line 73
    iget v1, p0, Lcom/google/android/gms/fitness/request/zzap;->zzog:I

    .line 74
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xc

    .line 76
    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzap;->zzrw:J

    .line 77
    invoke-static {p1, p2, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 80
    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzap;->zzql:Lcom/google/android/gms/internal/fitness/zzcn;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/fitness/zzcn;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    const/16 p2, 0xd

    .line 82
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 83
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
